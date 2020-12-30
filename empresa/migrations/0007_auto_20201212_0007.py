# Generated by Django 3.0.8 on 2020-12-12 05:07

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('empresa', '0006_auto_20201211_1824'),
    ]

    operations = [
        migrations.AlterField(
            model_name='empresa',
            name='direccion',
            field=models.CharField(default='', max_length=100),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='empresa',
            name='latitud',
            field=models.CharField(default='', max_length=200),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='empresa',
            name='longitud',
            field=models.CharField(default='', max_length=200),
            preserve_default=False,
        ),
        migrations.AlterField(
            model_name='producto',
            name='detalle',
            field=models.CharField(default='', max_length=300, verbose_name='Descripción'),
            preserve_default=False,
        ),
    ]