# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Спецтехника

  Контекст:
    Когда открыта страница для региона "Казахстан"
        И на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Спецтехника"

@all_results
  Сценарий: Все результаты
   Когда на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений

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

  Сценарий: Фильтр по "Новый или подержанный"
   Когда я делаю поиск по следующим параметрам:
      | parameter             | value |
      | Новый или подержанный | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Новый или подержанный" равно "новый"

@customfield
  Сценарий: Фильтр по году выпуска
   Когда я делаю поиск по следующим параметрам:
      | parameter      | min  | max  |
      | Год выпуска    | 1933 | 2012 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Год выпуска" в границах "1933 - 2012"

@customfield
  Сценарий: Фильтр по типу техники
   Когда я делаю поиск по следующим параметрам:
      | parameter   | value     |
      | Тип техники | эвакуатор |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Тип техники" равно "эвакуатор"

@customfield
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value  |
      | Марка     | Bobcat |
      | Модель    | T190   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Bobcat"
       И в деталях первого объявления "Модель" равно "T190"

@customfield
@empty_results
  Сценарий: Фильтр по пробегу
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max   |
      | Пробег    | 10  | 20000 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Пробег" в границах "10 - 20000"

# Не отображается рисунок в http://irr.ru/advert/175273562/
@bugs @bugsmissing_photo
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
      | Источник  | Сайт IRR.KZ |
      И на странице поиска загружен список результатов

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
        И я ищу "бетоносмеситель"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "бетоносмеситель"

@empty_results
  Сценарий: Фильтр по ключевому слову
    Когда я ищу "бетоносмеситель"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в первом объявлении содержится "бетоносмеситель"
