# language:ru
# encoding: utf-8
Функционал: Выделение объявления - Недвижимость -> Аренда (Область)

  Контекст:
    Когда открыта страница для региона "Россия"

@advert_submit
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Недвижимость -> Квартиры. Аренда" с параметрами:
          | parameter          | value                     |
          | Регион             | Московская обл            |
          | Населённый пункт   | Пушкино                   |
          | Улица              | Строительная              |
          | Шоссе:             | Ярославское               |
          | Комнат в квартире: | 3                         |
          | Общая площадь:     | 300                       |
          | Этаж:              | 3                         |
          | Цена:              | 300000                    |
          | Валюта             | $                         |
          | Текст              | Тест выделения объявления |
       * я перехожу на шаг 3
      То открыт список объявлений пользователя

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW [TEST] Недвижимость"
       То объявление с названием "3-комн.  квартира,   Строительная ул,  3,  площадь:  общая 300 кв. м." присутствует в списке
        * у объявления указан регион "Московская"
        * у объявления указан город "Пушкино"
        * у объявления указана цена "300" в долларах
        * в ЛК ИП я запоминаю значение поля "Выделение"
        * я выделяю данное объявление
       То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
        * в ЛК ИП данное объявление выделено

@after_index
  Сценарий: Проверка индексации объявления - поиск по району
    Когда на главной странице я перехожу в категорию "Недвижимость -> Квартиры. Аренда"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "3 комн, 300 м2, этаж 3"
       * в списке обычных объявлений объявление "3 комн, 300 м2, этаж 3" выделено
