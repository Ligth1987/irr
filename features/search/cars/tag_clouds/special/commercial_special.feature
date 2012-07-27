# language:ru
# encoding: utf-8
Функционал: Авто и мото -> Коммерческий транспорт -> Спецтехника - типы техники

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Авто и мото -> Коммерческий транспорт -> Спецтехника"
        * на странице категории присутствует секция "Тип техники"

  Структура сценария: Облако тегов - тип техники
    Когда я перехожу по ссылке "<ссылка>"
       То открыта не страница 404
        * в поле "Тип техники" выбрано значение "<текст>"
        * на странице поиска загружен список результатов
        * на странице показано >= 1 объявлений

  Примеры: 
  | текст | ссылка |