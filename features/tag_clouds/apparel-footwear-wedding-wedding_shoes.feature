# language:ru
# encoding: utf-8
Функционал: Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебная обувь - заполнение

  Контекст:
    Когда открыта страница для региона "Россия"

  Сценарий: Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебная обувь
      Когда на главной странице я перехожу в категорию "Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебная обувь"
        * на странице категории присутствует секция "Вид обуви"
        * я заполняю ссылки в секции "Вид обуви" с параметрами:
        | название | значение                                                        |
        | feature  | Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебная обувь |
        | category | Одежда, обувь, аксессуары -> Всё для свадьбы -> Свадебная обувь |
        | section  | Вид обуви                                                       |
        | field    | Вид обуви                                                       |
