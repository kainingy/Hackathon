from django.db import models
from django.db import models
from django.core.urlresolvers import reverse
from django.contrib.sites.models import Site
from django import forms 
from django.forms.widgets import *

# Create your models here.
class Organizations(models.Model):
	name = models.CharField(max_length = 100)
	description = models.TextField()

class Surveys(models.Model):
	RATING = (
		('1', "Poor"),
		('2',"Below Average"),
		('3',"Average"),
		('4',"Above Average"),
		('5', "Excellent"),
		)
	org = models.ForeignKey('Organizations')
	rating1 = models.PositiveIntegerField(choices = RATING)
	rating2 = models.PositiveIntegerField(choices = RATING)
	rating3 = models.PositiveIntegerField(choices = RATING)







