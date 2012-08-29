# language:ru
# encoding: utf-8
Функционал: Удаление объявления - Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Удаление объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю количество счетчика для категории "Авто и Мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я запоминаю количество объявлений пользователя

   Когда я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value              |
          | Регион                   | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт         | Усть-Алтан         |
          | Марка                    | DAF                |
          | Модель                   | FA95               |
          | Заголовок:               | Продаю дизель FA95 |
          | Цена                     | 90000              |
          | Валюта                   | $                  |
          | Пробег:                  | 90000              |
          | Мощность двигателя, л.с.:| 900                |
          | Новый или подержанный    | новый              |
          | Год выпуска              | 2009               |
          | Тип топлива              | дизель             |
          | Грузоподъемность:        | 90                 |
          | Текст                    | Продаю DAF FA95    |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
   Когда открыта страница для региона "Усть-Алтан"
       * я перехожу в список моих объявлений
       * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Продаю дизель FA95" присутствует в списке

    Когда в ЛК ИП я запоминаю количество счетчика для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
        * я запоминаю количество объявлений пользователя
        * я удаляю данное объявление
       То в ЛК ИП объявление с названием "Продаю дизель FA95" отсутствует в списке
        * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" уменьшился на 1
        * счетчик объявлений пользователя уменьшился на 1

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | DAF             |
          | Модель    | FA95            |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке объявлений отсутствует объявление "Продаю дизель FA95"
