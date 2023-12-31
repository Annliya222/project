# Generated by Django 4.0.3 on 2022-04-19 04:48

from django.db import migrations, models
import django.db.models.deletion


class Migration(migrations.Migration):

    dependencies = [
        ('crisis', '0001_initial'),
    ]

    operations = [
        migrations.CreateModel(
            name='department',
            fields=[
                ('departid', models.AutoField(primary_key=True, serialize=False)),
                ('departname', models.CharField(max_length=100, verbose_name='departname')),
                ('departdesc', models.CharField(max_length=100, verbose_name='departdesc')),
            ],
        ),
        migrations.CreateModel(
            name='location',
            fields=[
                ('locid', models.AutoField(primary_key=True, serialize=False)),
                ('location', models.CharField(max_length=100, verbose_name='location')),
            ],
        ),
        migrations.RemoveField(
            model_name='ambulance',
            name='clocation',
        ),
        migrations.AddField(
            model_name='hospital',
            name='facilities',
            field=models.CharField(default=1, max_length=300, verbose_name='facilities'),
            preserve_default=False,
        ),
        migrations.AddField(
            model_name='hospital',
            name='location',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='crisis.location'),
        ),
        migrations.AlterField(
            model_name='accident',
            name='location',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='crisis.location'),
        ),
        migrations.AlterField(
            model_name='ambulance',
            name='amblocation',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='crisis.location'),
        ),
        migrations.AlterField(
            model_name='police',
            name='location',
            field=models.ForeignKey(null=True, on_delete=django.db.models.deletion.CASCADE, to='crisis.location'),
        ),
    ]
