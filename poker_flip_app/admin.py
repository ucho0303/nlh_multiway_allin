from django.contrib import admin

# Register your models here.
# モデルをインポート
from . models import People

# 管理ツールに登録
admin.site.register(People)
