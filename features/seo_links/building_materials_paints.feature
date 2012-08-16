# language:ru
# encoding: utf-8
Функционал: Строительство и ремонт -> Материалы -> Лакокрасочные - seo-линки

  Контекст:
    Когда открыта страница для города "Москва"
        * на главной странице я перехожу в категорию "Строительство и ремонт -> Материалы -> Лакокрасочные"
        * на странице категории присутствует секция "Быстрый поиск"

  Сценарий: Фильтр по антисептикам
    Когда я выбираю ссылку "Антисептики, морилки, пропитки" в секции "Быстрый поиск"
       То ссылка содержит "antiseptics-stains-soaking"
        * в поле "Тип материала" выбраны следующие значения:
          | value                          |
          | антисептики, морилки, пропитки |

  Сценарий: Фильтр по грунтовке
    Когда я выбираю ссылку "Грунтовки" в секции "Быстрый поиск"
       То ссылка содержит "primers"
        * в поле "Тип материала" выбраны следующие значения:
          | value     |
          | грунтовки |

  Сценарий: Фильтр по клею
    Когда я выбираю ссылку "Клей" в секции "Быстрый поиск"
       То ссылка содержит "glue"
        * в поле "Тип материала" выбраны следующие значения:
          | value |
          | клей  |

  Сценарий: Фильтр по краскам
    Когда я выбираю ссылку "Краски" в секции "Быстрый поиск"
       То ссылка содержит "paint"
        * в поле "Тип материала" выбраны следующие значения:
          | value  |
          | краски |

  Сценарий: Фильтр по краскам для граффити
    Когда я выбираю ссылку "Краска для граффити" в секции "Быстрый поиск"
       То ссылка содержит "graffiti"
        * в поле "Тип материала" выбраны следующие значения:
          | value               |
          | краска для граффити |

  Сценарий: Фильтр по лакам
    Когда я выбираю ссылку "Лаки" в секции "Быстрый поиск"
       То ссылка содержит "lak"
        * в поле "Тип материала" выбраны следующие значения:
          | value |
          | лаки  |

  Сценарий: Фильтр по растворителям
    Когда я выбираю ссылку "Растворители" в секции "Быстрый поиск"
       То ссылка содержит "solvents"
        * в поле "Тип материала" выбраны следующие значения:
          | value        |
          | растворители |

  Сценарий: Фильтр по эмалям
    Когда я выбираю ссылку "Эмали" в секции "Быстрый поиск"
       То ссылка содержит "enamels"
        * в поле "Тип материала" выбраны следующие значения:
          | value |
          | эмали |
