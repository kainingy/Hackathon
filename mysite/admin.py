from django.contrib import admin
from mysite.models import *
from django.contrib.auth.admin import UserAdmin
from django.contrib.auth.models import User


# Register your models here.
class QuestionInline(admin.TabularInline):
	model = Question
	extra = 0

class SurveyAdmin(admin.ModelAdmin):
	inlines = [QuestionInline]

class AnswerBaseInline(admin.StackedInline):
	fields = ('question', 'body')
	readonly_fields = ('question',)
	extra = 0

class RateInLine(AnswerBaseInline):
	model = Rate

class AnswerAdmin(admin.ModelAdmin):
	list_display = ('created',)
	inlines = [RateInLine] 
	# specifies the order as well as which fields to act on 
	readonly_fields = ('survey', 'created')

admin.site.register(Organization) 
admin.site.register(Activity)
admin.site.register(Survey, SurveyAdmin)
admin.site.register(Answer, AnswerAdmin)