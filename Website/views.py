from django.shortcuts import render

# Create your views here.

def test(request):
    return render(request,"test.html")

def index(request):
    return render(request,"index.html")
