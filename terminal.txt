1) Посмотреть где я: pwd
2) Создать папку: mkdir folder
3) Зайти в папку: cd folder
4) Создать 3 папки: mkdir folder_1 folder_2 folder_3
5) Зайти в любую папку: cd folder_1

6) Создать 5 файлов (3 txt и 2 json): touch test_1.txt test_2.txt test_3.txt rim_4.json rim_5.json
7) Создать 3 папки: mkdir dir_1 dir_2 dir_3
8) Вывести список содержимого папки: ls
9) +Открыть любой txt файл: nano test_1.txt
10)+Написать туда что-нибудь, любой текст: добрый вечер что-нибудь любой текст

11)+ Сохранить и выйти: Ctrl+X  нажать Y и  нажать Enter
12) Выйти из папки на уровень выше: cd ..
13) Переместить любые два файла, которые вы создали, в любую  другую папку: mv folder_1/test_1.txt folder_1/dir_1/test_1.txt
mv folder_1/test_2.txt folder_1/dir_1/test_2.txt  (здесь я переместила 2 файла с помощью 2 команд)

Либо так сделаем. Сначала  перейдём  в другую папку cd folder_1
затем
mv test_1.txt test_2.txt dir_1/

14) Скопировать любые два файла, которые вы создали, в любую другую папку: cp folder_1/rim_4.json folder_1/dir_2/rim_4.json
cp folder_1/rim_5.json folder_1/dir_2/rim_5.json
 
( cp rim_4.json rim_5.json dir_2/ )

15) Найти файл по имени: find -name "test_1.txt"

16) просмотреть содержимое в реальном времени (команда grep) изучите как она работает: tail -f test_1.txt

17) вывести несколько первых строк из текстового файла: head -2 test_1.txt

18) вывести несколько последних строк из текстового файла: tail -3 test_1.txt

19) просмотреть содержимое длинного файла (команда less) изучите как она работает: less test_1.txt и нажимаем стрелку вниз 
для вывода дальнейших строк


20) вывести дату и время:date

=========
Задание *
1) Отправить htttp запрос на сервер
http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000

curl "http://162.55.220.72:5005/object_info_3?name=Vadim&age=32&salary=1000"

2)Написать скрипт который выполнит автоматически пункты 3, 4, 5, 6, 7, 8, 13

#!/bin/bash
cd folder
mkdir folder_1 folder_2 folder_3
cd folder_1
touch test_1.txt test_2.txt test_3.txt rim_4.json rim_5.json
mkdir dir_1 dir_2 dir_3
ls
mv folder_1/test_1.txt folder_1/dir_1/test_1.txt
mv folder_1/test_2.txt folder_1/dir_1/test_2.txt

#сохраняем этот скрипт в формате .sh  Например script.sh 
Сделать его исполняемым командой chmod +x script.sh ( можно и без этой команды)
Запускаем файл командой: sh script.sh
