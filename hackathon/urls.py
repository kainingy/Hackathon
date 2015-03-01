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
)+  static(settings.STATIC_URL, document_root=settings.STATIC_ROOT)
