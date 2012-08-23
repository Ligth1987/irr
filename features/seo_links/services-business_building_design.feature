# language:ru
# encoding: utf-8
Функционал: Услуги и деятельность -> Строительные и ремонтные услуги -> Проектирование и дизайн - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Услуги и деятельность -> Строительные и ремонтные услуги -> Проектирование и дизайн"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по архитектурному проектированию
    Когда я выбираю ссылку "Архитектурное проектирование" в секции "Быстрый поиск"
       То ссылка содержит "arhitekturnoe-proektirovanie"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                        |
          | архитектурное проектирование |

  Сценарий: Фильтр по согласованию перепланировки
    Когда я выбираю ссылку "Согласование перепланировки" в секции "Быстрый поиск"
       То ссылка содержит "soglasovanie-pereplanirovki"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                       |
          | согласование перепланировки |

  Сценарий: Фильтр по дизайн интерьера
    Когда я выбираю ссылку "Дизайн интерьера" в секции "Быстрый поиск"
       То ссылка содержит "dizain-interiera"
        * в поле "Вид услуги" выбраны следующие значения:
          | value            |
          | дизайн интерьера |

  Сценарий: Фильтр по озеленению
    Когда я выбираю ссылку "Озеленение и ландшафтный дизайн" в секции "Быстрый поиск"
       То ссылка содержит "ozelenenie"
        * в поле "Вид услуги" выбраны следующие значения:
          | value                           |
          | озеленение и ландшафтный дизайн |
