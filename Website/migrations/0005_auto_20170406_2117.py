# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-06 13:17
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0004_auto_20170406_1506'),
    ]

    operations = [
        migrations.AlterField(
            model_name='attachinfo',
            name='doc',
            field=models.ImageField(upload_to='Attachment'),
        ),
    ]
