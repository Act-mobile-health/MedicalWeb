# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-27 15:11
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0008_auto_20170327_2224'),
    ]

    operations = [
        migrations.AddField(
            model_name='clinic',
            name='detail',
            field=models.CharField(default='default', max_length=200),
            preserve_default=False,
        ),
    ]