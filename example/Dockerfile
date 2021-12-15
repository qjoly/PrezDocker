FROM debian:buster
RUN apt update
RUN apt install -y python3 python3-pip 
RUN python3 -m pip install bottle
EXPOSE 8080
COPY run.py run.py
CMD ["python3", "run.py"]
