# language:ru
# encoding: utf-8
Функционал: Мебель, интерьер, обиход -> Предметы обихода -> Матрасы - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Мебель, интерьер, обиход -> Предметы обихода -> Матрасы
      Когда на главной странице я перехожу в категорию "Мебель, интерьер, обиход -> Предметы обихода -> Матрасы"
        * на странице категории присутствует секция "Матрасы"
        * я заполняю ссылки в секции "Матрасы" с параметрами:
        | название | значение                                                |
        | feature  | Мебель, интерьер, обиход -> Предметы обихода -> Матрасы |
        | category | Мебель, интерьер, обиход -> Предметы обихода -> Матрасы |
        | section  | Матрасы                                                 |
        | field    | Марка                                                   |
