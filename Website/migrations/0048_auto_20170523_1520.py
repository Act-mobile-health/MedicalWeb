# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-23 15:20
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0047_auto_20170523_1515'),
    ]

    operations = [
        migrations.AlterField(
            model_name='medicalvisit',
            name='e_time',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='medicalvisit',
            name='h_time',
            field=models.IntegerField(default=0),
        ),
        migrations.AlterField(
            model_name='medicalvisit',
            name='o_time',
            field=models.IntegerField(default=0),
        ),
    ]
