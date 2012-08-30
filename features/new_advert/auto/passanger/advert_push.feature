# language:ru
# encoding: utf-8
Функционал: Поднятие объявления - Авто и Мото -> Легковые автомобили -> Автомобили с пробегом


  Контекст:
    Когда открыта страница для региона "Усть-Алтан"

@advert_submit
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
      То в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я запоминаю количество объявлений пользователя
       * я запоминаю количество активных объявлений ИП

   Когда я подаю объявление в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" с параметрами:
          | parameter        | value          |
          | Регион           | Иркутская обл Усть-Ордынский Бурятский округ |
          | Населённый пункт | Усть-Алтан     |
          | Марка            | Audi           |
          | Модель           | A7             |
          | Цена             | 70000          |
          | Валюта           | $              |
          | Год выпуска      | 2007           |
          | Тип кузова       | кабриолет      |
          | Тип трансмиссии  | автоматическая |
          | Текст            | Тест поднятия объявления |
       * я перехожу на шаг 3
      То в ЛК ИП открыт список объявлений пользователя
   Когда открыта страница для региона "Усть-Алтан"
       * я перехожу в список моих объявлений
      То в ЛК ИП объявление с названием "Audi A7,  кабриолет,  2007 г. в.,  автоматическая" присутствует в списке
       * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" увеличился на 1
       * счетчик объявлений пользователя увеличился на 1
       * счетчик объявлений во всех разделах увеличился на 1
       * счетчик количества размещенных объявлений в ЛК ИП увеличился на 1

@advert_submit
  Сценарий: Проверка деталей поданного объявления
    Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        * я перехожу в список моих объявлений
        * в ЛК ИП я выбираю пакет "NEW Авто | ВСЕ РЕГИОНЫ"
       То в ЛК ИП объявление с названием "Audi A7,  кабриолет,  2007 г. в.,  автоматическая" присутствует в списке

    Когда в ЛК ИП я запоминаю значение счетчика для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
        * я запоминаю количество объявлений пользователя
        * в ЛК ИП я запоминаю значение поля "Поднятие"
        * я поднимаю данное объявление
       То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу
        * в ЛК ИП счетчик для категории "Авто и мото -> Легковые автомобили -> Автомобили с пробегом" не изменился
        * счетчик объявлений пользователя не изменился

@after_index
  Сценарий: Проверка индексации
   Когда на главной странице я перехожу в категорию "Авто и мото -> Легковые автомобили -> Автомобили с пробегом"
       * я делаю поиск по следующим параметрам:
          | parameter | value           |
          | Марка     | Audi            |
          | Модель    | A7              |
          | Поданные  | вчера и сегодня |
       * на странице поиска загружен список результатов
       * первым в списке обычных объявлений первым идёт объявление "Audi A7,  кабриолет,  2007 г. в.,  автоматическая"
