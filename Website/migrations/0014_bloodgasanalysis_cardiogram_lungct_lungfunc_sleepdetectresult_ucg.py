# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-04-16 12:27
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0013_auto_20170413_1720'),
    ]

    operations = [
        migrations.CreateModel(
            name='BloodGasAnalysis',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('head', models.CharField(max_length=1)),
                ('useOxygen', models.CharField(max_length=1)),
                ('oxygen', models.FloatField()),
                ('PH', models.FloatField()),
                ('PaO2', models.FloatField()),
                ('PaCO3', models.FloatField()),
                ('HCO3', models.FloatField()),
                ('A_aDO2', models.FloatField()),
                ('BEecf', models.FloatField()),
                ('Lac', models.FloatField()),
                ('SaO2', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='Cardiogram',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('isNormal', models.CharField(max_length=1)),
                ('content', models.CharField(max_length=9)),
                ('other', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='LungCT',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('head', models.CharField(max_length=1)),
                ('content', models.CharField(max_length=11)),
                ('other', models.CharField(max_length=50)),
            ],
        ),
        migrations.CreateModel(
            name='LungFunc',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('head', models.CharField(max_length=1)),
                ('FVC1', models.FloatField()),
                ('FVC2', models.FloatField()),
                ('FVC3', models.FloatField()),
                ('FEV11', models.FloatField()),
                ('FEV12', models.FloatField()),
                ('FEV13', models.FloatField()),
                ('FEV1_FVC1', models.FloatField()),
                ('FEV1_FVC2', models.FloatField()),
                ('FEV1_FVC3', models.FloatField()),
                ('RV_TLC1', models.FloatField()),
                ('RV_TLC2', models.FloatField()),
                ('RV_TLC3', models.FloatField()),
                ('FEV1change', models.FloatField()),
                ('GOLD', models.CharField(max_length=1)),
            ],
        ),
        migrations.CreateModel(
            name='SleepDetectResult',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('head', models.CharField(max_length=1)),
                ('detectTime', models.CharField(max_length=20)),
                ('sleep', models.FloatField()),
                ('AHI', models.FloatField()),
                ('ODI', models.FloatField()),
                ('avgSpO2', models.FloatField()),
                ('lowSpO2', models.FloatField()),
                ('relaSpO2', models.FloatField()),
                ('avgBreath', models.FloatField()),
                ('wake', models.FloatField()),
                ('R', models.FloatField()),
                ('N2', models.FloatField()),
                ('N3', models.FloatField()),
            ],
        ),
        migrations.CreateModel(
            name='UCG',
            fields=[
                ('id', models.AutoField(auto_created=True, primary_key=True, serialize=False, verbose_name='ID')),
                ('P_id', models.CharField(max_length=10)),
                ('date', models.DateField()),
                ('CDU', models.CharField(max_length=1)),
                ('LVEF', models.FloatField()),
                ('PASP', models.CharField(max_length=1)),
                ('symptom', models.CharField(max_length=50)),
                ('left', models.CharField(max_length=8)),
                ('right', models.CharField(max_length=8)),
                ('others', models.CharField(max_length=50)),
            ],
        ),
    ]
