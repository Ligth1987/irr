# language:ru
# encoding: utf-8
Функционал: Товары для детей -> Товары для малышей -> Ходунки, прыгунки, шезлонги - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Товары для детей -> Товары для малышей -> Ходунки, прыгунки, шезлонги
      Когда на главной странице я перехожу в категорию "Товары для детей -> Товары для малышей -> Ходунки, прыгунки, шезлонги"
        * на странице категории присутствует секция "Тип товара"
        * я заполняю ссылки в секции "Тип товара" с параметрами:
        | название | значение                                               |
        | feature  | Товары для детей -> Товары для малышей -> Ходунки, прыгунки, шезлонги |
        | category | Товары для детей -> Товары для малышей -> Ходунки, прыгунки, шезлонги |
        | section  | Тип товара                                             |
        | field    | Тип                                                    |
