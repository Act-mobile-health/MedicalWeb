# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-16 21:22
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0038_auto_20170515_2235'),
    ]

    operations = [
        migrations.AddField(
            model_name='appinfo',
            name='sign',
            field=models.CharField(default='1', max_length=1),
        ),
    ]
