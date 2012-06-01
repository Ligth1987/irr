# language:ru
# encoding: utf-8
Функционал: Все для дачи -> Садовая техника -> Мойки высокого давления

  Контекст:
    Когда открыта страница для региона "Казахстан"
        И на главной странице я перехожу в категорию "Все для дачи -> Садовая техника -> Мойки высокого давления"

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
  Сценарий: Фильтр по марке и модели
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Марка     | Karcher |
      | Модель    | K 5.20  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Марка" равно "Karcher"
       И в деталях первого объявления "Модель" равно "K 5.20"

@customfield
  Сценарий: Фильтр по классу
   Когда я делаю поиск по следующим параметрам:
      | parameter | value   |
      | Класс     | бытовая |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Класс" равно "бытовая"

@customfield
  Сценарий: Фильтр по производительности
    Когда я делаю поиск по следующим параметрам:
      | parameter                 | min | max |
      | Производительность, л/час | 1   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Производительность, л/час" >= "1"
       И в деталях первого объявления "Производительность, л/час" <= "100"

@customfield
  Сценарий: Фильтр по давлению
    Когда я делаю поиск по следующим параметрам:
      | parameter     | min | max |
      | Давление, бар | 1   | 100 |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Максимальное давление, бар" >= "1"
       И в деталях первого объявления "Максимальное давление, бар" <= "100"

@customfield
  Сценарий: Фильтр по материалу корпуса насоса
    Когда я делаю поиск по следующим параметрам:
      | parameter               | value   |
      | Материал корпуса насоса | пластик |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Материал корпуса насоса" равно "пластик"

@customfield
  Сценарий: Фильтр по насадкам
    Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Насадки   | стандартная |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления "Насадки" содержит "стандартная"

@customfield
  Сценарий: Фильтр по использованию моющего средства
    Когда я делаю поиск по следующим параметрам:
      | parameter                      | value |
      | Использование моющего средства | x     |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях первого объявления присутствует "Использование моющего средства"

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
