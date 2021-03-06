# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Автобусы - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Авто и мото -> Коммерческий транспорт -> Автобусы
      Когда на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Автобусы"
        * на странице категории присутствует секция "Тип автобуса"
        * я заполняю ссылки в секции "Тип автобуса" с параметрами:
        | название | значение                                          |
        | feature  | Авто и мото -> Коммерческий транспорт -> Автобусы |
        | category | Авто и мото -> Коммерческий транспорт -> Автобусы |
        | section  | Тип автобуса                                      |
        | field    | Тип автобуса                                      |
