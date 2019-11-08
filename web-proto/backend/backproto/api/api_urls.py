from django.urls import path, include
from api import views

urlpatterns = [
    path('echo/', views.EchoView.as_view(), name='api_echo'),
]
