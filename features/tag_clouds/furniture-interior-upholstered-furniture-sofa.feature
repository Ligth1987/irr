# language:ru
# encoding: utf-8
Функционал: Мебель, интерьер, обиход -> Мягкая мебель -> Диваны - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Мебель, интерьер, обиход -> Мягкая мебель -> Диваны
      Когда на главной странице я перехожу в категорию "Мебель, интерьер, обиход -> Мягкая мебель -> Диваны"
        * на странице категории присутствует секция "Диваны - механизм раскладывания"
        * я заполняю ссылки в секции "Диваны - механизм раскладывания" с параметрами:
        | название | значение                                            |
        | feature  | Мебель, интерьер, обиход -> Мягкая мебель -> Диваны |
        | category | Мебель, интерьер, обиход -> Мягкая мебель -> Диваны |
        | section  | Диваны - механизм раскладывания                     |
        | field    | Механизм раскладывания                              |