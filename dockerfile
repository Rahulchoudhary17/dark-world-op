FROM sandy1709/catuserbot:alpine

#clonning repo 
RUN git clone https://github.com/Rahulchoudhary17/dark-world-op.git /root/userbot
#working directory 
WORKDIR /root/userbot

# Install requirements
RUN sudo apt-get install libpq-dev
RUN pip3 install -U -r requirements.txt

ENV PATH="/home/userbot/bin:$PATH"

CMD ["python3","-m","userbot"]
