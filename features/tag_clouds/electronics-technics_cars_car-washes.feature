# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Автомойки - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Техника для авто -> Автомойки
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Автомойки"
        * на странице категории присутствует секция "Автомойка"
        * я заполняю ссылки в секции "Автомойка" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Техника для авто -> Автомойки |
        | category | Электроника и техника -> Техника для авто -> Автомойки |
        | section  | Автомойка                                             |
        | field    | Марка                |
