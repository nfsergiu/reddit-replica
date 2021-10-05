from django.db import models

# Create your models here.
class User(models.Model):
    id_user = models.IntegerField(primary_key=True, unique=True, db_index=True)
    username = models.CharField(max_length=50)
    password = models.CharField(max_length=50)
