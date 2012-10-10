# language:ru
# encoding: utf-8
Функционал: Оборудование -> Оборудование для сферы услуг

  Контекст:
    Когда открыта страница для региона "Россия"
        И на главной странице я перехожу в категорию "Оборудование -> Оборудование для сферы услуг"

@visible_filter
  Сценарий: Видимые фильтры
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Тип предложения |
         | Состояние       |
         | Цена            |
         | Ключевые слова  |
         | С фото          |
         | С видео         |
   Когда я раскрываю список фильтров
       * в списке фильтров показаны следующие фильтры:
         | фильтр          |
         | Тип предложения |
         | Состояние       |
         | Цена            |
         | Ключевые слова  |
         | С фото          |
         | С видео         |
         | Источник        |
         | Поданные        |


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

  Сценарий: Фильтр по состояние
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

@customfield
  Сценарий: Фильтр по типу оборудования 1
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Пищевое |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 2
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Косметологическое и медицинское |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 3
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Чистящая и моющая техника |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 4
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Электрооборудование для кафе |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 5
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Оборудование для автосервиса |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 6
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Прочее оборудование для кафе, ресторанов |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 7
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Тепловое оборудование для кафе |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

@customfield
  Сценарий: Фильтр по типу оборудования 8
   Когда я делаю поиск по следующим параметрам:
      | parameter        | value   |
      | Тип оборудования | Швейное оборудование |
      И на странице поиска загружен список результатов
      То на странице показано >= 1 объявлений

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

@empty_results
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

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "память"

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "память"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "память"
