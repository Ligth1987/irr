# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Кухонная техника -> Электрочайники - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Электроника и техника -> Кухонная техника -> Электрочайники
      Когда на главной странице я перехожу в категорию "Электроника и техника -> Кухонная техника -> Электрочайники"
        * на странице категории присутствует секция "Электрочайники"
        * я заполняю ссылки в секции "Электрочайники" с параметрами:
        | название | значение                                |
        | feature  | Электроника и техника -> Кухонная техника -> Электрочайники |
        | category | Электроника и техника -> Кухонная техника -> Электрочайники |
        | section  | Электрочайники                          |
        | field    | Марка                                   |
