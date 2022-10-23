# Comp-Arc-HW1

## На 4 балла:
 ### 1. Приведено решение задачи на С:
   > * [main.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/main.c)
   > * [input_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/input_array.c)
   > * [make_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/make_array.c)
   > * [print_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/print_array.c)

 ### 2. Программа проассемблирована и откомпилирована без оптимизирующих опций, в коде программы прокомментированы переменные:
   > * [main.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/default/main.s)
   > * [input_array.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/default/input_array.s)
   > * [make_array.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/default/make_array.s)
   > * [print_array.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/default/print_array.s)
    
   ### <br> Вот файлик со всеми переменными для удобства:
   > * [Переменные](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/Variables.md)

 ### 3. Программа промодифицирована флагами компиляции, затем изменена вручную:
   > * [main_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/mod/main_mod.s)
   > * [input_array_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/mod/input_array_mod.s)
   > * [make_array_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/mod/make_array_mod.s)
   > * [print_array_mod.s](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/asm-files/mod/print_array_mod.s)
   ### Файл изменений:
   > * [Список изменений](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/md-files/changes1.md)
 
 ### 4. Проведено тестирование, результаты указаны в [документе](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/tests.md).
 
 
  
## На 5 баллов:

### 1. Приведено решение задачи на С с передачей данных в функйии через параметры и использованием локальных переменных:
   > * [main.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/main.c)
   > * [input_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/input_array.c)
   > * [make_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/make_array.c)
   > * [print_array.c](https://github.com/KcasTischaWattt/Comp-Arc-HW1/blob/main/C-files/print_array.c)

Функции, присутствующие в программе:
   > input_array(int *A, int len)
   > <br> make_array(const int *A, int len, int *B)
   > <br> print_array(int len, const int *B)
   
 Так же используются локальные переменные.
