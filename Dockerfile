FROM ericmoritz/docker-test-base
RUN apt-get update
RUN apt-get install -y uwsgi-plugin-python uwsgi
EXPOSE 127.0.0.1:8000:8000
ADD ./ /project/
ENTRYPOINT uwsgi --ini /project/uwsgi.ini

