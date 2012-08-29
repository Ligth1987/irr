# language:ru
# encoding: utf-8
Функционал: Подача объявления с видео - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Подача объявления с видео
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю количество счетчика для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я запоминаю количество объявлений пользователя

    Когда я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value             |
          | Улица                      | Интернациональная |
          | Дом                        | 10                |
          | Ближайшее метро            | Белорусская м.    |
          | До метро                   | 5                 |
          | Приватизированная квартира | x                 |
          | Комнат в квартире:         | 6                 |
          | Этажей в здании:           | 6                 |
          | Общая площадь:             | 600               |
          | Этаж:                      | 6                 |
          | Цена                       | 600000            |
          | Валюта                     | $                 |
          | Текст                      | Продаю с фото     |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
   Когда открыта страница для региона "Москва"
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
      То в ЛК ИП объявление с названием "6-комн.  квартира,   Интернациональная ул,   10,  6/6,  площадь:  общая 600 кв. м.,  приватизированная" присутствует в списке
       * у объявления указан город "Москва"
       * у объявления указана цена "600000" в долларах
   Когда я открываю детали этого объявления
       * в деталях объявления отображается загруженное видео
   Когда на странице объявления я открываю вкладку "На карте"
      То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Район     | Поселок Внуково |
          | Поданные  | вчера и сегодня         |
       * на странице поиска загружен список результатов для недвижимости
       * в списке обычных объявлений присутствует объявление "6 комн, 600 м2, этаж 6/6"
