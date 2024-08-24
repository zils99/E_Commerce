from django.urls import path
from . import views

urlpatterns = [
    path(r'', views.index),
    path(r'kota/', views.kota),
    path(r'provinsi/',views.provinsi)
]