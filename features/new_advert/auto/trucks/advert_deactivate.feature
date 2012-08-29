# language:ru
# encoding: utf-8
Функционал: Деактивация объявления - Авто и Мото -> Коммерческий транспорт -> Средние и тяжелые грузовики

  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Деактивация объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю количество счетчика для категории "Авто и Мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я запоминаю количество объявлений пользователя

   Когда я подаю объявление в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" с параметрами:
          | parameter                | value            |
          | Регион                   | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт         | Усть-Алтан       |
          | Марка                    | DAF              |
          | Модель                   | FA65             |
          | Заголовок:               | Продам DEF FA65  |
          | Цена                     | 80000            |
          | Валюта                   | $                |
          | Пробег                   | 80000            |
          | Мощность двигателя, л.с. | 800              |
          | Новый или подержанный    | новый            |
          | Год выпуска              | 2008             |
          | Тип топлива              | дизель           |
          | Грузоподъемность:        | 80               |
          | Текст                    | Дизельный DAF 65 |
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
       То в ЛК ИП объявление с названием "Продам DEF FA65" присутствует в списке

    Когда в ЛК ИП я запоминаю количество счетчика для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
        * я запоминаю количество объявлений пользователя
        * я деактивирую данное объявление
       То статус созданного объявления равен "неактивно"
        * в ЛК ИП счетчик для категории "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики" не изменился
        * счетчик объявлений пользователя не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Средние и тяжелые грузовики"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | DAF             |
          | Модель    | FA65            |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * в списке объявлений отсутствует объявление "Продам DEF FA65"
