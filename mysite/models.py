from django.db import models
from django.core.urlresolvers import reverse
from django.forms import ModelForm

# Create your models here.
class Survey(models.Model):
	Category = models.CharField(max_length = 100)


	def __unicode__(self):
		return (self.Category)

	def questions(self):
		if self.pk:
			result = Question.objects.filter(survey=self.pk)
			return result
		else:
			return None

class Organization(models.Model):
	name = models.CharField(max_length = 100)
	description = models.TextField()
	website = models.URLField(null = True)
	survey = models.ForeignKey('Survey', null = True)

	def __unicode__(self):
		return (self.name)




class Activity(models.Model):
	title = models.CharField(max_length = 100)
	organization = models.ForeignKey('Organization')
	time = models.DateField(null = True) 
	description = models.TextField()
	survey = models.ForeignKey('Survey', null = True)

	def __unicode__(self):
		return (self.title)



class Question(models.Model):
	survey = models.ForeignKey('Survey')
	text = models.TextField()

	def save(self, *args, **kwargs):
		super(Question, self).save(*args, **kwargs)

	def __unicode__(self):
		return (self.text)

# class Answer(models.Model):
# 	created = models.DateTimeField(auto_now_add = True)
# 	survey = models.ForeignKey('Survey')

# class AnswerBase(models.Model):
# 	question = models.ForeignKey('Question')
# 	answer = models.ForeignKey('Answer')
# 	created = models.DateTimeField(auto_now_add=True)

class Rate(models.Model):
	question = models.ForeignKey('Question')
	body = models.IntegerField(blank = True, null = True)


class RateForm(ModelForm):
    class Meta:
        model = Rate
        fields = ['question', 'body']

