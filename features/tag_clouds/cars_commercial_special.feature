# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Спецтехника - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Коммерческий транспорт -> Спецтехника
      Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Спецтехника"
        * на странице категории присутствует секция "Тип техники"
        * я заполняю ссылки в секции "Тип техники" с параметрами:
        | название | значение                                             |
        | feature  | Авто и мото -> Коммерческий транспорт -> Спецтехника |
        | category | Авто и мото -> Коммерческий транспорт -> Спецтехника |
        | section  | Тип техники                                          |
        | field    | Тип техники                                          |
