# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0005_auto_20150228_2240'),
    ]

    operations = [
        migrations.RenameField(
            model_name='survey',
            old_name='Categoty',
            new_name='Category',
        ),
    ]
