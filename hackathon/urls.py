from django.conf.urls import patterns, include, url
from django.contrib import admin
from django.conf.urls.static import static
from django.conf import settings
from django.contrib.staticfiles.urls import staticfiles_urlpatterns

urlpatterns = patterns('',
    # Examples:
    # url(r'^$', 'hackathon.views.home', name='home'),
    # url(r'^blog/', include('blog.urls')),
    url(r'^$', 'mysite.views.index', name = 'index'),
    url(r'^admin/', include(admin.site.urls)),
    url(r'^accounts/', include('registration.backends.default.urls')),
    url(r'^company/(?P<name>\w+)/$', 'mysite.views.organization'),
    url(r'^activity/(?P<name>\w+)/$', 'mysite.views.activity'),
    url(r'^survey/(?P<id>\d+)/$', 'mysite.views.survey', name='survey'),
    url(r'^company/', 'mysite.views.company'),
    # url(r'^activity/', 'mysite.views.activities'),
    url(r'^survey/thanks', 'mysite.views.thanks', name = "thanks"),
)+  static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
