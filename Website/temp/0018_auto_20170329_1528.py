# -*- coding: utf-8 -*-
# Generated by Django 1.10.5 on 2017-03-29 07:28
from __future__ import unicode_literals

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('Website', '0017_patientinfo_password'),
    ]

    operations = [
        migrations.RenameField(
            model_name='emergcallinfo',
            old_name='data',
            new_name='date',
        ),
        migrations.RemoveField(
            model_name='inhospitalinfo',
            name='reason',
        ),
        migrations.AddField(
            model_name='emergcallinfo',
            name='medicine',
            field=models.CharField(default='', max_length=150),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='inhospitalinfo',
            name='medicine',
            field=models.CharField(default='1', max_length=150),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='outpatientserviceinfo',
            name='isSymptom',
            field=models.CharField(default='1', max_length=1),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='emergcallinfo',
            name='abtType',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='emergcallinfo',
            name='byxResult',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='emergcallinfo',
            name='ecMethod',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='emergcallinfo',
            name='place',
            field=models.CharField(max_length=150),
        ),
        migrations.AlterField(
            model_name='emergcallinfo',
            name='symptom',
            field=models.CharField(max_length=10),
        ),
        migrations.AlterField(
            model_name='inhospitalinfo',
            name='abtType',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='inhospitalinfo',
            name='byxResult',
            field=models.CharField(max_length=50),
        ),
        migrations.AlterField(
            model_name='inhospitalinfo',
            name='place',
            field=models.CharField(max_length=150),
        ),
        migrations.AlterField(
            model_name='inhospitalinfo',
            name='symptom',
            field=models.CharField(max_length=10),
        ),
        migrations.AlterField(
            model_name='outpatientserviceinfo',
            name='abtType',
            field=models.CharField(max_length=30),
        ),
        migrations.AlterField(
            model_name='outpatientserviceinfo',
            name='medicine',
            field=models.CharField(max_length=150),
        ),
    ]