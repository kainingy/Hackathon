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


class AnswerAdmin(admin.ModelAdmin):
	model = Rate
	# specifies the order as well as which fields to act on 
	readonly_fields = ('question', 'body')

admin.site.register(Organization) 
admin.site.register(Activity)
admin.site.register(Survey, SurveyAdmin)
admin.site.register(Rate, AnswerAdmin)