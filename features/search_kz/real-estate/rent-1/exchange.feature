# language:ru
# encoding: utf-8
@empty_results
Функционал: Недвижимость -> Обмен

  Контекст:
    Когда открыта страница для города "Астана"
        И на главной странице я перехожу в категорию "Недвижимость -> Обмен"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

  Сценарий: Фильтр по цене
    Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
        | Цена           | 100  | 100000 |       |
        | Валюта         |      |        | тенге  |
       И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000
       И в каждом объявлении валюта равна "тенге"

  Сценарий: Фильтр по валюте
    Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max    | value |
      | Цена           | 100  | 100000 |       |
      | Валюта         |      |        | $     |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении валюта равна "$"
       И в каждом объявлении цена >= 100
       И в каждом объявлении цена <= 100000

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
      | Источник  | Сайт IRR.KZ |
      И на странице поиска загружен список результатов для недвижимости

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.KZ"

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
