from django import forms
from mysite.models import *

class Survey(forms.ModelForm):
	class Meta:
		model = Surveys
		fields = ['rating1','rating2','rating3']
