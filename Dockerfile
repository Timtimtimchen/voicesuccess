FROM python
RUN mkdir dick

RUN apt-get update && apt-get install -y alsa-utils && apt-get clean
RUN apt-get update && apt-get install -y espeak && apt-get clean
COPY aa.py  /dick
COPY asound.conf /etc/asound.conf
WORKDIR /dick


RUN pip install pyttsx3

CMD ["python","aa.py"] 
