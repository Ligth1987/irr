# language:ru
# encoding: utf-8
Функционал: Животные и растения -> Животные -> Собаки - подача объявления

  Контекст:
    Когда открыта страница для региона "Россия"

@new_advert
  Сценарий: Подача объявления неавторизированным пользователем
   Когда я выхожу из текущего пользователя
       * я перехожу к подаче объявления
       * я ввожу логин и пароль роли "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки"
       * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест подачи объявления                       |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 1000                                         |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков спаниэля                        |
     * я перехожу на шаг 3
     * открыт список объявлений пользователя

    То объявление с названием "Тест подачи объявления" присутствует в списке
     * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
     * у объявления указан город "Усть-Алтан"
     * у объявления указана цена "1000" в долларах
    #  * у объявления указана цена "742" в евро
    #  * у объявления указана цена "29025" в рублях

    Когда я открываю детали этого объявления 
       То на вкладке "Все" "Тип предложения" равно "даром"
        * на вкладке "Все" "Порода" равно "Английский кокер-спаниель"
        * на вкладке "Все" "Пол" равно "мальчик"
        * на вкладке "Все" "Возраст" равно "5"
        * на вкладке "Все" "Лет/мес." равно "мес."

@after_index
  Сценарий: Проверка создания объявления
   Когда открыта страница для региона "Усть-Алтан"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест подачи объявления"

@new_advert
  Сценарий: Редактирование объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест редактирования                          |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
     * я перехожу на шаг 3
     * открыт список объявлений пользователя
     * объявление с названием "Тест редактирования" присутствует в списке
     * я редактирую данное объявление
     * я ввожу следующие данные на шаге 2:
      | parameter          | value                                        |
      | Тип предложения    | продам                                       |
      | Заголовок          | Тест редактирования - новый заголовок        |
      | Порода             | Американский бульдог                         |
      | Пол                | девочка                                      |
      | Возраст            | 2 ~ года/лет                                 |
      | Цена:              | 200                                          |
      | Валюта             | €                                            |
      | Текст              | Продам щенков бульдога                       |
     * я сохраняю редактируемое объявление
     * открыт список объявлений пользователя

    То объявление с названием "Тест редактирования - новый заголовок" присутствует в списке
     * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
     * у объявления указан город "Усть-Алтан"
   # * у объявления указана цена "269" в долларах
     * у объявления указана цена "200" в евро
   # * у объявления указана цена "7821" в рублях

    Когда я открываю детали этого объявления
        * загружены параметры объявления для категории "Животные и растения -> Животные -> Собаки"
       То на вкладке "Все" "Тип предложения" равно "продам"
        * на вкладке "Все" "Порода" равно "Американский бульдог"
        * на вкладке "Все" "Пол" равно "девочка"
        * на вкладке "Все" "Возраст" равно "2"
        * на вкладке "Все" "Лет/мес." равно "года/лет"

@after_index
  Сценарий: Проверка редактирования объявления
   Когда открыта страница для региона "Усть-Алтан"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест редактирования - новый заголовок"

@new_advert
  Сценарий: Выделение объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест выделения объявления                    |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * объявление с названием "Тест выделения объявления" присутствует в списке
       * в ЛК ИП я запоминаю значение поля "Выделение"
       * я выделяю данное объявление
      То в ЛК ИП значение поля "Выделение" уменьшилось на единицу
       * в ЛК ИП данное объявление выделено

@after_index
  Сценарий: Проверка выделения
   Когда открыта страница для региона "Усть-Алтан"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест выделения объявления"
       * в списке обычных объявлений объявление "Тест выделения объявления" выделено

@new_advert
  Сценарий: Создание премиума через БО
   Когда я перехожу на БО
       * на БО я перехожу в категорию "Объявления -> Создать премиум"
       * на странице создания нового премиума в БО я выбираю категорию "Животные и растения -> Животные -> Собаки"
       * при создании премиума я ввожу следующие данные:
      | parameter           | value                     |
      | Регион              | Усть-Алтан                |
      | Заголовок           | Тест создания премиума    |
      | Текст объявления    | Отдам щенков              |
      | Тип предложения     | даром                     |
      | Цена                | 100                       |
      | Валюта              | $                         |
      | Порода              | Английский кокер-спаниель |
      | Пол                 | мальчик                   |
      | Возраст             | 5                         |
      | age_name            | мес.                      |
       * при создании премиума я указываю владельца пользователя с ролью "Доверенный интернет-партнер"
       * при создании премиума я выбираю "на 14 дней"
       * я сохраняю введенный примиум
      То на БО показано диалоговое окно "Запись добавлена"

   Когда я закрываю диалоговое окно
       * открыта страница для региона "Россия"
       * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я перехожу в список моих объявлений
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * в ЛК ИП я выбираю регион "Все регионы"
       * открыт список объявлений пользователя
      То объявление с названием "Тест создания премиума" присутствует в списке

