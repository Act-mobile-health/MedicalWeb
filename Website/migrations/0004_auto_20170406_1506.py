# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-06 07:06
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0003_auto_20170406_1438'),
    ]

    operations = [
        migrations.AlterField(
            model_name='accessoryexamination',
            name='doc',
            field=models.ImageField(upload_to=('AE/', 'name')),
        ),
        migrations.AlterField(
            model_name='attachinfo',
            name='doc',
            field=models.ImageField(upload_to=('Attachment/', 'name')),
        ),
    ]