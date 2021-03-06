# language:ru
# encoding: utf-8
Функционал: Электроника и техника -> Ремонт - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Электроника и техника -> Ремонт"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по ремонту телевизоров
    Когда я выбираю ссылку "Ремонт телевизоров" в секции "Быстрый поиск"
       То ссылка содержит "tv"

  Сценарий: Фильтр по ремонту холодильников
    Когда я выбираю ссылку "Ремонт холодильников" в секции "Быстрый поиск"
       То ссылка содержит "refrigerator"

  Сценарий: Фильтр по ремонту стиральных машин
    Когда я выбираю ссылку "Ремонт стиральных машин" в секции "Быстрый поиск"
       То ссылка содержит "washing"

  Сценарий: Фильтр по ремонту кондиционеров
    Когда я выбираю ссылку "Ремонт кондиционеров" в секции "Быстрый поиск"
       То ссылка содержит "air-conditioner"

  Сценарий: Фильтр по ремонту пылесосов
    Когда я выбираю ссылку "Ремонт пылесосов" в секции "Быстрый поиск"
       То ссылка содержит "vacuum"
