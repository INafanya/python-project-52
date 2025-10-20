from django.contrib import messages
from django.shortcuts import render
from django.views import View


class IndexView(View):
    def get(self, request):
        if request.session.pop("just_logged_in", False):
            messages.success(request, "Вы вошли")
        return render(request, "index.html")
