# language:ru
# encoding: utf-8
Функционал: Выделение объявления - Недвижимость -> Вторичный рынок (Москва)

  Контекст:
    Когда открыта страница для города "Москва"

@advert_submit
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок" с параметрами:
          | parameter                  | value                |
          | Улица                      | Интернациональная    |
          | Дом                        | 10                   |
          | Ближайшее метро            | Белорусская м.       |
          | До метро                   | 5                    |
          | Приватизированная квартира | x                    |
          | Комнат в квартире:         | 3                    |
          | Общая площадь:             | 300                  |
          | Этаж:                      | 3                    |
          | Этажей в здании:           | 8                    |
          | Цена:                      | 300000               |
          | Валюта                     | $                    |
          | Текст                      | Тест выделения объявления |
     * я перехожу на шаг 3
    То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То объявление с названием "3-комн.  квартира,   Интернациональная ул,   10,  3/8,  площадь:  общая 300 кв. м.,  приватизированная" присутствует в списке

    Когда в ЛК ИП я запоминаю значение поля "Выделение"
        * я выделяю данное объявление
       То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
        * в ЛК ИП данное объявление выделено

    Когда я открываю детали этого объявления
        * на странице объявления я открываю вкладку "На карте"
       То на странице объявления открыта карта

@after_index
  Сценарий: Проверка индексации
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Продажа -> Вторичный рынок"
        * я делаю поиск по следующим параметрам:
            | parameter | value           |
            | Район     | Поселок Внуково |
            | Поданные  | сегодня         |
        * на странице поиска загружен список результатов для недвижимости
        * в списке обычных объявлений присутствует объявление "3 комн, 300 м2, этаж 3/8"
