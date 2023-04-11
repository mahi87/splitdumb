FROM ubuntu:22.04
WORKDIR /splitdumb
COPY . .
RUN apt update
RUN apt install software-properties-common -y
RUN add-apt-repository ppa:deadsnakes/ppa
RUN DEBIAN_FRONTEND=noninteractive TZ=Etc/UTC apt -y install tzdata
RUN apt update
RUN apt install -y python3.8
RUN apt install -y python3-pip
RUN pip install -r requirements.txt
CMD ["flask", "run", "--host=0.0.0.0", "--port=80"]
EXPOSE 80