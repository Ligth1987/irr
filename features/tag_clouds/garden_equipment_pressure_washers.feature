# language:ru
# encoding: utf-8
Функционал: Все для дачи -> Садовая техника -> Мойки высокого давления - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Все для дачи -> Садовая техника -> Мойки высокого давления
      Когда на главной странице я перехожу в категорию "Все для дачи -> Садовая техника -> Мойки высокого давления"
        * на странице категории присутствует секция "Мойки высокого давления"
        * я заполняю ссылки в секции "Мойки высокого давления" с параметрами:
        | название | значение                                                   |
        | feature  | Все для дачи -> Садовая техника -> Мойки высокого давления |
        | category | Все для дачи -> Садовая техника -> Мойки высокого давления |
        | section  | Мойки высокого давления                                    |
        | field    | Тип                                                        |
