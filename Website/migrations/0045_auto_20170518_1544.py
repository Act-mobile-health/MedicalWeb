# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-18 15:44
from __future__ import unicode_literals

from django.db import migrations


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0044_auto_20170517_1452'),
    ]

    operations = [
        migrations.RenameField(
            model_name='emergcallinfo',
            old_name='date_add',
            new_name='date_upload',
        ),
        migrations.RenameField(
            model_name='inhospitalinfo',
            old_name='date_add',
            new_name='date_upload',
        ),
        migrations.RenameField(
            model_name='outpatientserviceinfo',
            old_name='date_add',
            new_name='date_upload',
        ),
    ]
