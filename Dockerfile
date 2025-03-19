#use an official python runtime as a parent image
FROM python:3.11

#set the working directory in the contsiner
WORKDIR /app

#copy the requirements file and install dependencies
COPY requirements.txt .
RUN pip install --no-cache-dir -r requirements.txt


COPY . .

EXPOSE 5000

CMD ["python", "app.py"]
