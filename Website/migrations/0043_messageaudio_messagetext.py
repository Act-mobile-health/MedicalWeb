# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-05-17 14:50
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0042_patientinfo_idcardnum'),
    ]

    operations = [
        migrations.CreateModel(
            name='MessageAudio',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=12)),
                ('content', models.FileField(upload_to='AUDIO')),
                ('date', models.DateField()),
                ('date_upload', models.DateField(auto_now_add=True)),
            ],
        ),
        migrations.CreateModel(
            name='MessageText',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=12)),
                ('content', models.CharField(max_length=200)),
                ('date', models.DateField()),
                ('date_upload', models.DateField(auto_now_add=True)),
            ],
        ),
    ]
