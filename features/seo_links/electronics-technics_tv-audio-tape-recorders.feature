# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Аудио, Видео -> Магнитолы - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Электроника и техника -> Аудио, Видео -> Магнитолы"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по CD-магнитолам
    Когда я выбираю ссылку "CD-магнитолы" в секции "Быстрый поиск"
       То ссылка содержит "cd"
        * в поле "Тип магнитолы" выбраны следующие значения:
          | value |
          | CD    |

  Сценарий: Фильтр по MP3-магнитолам
    Когда я выбираю ссылку "MP3-магнитолы" в секции "Быстрый поиск"
       То ссылка содержит "mp3"
        * в поле "Тип магнитолы" выбраны следующие значения:
          | value |
          | MP3   |

  Сценарий: Фильтр по DVD-проигрывателям
    Когда я выбираю ссылку "DVD-магнитолы" в секции "Быстрый поиск"
       То ссылка содержит "dvd"
        * в поле "Тип магнитолы" выбраны следующие значения:
          | value |
          | DVD   |

  Сценарий: Фильтр по кассетным проигрывателям
    Когда я выбираю ссылку "Каccетные магнитолы" в секции "Быстрый поиск"
       То ссылка содержит "tape"
        * в поле "Тип магнитолы" выбраны следующие значения:
          | value     |
          | кассетная |
