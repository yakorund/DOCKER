# DOCKER


для практической работы с контейнерами

написал программу для решения квадратных уровнений

командой docker run -it --rm test1:v1.1 запустил контейнер и проверил, что всё корректно работает 

-it  ---   тег который запускает программу в интерактивном режиме

--rm  ---  удаляет контейнер после выполнения

сохранил всё на гитхабе

осталось решить почему докер компос не выполняет всю программу, и это вопрос к куратору

(на скриншоте " Результат выполнения файла docker-compose " я показал вывод команды docker-compose up

получяю такой вывод: что дальше менять и где не представляю.


~/DOCKER$ docker-compose up
[+] Building 0.0s (0/0)                                                                                                                       docker:default
[+] Running 2/0
 ✔ Container test_docker           Created                                                                                                              0.0s 
 ✔ Container docker-test_docker-1  Running                                                                                                              0.0s 
Attaching to docker-test_docker-1, test_docker
test_docker           | Traceback (most recent call last):
test_docker           |   File "kvadratnoe_uravnenie.py", line 6, in <module>
test_docker           |     a = float(input("Введите коэффициент a: "))
test_docker           | EOFError: EOF when reading a line
test_docker           | Эта программа предназначена для решения квадратных уровнений
test_docker           | если число a b c отрицательное, не забудь поставить знак - перед числом
test_docker           | Введите коэффициент a: 
test_docker exited with code 1

