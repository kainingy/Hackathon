# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0003_auto_20150228_2203'),
    ]

    operations = [
        migrations.RenameModel(
            old_name='Answers',
            new_name='Answer',
        ),
        migrations.RenameModel(
            old_name='Organizations',
            new_name='Organization',
        ),
        migrations.RenameField(
            model_name='survey',
            old_name='name',
            new_name='Organizations',
        ),
        migrations.RemoveField(
            model_name='question',
            name='choices',
        ),
    ]
