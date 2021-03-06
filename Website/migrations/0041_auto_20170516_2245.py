# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-16 22:45
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0040_appinfo_date_upload'),
    ]

    operations = [
        migrations.AddField(
            model_name='emergcallinfo',
            name='date_add',
            field=models.DateField(auto_now_add=True, default='2017-05-06'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='inhospitalinfo',
            name='date_add',
            field=models.DateField(auto_now_add=True, default='2017-05-06'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='outpatientserviceinfo',
            name='date_add',
            field=models.DateField(auto_now_add=True, default='2017-05-06'),
            preserve_default=False,
        ),
    ]
