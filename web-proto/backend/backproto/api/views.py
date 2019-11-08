from rest_framework import views, status
from rest_framework.response import Response


class CommonAPIView(views.APIView):
    pass


class EchoView(CommonAPIView):
    permission_classes = []

    def get(self, request, *args, **kwargs):
        data_out = {'result': 'echo pong'}
        return Response(
            data_out,
            status=status.HTTP_200_OK,
        )

    def post(self, request, *args, **kwargs):
        return Response(
            request.data,
            status=status.HTTP_201_CREATED
        )
