# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations
import django_google_maps.fields


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0008_auto_20150228_2328'),
    ]

    operations = [
        migrations.AddField(
            model_name='activity',
            name='geolocation',
            field=django_google_maps.fields.GeoLocationField(default=None, max_length=100),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='activity',
            name='location',
            field=django_google_maps.fields.AddressField(default=None, max_length=200),
            preserve_default=False,
        ),
    ]
