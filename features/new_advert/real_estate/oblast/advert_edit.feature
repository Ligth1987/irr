# language:ru
# encoding: utf-8
Функционал: Редактирование объявлений - Недвижимость -> Аренда (Область)

  Контекст:
    Когда открыта страница для города "Пушкино"

@advert_submit
  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Недвижимость -> Квартиры. аренда"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Недвижимость -> Квартиры. аренда" с параметрами:
          | parameter          | value                          |
          | Регион             | Московская обл                 |
          | Населённый пункт   | Пушкино                        |
          | Улица              | Строительная                   |
          | Шоссе:             | Ярославское                    |
          | Удалённость        | 5                              |
          | Комнат в квартире: | 1                              |
          | Общая площадь:     | 100                            |
          | Этаж:              | 1                              |
          | Цена               | 100                            |
          | Валюта             | $                              |
          | Текст              | Тест редактирования объявления |
        * я перехожу на шаг 3
        * в ЛК ИП открыт список объявлений пользователя
        * в ЛК ИП объявление с названием "1-комн.  квартира,  Строительная ул, 1, площадь:  общая 100 кв. м." присутствует в списке
        * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" увеличился на 1
        * счетчик объявлений пользователя увеличился на 1
        * счетчик объявлений ИП во всех разделах увеличился на 1
        * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1
        * я запоминаю количество объявлений пользователя
        * я запоминаю количество активных объявлений ИП
        * в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"

    Когда я редактирую данное объявление
        * я ввожу следующие данные на шаге 2 (старая подача):
          | parameter          | value                                        |
          | Комнат в квартире: | 2                                            |
          | Общая площадь:     | 200                                          |
          | Этаж:              | 2                                            |
          | Цена               | 200                                          |
          | Валюта             | €                                            |
          | Текст              | Тест редактирования объявления - новый текст |
        * я сохраняю редактируемое объявление
       То в ЛК ИП открыт список объявлений пользователя
        * в ЛК ИП объявление с названием "2-комн.  квартира,  Строительная ул, 2, площадь:  общая 200 кв. м." присутствует в списке
        * в ЛК ИП счетчик для категории "Недвижимость -> Квартиры. аренда" не изменился
        * счетчик объявлений пользователя не изменился
        * счетчик объявлений ИП во всех разделах не изменился
        * счетчик количества размещенных объявлений в ЛК ИП не изменился
        * в ЛК ИП объявление с названием "2-комн.  квартира,  Строительная ул, 2, площадь:  общая 200 кв. м." присутствует в списке
    Когда я открываю детали этого объявления
        * счетчик количества активных объявлений продавца не изменился

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "2-комн.  квартира,  Строительная ул, 2, площадь:  общая 200 кв. м." присутствует в списке
        * у объявления указан регион "Московская"
        * у объявления указан город "Пушкино"
        * у объявления указана цена "200" в евро

    Когда я открываю детали этого объявления
       То на вкладке "Все" "Комнат в квартире" равно "2"
        * на вкладке "Все" "Общая площадь" равно "200 кв. м"
        * на вкладке "Все" "Этаж" равно "2"

@after_index
  Сценарий: Проверка индексации
   Когда открыта страница для региона "Пушкино"
       * на главной странице я перехожу в категорию "Недвижимость -> Квартиры. аренда"
       * я делаю поиск по следующим параметрам:
          | parameter     | value          |
          | Поданные      | вчера и сегодня        |
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "2 комн, 200 м2, этаж 2"
