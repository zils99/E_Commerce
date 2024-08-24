from django.contrib import admin
from django.urls import path, include

from . import views
from penjual import views as views_penjual

urlpatterns = [
    path(r'', views.index),
    path(r'admin/', include('admin.urls')),
    path(r'penjual/',views_penjual.list)
]