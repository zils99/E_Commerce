from django.shortcuts import render

# Create your views here.
def index(request):
    return render(request,'admin.html')

def kota(request):
    return render(request,'kota.html')

def provinsi(request):
    return render(request,'provinsi.html')