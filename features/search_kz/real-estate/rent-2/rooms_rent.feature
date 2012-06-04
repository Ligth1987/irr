# language:ru
# encoding: utf-8
Функционал: Недвижимость -> Комнаты. Аренда

  Контекст:
    Когда открыта страница для города "Астана"
        И на главной странице я перехожу в категорию "Недвижимость -> Комнаты. Аренда"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

@customfield
  Сценарий: Фильтр по комнатам в квартире
    Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Комнат сдается | три   |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Комнат сдается" равно "3"

@customfield
  Сценарий: Фильтр по площади арендуемой комнаты
    Когда я делаю поиск по следующим параметрам:
        | parameter                  | min | max |
        | Площадь арендуемой комнаты | 10  | 300 |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Площадь арендуемой комнаты" >= "10"
       И в деталях первого объявления "Площадь арендуемой комнаты" <= "300"

@customfield
@bug33726
  Сценарий: Фильтр по этажу
    Когда я делаю поиск по следующим параметрам:
      | parameter | value     |
      | Этаж      | не первый |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления этаж не первый

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | тенге  |
        | Срок сдачи     |      |        | сутки |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"
       И в каждом объявлении срок сдачи равен "сутки"

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min | max    | value |
      | Цена           | 10  | 100000 |       |
      | Валюта         |     |        | $     |
      | Срок сдачи     |     |        | сутки |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 10
       И в каждом объявлении цена <= 100000
       И в каждом объявлении срок сдачи равен "сутки"

@customfield
  Сценарий: Фильтр по ремонту
    Когда я делаю поиск по следующим параметрам:
      | parameter | value      |
      | Ремонт    | евроремонт |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Ремонт" равно "евроремонт"

@customfield
  Сценарий: Фильтр по мебели
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Мебель    | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Мебель"

@customfield
  Сценарий: Фильтр по бытовой технике
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Бытовая техника | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Бытовая техника"

@customfield
  Сценарий: Фильтр по этажам в здании
    Когда я делаю поиск по следующим параметрам:
      | parameter     | min | max |
      | Этаж в здании | 1   | 10  |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Этаж" >= "1"
       И в деталях первого объявления "Этаж" <= "10"

@customfield
  Сценарий: Фильтр по лифтам в здании
    Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Лифты в здании | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Лифты в здании"

@customfield
@empty_results
  Сценарий: Фильтр по газу в доме
    Когда я делаю поиск по следующим параметрам:
      | parameter  | value |
      | Газ в доме | x     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Газ в доме"

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
      | Источник  | Cайт IRR.KZ |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Cайт IRR.KZ"

@empty_results
  Сценарий: Фильтр по времени подачи
    Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 31 дней назад

@bugs
@bug34183
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