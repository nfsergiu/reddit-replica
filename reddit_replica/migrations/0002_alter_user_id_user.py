# Generated by Django 3.2.7 on 2021-10-01 19:37

from django.db import migrations, models


class Migration(migrations.Migration):

    dependencies = [
        ('reddit_replica', '0001_initial'),
    ]

    operations = [
        migrations.AlterField(
            model_name='user',
            name='id_user',
            field=models.IntegerField(db_index=True, primary_key=True, serialize=False, unique=True),
        ),
    ]
