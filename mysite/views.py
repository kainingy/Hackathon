from django.shortcuts import render
from django.core.paginator import Paginator, EmptyPage, PageNotAnInteger
from mysite.models import *
from django.template import RequestContext
from django.http import HttpResponse
from django.http import HttpResponseRedirect
from django.template import RequestContext, Context
from django import forms 
from django.forms.widgets import *
from django.core.mail import send_mail
from forms import ResponseForm

# Create your views here.
def index(request):
	data = Organization.objects.all()
	return render(request, 'index.html', {"data": data})

def organization(request, name):
	try:
		data = Organization.objects.get(name = name)
		act = Activity.objects.filter(organization = data)

	except Organization.DoesNotExist :
		raise Http404
	return render(request, "organization.html", {'data' : data, 'act':act})

def activity(request, name):
	try:
		data = Activity.objects.get(title = name)
	except Activity.DoesNotExist:
		raise Http404
	return render(request, "activity.html", {'data': data})

def activities(request):
	try:
		data = Activity.objects.all()
	except Activity.DoesNotExist:
		raise Http404
	return render(request, "activities.html", {'data': data})

def thanks(request):
	return render(request, "thanks.html")

def company(request):
	try:
		data = Organization.objects.all()
	except Organization.DoesNotExist :
		raise Http404
	return render(request, "company.html", {'data' : data})

def survey(request, id):
	try: 
		survey = Survey.objects.get(id=id)
	except Survey.DoesNotExist:
		raise Http404
	questions = survey.questions()
	if request.method == 'POST':
		return HttpResponseRedirect("/survey/thanks")
	else:
		form = ResponseForm(survey=survey)
		# TODO sort by category

	radio = [[1],[1,1], [1,1,1] , [1,1,1,1] , [1,1,1,1,1]]
	return render(request, 'survey.html', { 'survey': survey, 'question': questions, 'radio': radio })
