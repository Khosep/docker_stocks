FROM python:3.7

COPY . /stocks

WORKDIR /stocks

RUN pip3 install --no-cache-dir --upgrade -r requirements.txt

RUN python manage.py migrate
RUN python manage.py loaddata logistic_db.json

EXPOSE 8111

CMD ["python", "./manage.py", "runserver", "0.0.0.0:8111"]
