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

# Create your views here.
def index(request):
	data = Organization.objects.all()
	paginator = Paginator(data, 9)
	page = request.GET.get('page')
	try:
		organization_list  = paginator.page(page)
	except PageNotAnInteger :
		organization_list = paginator.page(1)
	except EmptyPage:
		organization_list = paginator.paginator(paginator.num_pages)
	return render(request, 'index.html', {"data": organization_list})

# def organization(request):
	
	