@after_index
  Сценарий: Проверка создания премиума
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "Тест создания премиума"

@new_advert
  Сценарий: Смена статуса на премиум
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест изменения статуса на премиум            |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * в ЛК ИП я запоминаю значение поля "Премиум"
       * объявление с названием "Тест изменения статуса на премиум" присутствует в списке
       * я делаю данное объявление премиумом
      То в ЛК ИП значение поля "Премиум" уменьшилось на единицу

@after_index
  Сценарий: Проверка смена статуса на премиум
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке премиумов присутствует объявление "Тест изменения статуса на премиум"

@new_advert
  Сценарий: Подача объявления с фотографией
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест подачи объявления с фото                |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 1000                                         |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
       * я загружаю фото на шаге 2
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
    То объявление с названием "Тест подачи объявления с фото" присутствует в списке
     * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
     * у объявления указан город "Усть-Алтан"
     * у объявления указана цена "1000" в долларах
   # * у объявления указана цена "742" в евро
   # * у объявления указана цена "29025" в рублях
     * у объявления отображается загруженная фотография

    Когда я открываю детали этого объявления 
       То на вкладке "Все" "Тип предложения" равно "даром"
        * на вкладке "Все" "Порода" равно "Английский кокер-спаниель"
        * на вкладке "Все" "Пол" равно "мальчик"
        * на вкладке "Все" "Возраст" равно "5"
        * на вкладке "Все" "Лет/мес." равно "мес."
        * в деталях объявления отображается загруженная фотография

@after_index
  Сценарий: Проверка подачи объявления с фото
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест подачи объявления с фото"
       * у объявления "Тест подачи объявления с фото" отображается загруженная фотография

@new_advert
  Сценарий: Подача объявления с видео
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест подачи объявления с видео               |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 1000                                         |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
       * я загружаю видео на шаге 2
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
    То объявление с названием "Тест подачи объявления с видео" присутствует в списке
     * у объявления указан регион "Иркутская обл Усть-Ордынский Бурятский"
     * у объявления указан город "Усть-Алтан"
     * у объявления указана цена "1000" в долларах
   # * у объявления указана цена "742" в евро
   # * у объявления указана цена "29025" в рублях

    Когда я открываю детали этого объявления 
       То на вкладке "Все" "Тип предложения" равно "даром"
        * на вкладке "Все" "Порода" равно "Английский кокер-спаниель"
        * на вкладке "Все" "Пол" равно "мальчик"
        * на вкладке "Все" "Возраст" равно "5"
        * на вкладке "Все" "Лет/мес." равно "мес."
        * в деталях объявления отображается загруженное видео

@after_index
  Сценарий: Проверка подачи объявления с видео
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест подачи объявления с видео"

@new_advert
  Сценарий: Поднятие объявления
   Когда я вхожу под пользователем с ролью "Доверенный интернет-партнер"
       * я подаю объявление в категорию "Животные и растения -> Животные -> Собаки" с параметрами:
      | parameter          | value                                        |
      | Регион             | Иркутская обл Усть-Ордынский Бурятский округ |
      | Населённый пункт   | Усть-Алтан                                   |
      | Тип предложения    | даром                                        |
      | Заголовок          | Тест поднятия объявления                     |
      | Порода             | Английский кокер-спаниель                    |
      | Пол                | мальчик                                      |
      | Возраст            | 5 ~ мес.                                     |
      | Цена:              | 100                                          |
      | Валюта             | $                                            |
      | Текст              | Отдам щенков                                 |
       * я перехожу на шаг 3
       * открыт список объявлений пользователя
       * в ЛК ИП я выбираю пакет "NEW Животные и растения | ВСЕ РЕГИОНЫ"
       * объявление с названием "Тест поднятия объявления" присутствует в списке
       * в ЛК ИП я запоминаю значение поля "Поднятие"
       * я поднимаю данное объявление
      То в ЛК ИП значение поля "Поднятие" уменьшилось на единицу

@after_index
  Сценарий: Проверка поднятия
   Когда открыта страница для региона "Усть-Алтан"
       * на главной странице я перехожу в категорию "Животные и растения -> Животные -> Собаки"
       * на странице поиска загружен список результатов
       * в списке обычных объявлений присутствует объявление "Тест поднятия объявления"
       * первым в списке обычных объявлений первым идёт объявление "Тест поднятия объявления"
