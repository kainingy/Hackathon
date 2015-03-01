# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0007_auto_20150228_2324'),
    ]

    operations = [
        migrations.AlterField(
            model_name='activity',
            name='survey',
            field=models.ForeignKey(to='mysite.Survey', null=True),
            preserve_default=True,
        ),
        migrations.AlterField(
            model_name='organization',
            name='survey',
            field=models.ForeignKey(to='mysite.Survey', null=True),
            preserve_default=True,
        ),
    ]
