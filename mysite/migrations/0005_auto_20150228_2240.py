# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0004_auto_20150228_2215'),
    ]

    operations = [
        migrations.CreateModel(
            name='Rate',
            fields=[
                ('answerbase_ptr', models.OneToOneField(parent_link=True, auto_created=True, primary_key=True, serialize=False, to='mysite.AnswerBase')),
                ('body', models.IntegerField(null=True, blank=True)),
            ],
            options={
            },
            bases=('mysite.answerbase',),
        ),
        migrations.RemoveField(
            model_name='survey',
            name='Organizations',
        ),
        migrations.AddField(
            model_name='organization',
            name='survey',
            field=models.ForeignKey(default=1, to='mysite.Survey'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='survey',
            name='Categoty',
            field=models.CharField(max_length=100, null=True),
            preserve_default=True,
        ),
    ]
