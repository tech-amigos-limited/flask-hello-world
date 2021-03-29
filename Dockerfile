FROM python:3.7.8
ADD . ./opt/
WORKDIR /opt/
EXPOSE 5000
RUN pip install --upgrade pip
RUN pip install -r requirements.txt
CMD ["export FLASK_APP=hello.py"]
CMD ["flask run"]