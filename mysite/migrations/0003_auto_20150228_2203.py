# -*- coding: utf-8 -*-
from __future__ import unicode_literals

from django.db import models, migrations


class Migration(migrations.Migration):

    dependencies = [
        ('mysite', '0002_surveys'),
    ]

    operations = [
        migrations.CreateModel(
            name='AnswerBase',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Answers',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('created', models.DateTimeField(auto_now_add=True)),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Question',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('text', models.TextField()),
                ('choices', models.PositiveIntegerField(choices=[(b'1', b'Poor'), (b'2', b'Below Average'), (b'3', b'Average'), (b'4', b'Above Average'), (b'5', b'Excellent')])),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.CreateModel(
            name='Survey',
            fields=[
                ('id', models.AutoField(verbose_name='ID', serialize=False, auto_created=True, primary_key=True)),
                ('name', models.ForeignKey(to='mysite.Organizations')),
            ],
            options={
            },
            bases=(models.Model,),
        ),
        migrations.RemoveField(
            model_name='surveys',
            name='org',
        ),
        migrations.DeleteModel(
            name='Surveys',
        ),
        migrations.AddField(
            model_name='question',
            name='survey',
            field=models.ForeignKey(to='mysite.Survey'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='answers',
            name='survey',
            field=models.ForeignKey(to='mysite.Survey'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='answerbase',
            name='answer',
            field=models.ForeignKey(to='mysite.Answers'),
            preserve_default=True,
        ),
        migrations.AddField(
            model_name='answerbase',
            name='question',
            field=models.ForeignKey(to='mysite.Question'),
            preserve_default=True,
        ),
    ]
