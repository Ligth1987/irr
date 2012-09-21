# language:ru
# encoding: utf-8
Функционал: Подготовка пользователя к подаче объявлений

Контекст:
  Когда я перехожу на БО
    * на БО я перехожу в категорию "Интернет-партнеры -> Пользователи ИП"

  Структура сценария: Добавление необходимых пакетов и настройка премиумов для недвижимости
        * на БО я ищу пользователя с ролью "<роль>"
        * на БО я открываю детали интернет-партнера
        * на БО я удаляю все пакеты "NEW Недвижимость | ВСЕ РЕГИОНЫ" у пользователя роли "<роль>"
        * на БО я добавляю интернет-партнеру пакет "NEW Недвижимость | ВСЕ РЕГИОНЫ" для региона "Вся Россия"
        * на БО я удаляю все пакеты "NEW Авто | ВСЕ РЕГИОНЫ" у пользователя роли "<роль>"
        * на БО я добавляю интернет-партнеру пакет "NEW Авто | ВСЕ РЕГИОНЫ" для региона "Вся Россия"
        * на БО я делаю интернет-партнеру 10 премиумов на 14 дней
        * на БО я делаю интернет-партнеру 0 премиумов на 7 дней

    Примеры:
    | роль                          |
    | Интернет-партнер              |
    | Доверенный интернет-партнер   |
    | Доверенный интернет-партнер 1 |
    | Доверенный интернет-партнер 2 |
    | Доверенный интернет-партнер 3 |
    | Доверенный интернет-партнер 4 |
    | Доверенный интернет-партнер 5 |
    | Доверенный интернет-партнер 6 |
    | Доверенный интернет-партнер 7 |
    | Доверенный интернет-партнер 8 |
    | Доверенный интернет-партнер 9 |

  Сценарий: Удаление всех объявлений у ОП
    Когда открыта страница для региона "Россия"
        * я вхожу под пользователем с ролью "Обычный пользователь"
        * я перехожу в список моих объявлений
        * в ЛК ОП я удаляю все объявления

  Структура сценария: Удаление всех объявлений
    Когда открыта страница для региона "Россия"
        * я вхожу под пользователем с ролью "<роль>"
        * я перехожу в список моих объявлений
       То в ЛК ИП я удаляю все объявления

    Примеры:
    | роль                          |
    | Интернет-партнер              |
    | Доверенный интернет-партнер   |
    | Доверенный интернет-партнер 1 |
    | Доверенный интернет-партнер 2 |
    | Доверенный интернет-партнер 3 |
    | Доверенный интернет-партнер 4 |
    | Доверенный интернет-партнер 5 |
    | Доверенный интернет-партнер 6 |
    | Доверенный интернет-партнер 7 |
    | Доверенный интернет-партнер 8 |
    | Доверенный интернет-партнер 9 |
