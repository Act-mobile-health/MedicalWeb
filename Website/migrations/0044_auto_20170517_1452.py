# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-17 14:52
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0043_messageaudio_messagetext'),
    ]

    operations = [
        migrations.AddField(
            model_name='messageaudio',
            name='sign',
            field=models.CharField(default='1', max_length=1),
        ),
        migrations.AddField(
            model_name='messagetext',
            name='sign',
            field=models.CharField(default='1', max_length=1),
        ),
    ]