# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-11 06:46
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0032_auto_20170511_1445'),
    ]

    operations = [
        migrations.AlterField(
            model_name='pm25',
            name='aoTiZhongXin',
            field=models.CharField(max_length=50, null=True),
        ),
    ]
