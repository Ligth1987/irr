# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Инверторы

  Контекст:
    Когда открыта страница для региона "Казахстан"
        И на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Инверторы"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

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
        | Валюта         |      |        | тенге  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"

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

@customfield
  Сценарий: Фильтр по выходному напряжению
    Когда я делаю поиск по следующим параметрам:
        | parameter           | min | max  |
        | Выходное напряжение | 1   | 1000 |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Выходное напряжение, В" >= "1"
       И в деталях первого объявления "Выходное напряжение, В" <= "1000"

@customfield
  Сценарий: Фильтр по выходной мощности
    Когда я делаю поиск по следующим параметрам:
        | parameter         | min | max  |
        | Выходная мощность | 1   | 2000 |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Выходная мощность, Вт" >= "1"
       И в деталях первого объявления "Выходная мощность, Вт" <= "2000"

@customfield
@empty_results
  Сценарий: Фильтр по пиковая мощности
    Когда я делаю поиск по следующим параметрам:
        | parameter        | min | max   |
        | Пиковая мощность | 1   | 10000 |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Пиковая мощность, Вт" >= "1"
       И в деталях первого объявления "Пиковая мощность, Вт" <= "10000"

@customfield
@empty_results
  Сценарий: Фильтр по КПД
    Когда я делаю поиск по следующим параметрам:
        | parameter | min | max |
        | КПД       | 1   | 80  |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "КПД" >= "1"
       И в деталях первого объявления "КПД" <= "80"

@customfield
  Сценарий: Фильтр по защите от перегрузки
    Когда я делаю поиск по следующим параметрам:
      | parameter            | value |
      | Защита от перегрузки | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Защита от перегрузки"

@customfield
  Сценарий: Фильтр по USB-порту
    Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | USB-порт  | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "USB-порт"

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
      | Источник  | Cайт IRR.KZ |
      И на странице поиска загружен список результатов

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