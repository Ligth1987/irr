# language:ru
# encoding: utf-8
Функционал: Товары для детей -> Детская обувь - seo-линки

  Контекст:
    Когда открыта страница для региона "Россия"
        * на главной странице я перехожу в категорию "Товары для детей -> Детская обувь"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по детским ботинкам
    Когда я выбираю ссылку "Детские ботинки" в секции "Быстрый поиск"
       То ссылка содержит "boots"
        * значение в поле "Ключевые слова" равно "ботинки"

  Сценарий: Фильтр по детским кроссовкам
    Когда я выбираю ссылку "Детские кроссовки" в секции "Быстрый поиск"
       То ссылка содержит "jogging-shoes"
        * значение в поле "Ключевые слова" равно "кроссовки"

  Сценарий: Фильтр по сандалиям
    Когда я выбираю ссылку "Сандалии" в секции "Быстрый поиск"
       То ссылка содержит "sandals"
        * значение в поле "Ключевые слова" равно "сандали"

  Сценарий: Фильтр по детским сапогам
    Когда я выбираю ссылку "Детские сапоги" в секции "Быстрый поиск"
       То ссылка содержит "high-boots"
        * значение в поле "Ключевые слова" равно "сапоги"

  Сценарий: Фильтр по туфлям
    Когда я выбираю ссылку "Туфли" в секции "Быстрый поиск"
       То ссылка содержит "shoe"
        * значение в поле "Ключевые слова" равно "туфли"

  Сценарий: Фильтр по детской зимней обуви
    Когда я выбираю ссылку "Детская зимняя обувь" в секции "Быстрый поиск"
       То ссылка содержит "winter"
        * значение в поле "Ключевые слова" равно "зимний"
        * в поле "Тип предложения" выбраны следующие значения:
          | value  |
          | продам |

  Сценарий: Фильтр по детской летняя обуви
    Когда я выбираю ссылку "Детская летняя обувь" в секции "Быстрый поиск"
       То ссылка содержит "summer"
        * значение в поле "Ключевые слова" равно "летний"
