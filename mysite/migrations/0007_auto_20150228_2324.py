# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0006_auto_20150228_2241'),
    ]

    operations = [
        migrations.CreateModel(
            name='Activity',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('title', models.CharField(max_length=100)),
                ('time', models.DateField(null=True)),
                ('description', models.TextField()),
                ('organization', models.ForeignKey(to='mysite.Organization')),
                ('survey', models.ForeignKey(to='mysite.Survey')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.AlterField(
            model_name='survey',
            name='Category',
            field=models.CharField(max_length=100),
            preserve_default=True,
        ),
    ]
