# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Фритюрницы - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Кухонная техника -> Фритюрницы
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Фритюрницы"
        * на странице категории присутствует секция "Фритюрницы"
        * я заполняю ссылки в секции "Фритюрницы" с параметрами:
        | название | значение                            |
        | feature  | Электроника и техника -> Кухонная техника -> Фритюрницы |
        | category | Электроника и техника -> Кухонная техника -> Фритюрницы |
        | section  | Фритюрницы                          |
        | field    | Марка                               |
