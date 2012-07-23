# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Мототехника и Автодома -> Мотоциклы и мопеды - марки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Мототехника и Автодома -> Мотоциклы и мопеды"
        * на странице категории присутствует секция "марки"

  Структура сценария: Облако тегов марок
    Когда я перехожу по ссылке "<ссылка>"
       То открыта не страница 404
        * в поле "Марка" выбрано значение "<текст>"
        * на странице поиска загружен список результатов
        * на странице показано >= 1 объявлений

  Примеры: 
  | текст | ссылка |