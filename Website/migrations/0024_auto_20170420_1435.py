# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-20 06:35
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0023_auto_20170420_0003'),
    ]

    operations = [
        migrations.RenameField(
            model_name='patientinfo',
            old_name='birthAddr',
            new_name='city',
        ),
        migrations.AddField(
            model_name='patientinfo',
            name='county',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='patientinfo',
            name='province',
            field=models.CharField(default='', max_length=50),
            preserve_default=False,
        ),
    ]