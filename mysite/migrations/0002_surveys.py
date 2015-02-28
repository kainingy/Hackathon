# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='Surveys',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('rating1', models.PositiveIntegerField()),
                ('rating2', models.PositiveIntegerField()),
                ('rating3', models.PositiveIntegerField()),
                ('org', models.ForeignKey(to='mysite.Organizations')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
    ]
