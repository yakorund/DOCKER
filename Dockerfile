# Используем официальный образ Python
FROM python:3.8.10
# или так - FROM python3:3.8.10
# Устанавливаем рабочую директорию внутри контейнера(мой вариант)
WORKDIR /app
# Копируем файл с зависимостями
COPY requirements.txt .

# Устанавливаем зависимости
# RUN pip install --no-cache-dir -r requirements.txt возможно и так

RUN pip install -U pip
RUN pip install -r requirements.txt

# Копируем остальные файлы проекта
COPY . .

# Команда для запуска приложения
#CMD ["python3", "kvadratnoe_uravnenie.py"] возможно такой вариант, возможно пайтон может без цыфры 3
#CMD python /app/kvadratnoe_uravnenie.py
#docker run -w /usr/src -v "$PWD/docker/":/usr/src python:latest python3 ./kvadratnoe_uravnenie.py

ENTRYPOINT ["python3", "kvadratnoe_uravnenie.py"]

