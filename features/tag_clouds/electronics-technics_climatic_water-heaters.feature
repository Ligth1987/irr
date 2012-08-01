# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Климатическая техника -> Водонагреватели - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Климатическая техника -> Водонагреватели
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Климатическая техника -> Водонагреватели"
        * на странице категории присутствует секция "Водонагреватели"
        * я заполняю ссылки в секции "Водонагреватели" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Климатическая техника -> Водонагреватели |
        | category | Электроника и техника -> Климатическая техника -> Водонагреватели |
        | section  | Водонагреватели                                       |
        | field    | Марка                |