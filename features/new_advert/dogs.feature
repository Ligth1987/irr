# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Собаки - подача объявления

  Контекст:
    Когда открыта страница для региона "Россия"

@new_advert
  Сценарий: Подача объявления неавторизированным пользователем
   Когда я выхожу из текущего пользователя
       * я перехожу к подаче объявления
       * я ввожу логин и пароль роли "Интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Отдаю щенков (поднятие)                      |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 1000                                         |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков спаниэля                        |
     * я перехожу на шаг 3
     * открыт список объявлений пользователя

  То объявление с названием "Отдаю щенков (поднятие)" присутствует в списке
   * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
   * у объявления указан город "Усть-Алтан"
   * у объявления указана цена "1000" в долларах
   * у объявления указана цена "789" в евро
   * у объявления указана цена "31380" в рублях

  Когда я открываю детали этого объявления 
     То на вкладке "Все" "Тип предложения" равно "даром"
      * на вкладке "Все" "Порода" равно "Английский кокер-спаниель"
      * на вкладке "Все" "Пол" равно "мальчик"
      * на вкладке "Все" "Возраст" равно "5"
      * на вкладке "Все" "Лет/мес." равно "мес."

@new_advert
  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Интернет-партнер"
       * я перехожу к подаче объявления
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Отдаю щенков                                 |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
     * я перехожу на шаг 3
     * открыт список объявлений пользователя
     * я перехожу в список моих объявлений
     * открыт список объявлений пользователя
     * объявление с названием "Отдаю щенков" присутствует в списке
     * я редактирую данное объявление
     * я ввожу следующие данные на шаге 2:
      | parameter          | value                              |
      | Тип предложения    | продам                             |
      | Заголовок          | Продам красивых щенков (выделение) |
      | Порода             | Американский бульдог               |
      | Пол                | девочка                            |
      | Возраст            | 2 ~ года/лет                       |
      | Цена:              | 200                                |
      | Валюта             | €                                  |
      | Текст              | Продам щенков бульдога             |
     * я сохраняю редактируемое объявление
     * открыт список объявлений пользователя

  То объявление с названием "Продам красивых щенков (выделение)" присутствует в списке
   * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
   * у объявления указан город "Усть-Алтан"
   * у объявления указана цена "253" в долларах
   * у объявления указана цена "200" в евро
   * у объявления указана цена "7953" в рублях

  Когда я открываю детали этого объявления
      * загружены параметры объявления для категории "Животные и растения -> Животные -> Собаки"
     То на вкладке "Все" "Тип предложения" равно "продам"
      * на вкладке "Все" "Порода" равно "Американский бульдог"
      * на вкладке "Все" "Пол" равно "девочка"
      * на вкладке "Все" "Возраст" равно "2"
      * на вкладке "Все" "Лет/мес." равно "года/лет"

@new_advert
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Интернет-партнер"
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * в ЛК ИП я запоминаю значение поля "Поднятие"
       * объявление с названием "Отдаю щенков (поднятие)" присутствует в списке
       * я поднимаю данное объявление
      То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу

@after_index
  Сценарий: Проверка поднятия
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * первым в списке обычных объявлений первым идёт объявление "Отдаю щенков (поднятие)"

@new_advert
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Интернет-партнер"
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * в ЛК ИП я запоминаю значение поля "Выделение"
       * объявление с названием "Продам красивых щенков (выделение)" присутствует в списке
       * я выделяю данное объявление
      То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
       * в ЛК ИП данное объявление выделено

@after_index
  Сценарий: Проверка выделения
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений объявление "Продам красивых щенков (выделение)" выделено

@new_advert
  Сценарий: Смена статуса на премиум
   Когда я вхожу под пользователем с ролью "Интернет-партнер"
       * я перехожу к подаче объявления
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Отдаю щенков (премиум)                       |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
     * я перехожу на шаг 3
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * в ЛК ИП я запоминаю значение поля "Премиум"
       * объявление с названием "Отдаю щенков (премиум)" присутствует в списке
       * я делаю данное объявление премиумом
      То в ЛК ИП значение поля "Премиум" уменьшилось на единицу

@after_index
  Сценарий: Проверка смена статуса на премиум
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "Отдаю щенков (премиум)"
