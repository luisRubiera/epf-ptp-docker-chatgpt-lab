FROM python:3.10

#Install curl
RUN apt-get update &&  apt-get install -y curl

#Clone repo and get requirements
RUN git clone https://github.com/amalev18/epf-ptp-docker-chatgpt-lab.git

WORKDIR /epf-ptp-docker-chatgpt-lab

RUN pip install -r requirements.txt

#Set the environmental variable based on the secret key
ENV OPENAI_KEY=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

#Exposing the port
EXPOSE 5000

CMD ["flask","--app", "hello", "run", "--host=0.0.0.0"] 





