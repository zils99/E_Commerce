from django.http import HttpResponse
from django.shortcuts import render

def index(request):
    return render(request, 'home.html')

def index2(request):
    return HttpResponse("Hellow World")