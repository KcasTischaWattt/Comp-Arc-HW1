# Модификация

Код был модифицирован про помощи команды
>     gcc -masm=intel \
>     -fno-asynchronous-unwind-tables \
>     -fno-jump-tables \
>     -fno-stack-protector \
>     -fno-exceptions \
>     ./make_array.c \
>     -S -o ./make_array_edited.s 
После чего все файлы были отредактированны вручную:

1. Из всех файлов удалены cdqe;
2. Из всех файлов удалены все строки после 
   > .ident	"GCC: (Ubuntu 9.4.0-1ubuntu1~20.04.1) 9.4.0
   за ненадобностью;
3. Удалены лишние переприсваивания - все они закомментированы во всех 4 файлах.
4. Часть подобных переприсвааивааний удаалить не получилось - приводило к ошибкам компиляции или Seg fault.