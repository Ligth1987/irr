# language:ru
# encoding: utf-8
Функционал: Добавление/удаление/редактирование пакета интернет-партнеру через БО

  Контекст:
      Когда я перехожу на БО
          * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"

  Сценарий: Добавление пакета
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Поднятий (на весь период)  | 100      |
           | Выделений (на весь период) | 100      |
           | Просмотры (на весь период) | 100      |

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
        То в ЛК ИП присутствует пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ "

      Если в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Поднятие" равно "100"
         * в ЛК ИП значение поля "Выделение" равно "100"
         * в ЛК ИП значение поля "Просмотров" равно "100"

  Сценарий: Добавление поднятий
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Поднятий (на весь период)  | 100      |
         * на БО я добавляю 10 поднятий на пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
         * я перехожу в список моих объявлений
         * в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Поднятие" равно "110"

  Сценарий: Добавление выделений
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Выделений (на весь период) | 100      |
         * на БО я добавляю 10 выделений на пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
         * я перехожу в список моих объявлений
         * в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Выделение" равно "110"

  Сценарий: Добавление просмотров
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Просмотры (на весь период) | 100      |
         * на БО я добавляю 10 просмотров на пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
         * я перехожу в список моих объявлений
         * в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Просмотров" равно "110"

  Сценарий: Создание пакета с неограниченным количеством просмотров
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
           | поле                       | значение |
           | Просмотры (на весь период) | -1       |

      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
         * я перехожу в список моих объявлений
        То в ЛК ИП присутствует пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ "

      Если в ЛК ИП я выбираю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"
        То в ЛК ИП значение поля "Просмотров" равно "неограничено"

  Сценарий: Удаление пакета
     Когда на БО я удаляю все пакеты "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у пользователя роли "Доверенный интернет-партнер"
         * на БО я добавляю интернет-партнеру пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" для региона "Вся Россия" со следующими параметрами:
         | поле                       | значение |
         | Поднятий (на весь период)  | 100      |
         | Выделений (на весь период) | 100      |
         | Просмотры (на весь период) | 100      |

     Когда на БО я удаляю пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ" у интернет-партнера
      Если открыта страница для региона "Россия"
         * я вхожу под пользователем с ролью "Доверенный интернет-партнер"
         * я перехожу в список моих объявлений
        То в ЛК ИП отсутствует пакет "NEW Здоровье и красота | ВСЕ РЕГИОНЫ"

      Если я перехожу к подаче объявления
         * я подаю объявление в категорию "Здоровье и красота -> Парфюмерия"
        То на шаге 2 выводится сообщение об отсутствии пакета
