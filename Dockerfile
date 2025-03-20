# Используем официальный образ Python
FROM python:3.8.10

# Устанавливаем рабочую директорию внутри контейнера(мой вариант)
WORKDIR /app

# Копируем файл с зависимостями
COPY requirements.txt .

# Устанавливаем зависимости
RUN pip install -U pip
RUN pip install -r requirements.txt

# Копируем остальные файлы проекта
COPY . .

# Команда для запуска приложения
ENTRYPOINT ["python3", "kvadratnoe_uravnenie.py"]

