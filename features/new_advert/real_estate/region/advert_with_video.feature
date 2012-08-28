# language:ru
# encoding: utf-8
Функционал: Подача объявления с видео - Недвижимость -> Новостройки (Регион)

  Контекст:
    Когда открыта страница для города "Усть-Алтан"

@advert_submit
  Сценарий: Подача объявления с видео
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки" с параметрами:
          | parameter          | value                                        |
          | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт   | Усть-Алтан                                   |
          | Комнат в квартире: | 6                                            |
          | Общая площадь:     | 600                                          |
          | Этаж:              | 6                                            |
          | Цена              | 600000                                       |
          | Валюта             | $                                            |
          | Текст              | Продаю с видео               |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "6-комн. кв.,  6,  площадь:  общая 600 кв. м." присутствует в списке
        * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
        * у объявления указан город "Усть-Алтан"
        * у объявления указана цена "600000" в долларах
    Когда я открываю детали этого объявления 
        * в деталях объявления отображается загруженное видео

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Новостройки"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "6 комн, 600 м2, этаж 6"
