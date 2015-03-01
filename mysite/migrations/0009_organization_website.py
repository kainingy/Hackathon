# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0008_auto_20150228_2328'),
    ]

    operations = [
        migrations.AddField(
            model_name='organization',
            name='website',
            field=models.URLField(null=True),
            preserve_default=True,
        ),
    ]
