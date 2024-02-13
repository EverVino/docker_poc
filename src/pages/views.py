from django.shortcuts import render
from django.http import HttpResponse
# Create your views here.

def pages(request):
    return HttpResponse("Hola Como estan")
