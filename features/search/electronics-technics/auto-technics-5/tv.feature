# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Телевизоры и мониторы

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Телевизоры и мониторы"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
       | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок

  Сценарий: Фильтр по типу предложения
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по состоянию
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Состояние" равно "новый"

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | руб.  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "руб."

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

  Сценарий: Фильтр по марке
    Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Марка     | Mystery |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Mystery"

  Сценарий: Фильтр по типу установки
    Когда я делаю поиск по следующим параметрам:
      | parameter     | value  |
      | Тип установки | панель |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип установки" равно "панель"

  Сценарий: Фильтр по диагонали дисплея
    Когда я делаю поиск по следующим параметрам:
      | parameter               | min | max |
      | Диагональ дисплея, дюйм | 1   | 10  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Диагональ дисплея, дюйм" >= "1"
       И в деталях первого объявления "Диагональ дисплея, дюйм" <= "10"

  Сценарий: Фильтр по встроенному TV-тюнеру
    Когда я делаю поиск по следующим параметрам:
      | parameter           | value |
      | Встроенный TV-тюнер | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Встроенный TV-тюнер"

   Сценарий: Фильтр по встроенному FM-тюнеру
    Когда я делаю поиск по следующим параметрам:
      | parameter           | value |
      | Встроенный FM-тюнер | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Встроенный FM-тюнер"

   Сценарий: Фильтр по подключению USB
    Когда я делаю поиск по следующим параметрам:
      | parameter       | value |
      | Подключение USB | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Подключение USB"

  Сценарий: Фильтр по наличию фото
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С фото    | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении отображается загруженная фотография

@empty_results
  Сценарий: Фильтр по наличию видео
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | С видео   | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления отображается видео

  Сценарий: Фильтр по источнику
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

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

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "сабвуфер"

@bugs
@bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "сабвуфер"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "сабвуфер"
