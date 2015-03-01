from django import forms
from mysite.models import *
from django.forms import models
from django.utils.safestring import mark_safe

class HorizontalRadioRenderer(forms.RadioSelect.renderer):
  def render(self):
    return mark_safe(u'\n'.join([u'%s\n' % w for w in self]))

class ResponseForm(models.ModelForm):
	class Meta:
		model = Rate

	def __init__(self, *args, **kwargs):
		# expects a survey object to be passed in initially
		survey = kwargs.pop('survey')
		self.survey = survey
		super(ResponseForm, self).__init__(*args, **kwargs)

		# add a field for each survey question, corresponding to the question
		# type as appropriate.
		data = kwargs.get('data')
		for q in survey.questions():
			question_choices = (1,2,3,4,5)
			self.fields["question_%d" % q.pk] = forms.ChoiceField(label=q.text, 
				widget=forms.RadioSelect(renderer=HorizontalRadioRenderer), 
				choices = question_choices)

	def save(self, commit=True):
		# save the response object
		response = super(ResponseForm, self).save(commit=False)
		response.survey = self.survey
		response.save()

		# create an answer object for each question and associate it with this
		# response.
		for field_name, field_value in self.cleaned_data.iteritems():
			if field_name.startswith("question_"):
				# warning: this way of extracting the id is very fragile and
				# entirely dependent on the way the question_id is encoded in the
				# field name in the __init__ method of this form class.
				q_id = int(field_name.split("_")[1])
				q = Question.objects.get(pk=q_id)
				
				a = AnswerRadio(question = q)	
				a.body = field_value

				print a.question.text
				print 'answer value:'
				print field_value
				a.response = response
				a.save()
		return response