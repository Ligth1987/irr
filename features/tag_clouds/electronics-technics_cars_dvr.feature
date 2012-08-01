# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Техника для авто -> Автомобильные видеорегистраторы - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Техника для авто -> Автомобильные видеорегистраторы
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Техника для авто -> Автомобильные видеорегистраторы"
        * на странице категории присутствует секция "Автомобильные видеорегистраторы"
        * я заполняю ссылки в секции "Автомобильные видеорегистраторы" с параметрами:
        | название | значение                                                  |
        | feature  | Электроника и техника -> Техника для авто -> Автомобильные видеорегистраторы |
        | category | Электроника и техника -> Техника для авто -> Автомобильные видеорегистраторы |
        | section  | Автомобильные видеорегистраторы                                             |
        | field    | Марка                |