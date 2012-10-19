# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Дома, дачи, участки. Продажа -> Дома, дачи

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Недвижимость -> Дома, дачи, участки. Продажа -> Дома, дачи"

@visible_filter
  Сценарий: Видимые фильтры
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Расположение               |
         | Метро  \nПоказать на карте |
         | До метро, минут(пешком)    |
         | Площадь строения, м2       |
         | Цена                       |
         | Ключевые слова             |
         | С фото                     |
         | С видео                    |
   Когда я раскрываю список фильтров
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Расположение               |
         | Метро  \nПоказать на карте |
         | До метро, минут(пешком)    |
         | Площадь строения, м2       |
         | Цена                       |
         | Год постройки/сдачи        |
         | Площадь участка, соток     |
         | Количество этажей          |
         | Количество комнат          |
         | Газ в доме                 |
         | Отапливаемый               |
         | Материал стен              |
         | Строение                   |
         | Ремонт                     |
         | Ключевые слова             |
         | С фото                     |
         | С видео                    |
         | Источник                   |
         | Поданные                   |

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       

  Сценарий: Фильтр по округам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Округ     | Западный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "АО" равно "Западный"

  Сценарий: Фильтр по районам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value           |
      | Район     | Поселок Внуково |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Район города" равно "Поселок Внуково"

  Сценарий: Фильтр по линии метро
    Когда я делаю поиск по следующим параметрам:
      | parameter   | value       |
      | Линия метро | Калининская |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Линия метро" равно "Калининская"

  Сценарий: Фильтр по станции метро
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value          |
      | Станция метро | Новогиреево м. |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Станция метро" равно "Новогиреево"

  Сценарий: Фильтр по времени до метро
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | До метро  | 5     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "До метро" <= "5"

@customfield
  Сценарий: Фильтр по площадь строения
    Когда я делаю поиск по следующим параметрам:
        | parameter        | min | max |
        | Площадь строения | 10  | 300 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь строения" >= "10"
       И в деталях первого объявления "Площадь строения" <= "300"

@customfield
  Сценарий: Фильтр по площадь строения
    Когда я делаю поиск по следующим параметрам:
        | parameter        | max      |
        | Площадь строения | 10000000 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта                |  |        | руб.  |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта                |  |        | $     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

@customfield
  Сценарий: Фильтр по году постройки/сдачи
    Когда я делаю поиск по следующим параметрам:
        | parameter           | min  | max  |
        | Год постройки/сдачи | 1933 | 2012 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год постройки/сдачи" >= "1933"
       И в деталях первого объявления "Год постройки/сдачи" <= "2012"

@customfield
  Сценарий: Фильтр по году постройки/сдачи
    Когда я делаю поиск по следующим параметрам:
        | parameter           | max      |
        | Год постройки/сдачи | 10000000 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по площади участка
    Когда я делаю поиск по следующим параметрам:
        | parameter       | min | max |
        | Площадь участка | 10  | 100 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь участка" >= "10"
       И в деталях первого объявления "Площадь участка" <= "100"

@customfield
  Сценарий: Фильтр по площади участка
    Когда я делаю поиск по следующим параметрам:
        | parameter       | max      |
        | Площадь участка | 10000000 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений

# Не показывается на странице результатов
# @customfield
#  Сценарий: Фильтр по количеству этажей
#    Когда я делаю поиск по следующим параметрам:
#        | parameter         | min | max |
#        | Количество этажей | 1   | 5   |
#       И на странице поиска загружен список результатов для недвижимости

#      То на странице показано >= 1 объявлений
#       И в деталях первого объявления "Количество этажей" >= "1"
#       И в деталях первого объявления "Количество этажей" <= "5"

@customfield
  Сценарий: Фильтр по количеству комнат
    Когда я делаю поиск по следующим параметрам:
        | parameter         | value     |
        | Количество комнат | 1,2,3,4,5 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Количество комнат" >= "1"
       И в деталях первого объявления "Количество комнат" <= "5"

@customfield
  Сценарий: Фильтр по газу в доме
    Когда я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Газ в доме | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Газ в доме"

@customfield
  Сценарий: Фильтр по отапливаемости
    Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Отапливаемый | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Отапливаемый"

@customfield
  Сценарий: Фильтр по материалу стен
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value     |
      | Материал стен | кирпичный |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Материал стен" равно "кирпичный"

@customfield
  Сценарий: Фильтр по строению
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Строение  | дача  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Строение" равно "дача"

@customfield
  Сценарий: Фильтр по ремонту
    Когда я делаю поиск по следующим параметрам:
      | parameter | value          |
      | Ремонт    | дом недостроен |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ремонт" равно "дом недостроен"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

@empty_results
  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "этаж"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "этаж"
        И на странице поиска загружен список результатов для недвижимости

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "этаж"
