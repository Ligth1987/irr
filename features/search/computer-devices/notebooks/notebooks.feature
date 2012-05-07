# language:ru
@wip
Функционал: Компьютерная техника -> Ноутбуки -> Ноутбуки

  Контекст:
    Когда открыта страница для города "Москва"
        И на главной странице я перехожу в категорию "Компьютерная техника -> Ноутбуки -> Ноутбуки"

  Сценарий: Все результаты
   Когда я делаю поиск по следующим параметрам:
        | parameter      | min  | max    | value |
       И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении указан город "Москва"
       И сначала отображаются премиум-объявления
       И на странице показано <= 20 объявлений
       И в каждом объявлении отображается рисунок
       И в каждом объявлении не более 130 знаков

  Сценарий: Фильтр по типу предложения
   Когда я делаю поиск по следующим параметрам:
      | parameter       | value  |
      | Тип предложения | продам |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип предложения" равно "продам"

  Сценарий: Фильтр по состоянию
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Состояние | новый |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Состояние" равно "новый"

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

@bugs @bug34298
  Сценарий: Фильтр по марке
   Когда я делаю поиск по следующим параметрам:
      | parameter | value |
      | Марка     | Acer  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Марка" равно "Acer"

@bugs @bug34298
  Сценарий: Фильтр по диагонали экрана
   Когда я делаю поиск по следующим параметрам:
      | parameter        | min | max |
      | Диагональ экрана | 10  | 17  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Диагональ экрана" >= "10"
       И в деталях каждого объявления "Диагональ экрана" <= "17"

@bugs @bug34298
  Сценарий: Фильтр по типу процессора
   Когда я делаю поиск по следующим параметрам:
      | parameter      | value |
      | Тип процессора | AMD   |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип процессора" равно "AMD"

@bugs @bug34298
  Сценарий: Фильтр по объему памяти
   Когда я делаю поиск по следующим параметрам:
      | parameter    | value |
      | Объем памяти | 2048  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Объем памяти" равно "2048"

@bugs @bug34298
  Сценарий: Фильтр по размеру жесткого диска
   Когда я делаю поиск по следующим параметрам:
      | parameter             | min | max |
      | Размер жесткого диска | 10  | 200  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Размер жесткого диска" >= "10"
       И в деталях каждого объявления "Размер жесткого диска" <= "200"

@bugs @bug34298
  Сценарий: Фильтр по типу видеокарты
   Когда я делаю поиск по следующим параметрам:
      | parameter      | value     |
      | Тип видеокарты | встроенная |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Тип видеокарты" равно "встроенная"

@bugs @bug34298
  Сценарий: Фильтр по времени работы от батареи
   Когда я делаю поиск по следующим параметрам:
      | parameter               | min | max |
      | Время работы от батареи | 2   | 10  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Время работы от аккумулятора" >= "2"
       И в деталях каждого объявления "Время работы от аккумулятора" <= "10"

@bugs @bug34298
  Сценарий: Фильтр по беспроводным интерфейсам
   Когда я делаю поиск по следующим параметрам:
      | parameter               | value |
      | Беспроводные интерфейсы | WI-Fi |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Беспроводные интерфейсы" содержит "Wi-Fi"

@bugs @bug34298
  Сценарий: Фильтр по весу
   Когда я делаю поиск по следующим параметрам:
      | parameter | min | max |
      | Вес       | 1   | 10  |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в деталях каждого объявления "Вес" >= "1"
       И в деталях каждого объявления "Вес" <= "10"

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
       И в деталях каждого объявления отображается видео

  Сценарий: Фильтр по источнику
   Когда я делаю поиск по следующим параметрам:
      | parameter | value       |
      | Источник  | Cайт IRR.RU |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И в каждом объявлении источник равен "Сайт IRR.RU"

  Сценарий: Фильтр по времени подачи
   Когда я делаю поиск по следующим параметрам:
      | parameter | value    |
      | Поданные  | за месяц |
      И на странице поиска загружен список результатов

      То на странице показано >= 1 объявлений
       И каждое объявление подано не более 30 дней назад

@bugs @bug34183
  Сценарий: Фильтр по ключевому слову в заголовке объявления
    Когда я указываю искать только в заголовках объявления
        И я ищу "MacBook"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в заголовке каждого объявления содержится "MacBook"

  Сценарий: Фильтр по ключевому слову
    Когда я ищу "MacBook"
        И на странице поиска загружен список результатов

       То на странице показано >= 1 объявлений
        И в каждом объявлении содержится "MacBook"