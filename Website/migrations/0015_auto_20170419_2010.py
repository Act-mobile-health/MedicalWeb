# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-19 12:10
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0014_bloodgasanalysis_cardiogram_lungct_lungfunc_sleepdetectresult_ucg'),
    ]

    operations = [
        migrations.RenameField(
            model_name='ucg',
            old_name='others',
            new_name='other',
        ),
    ]