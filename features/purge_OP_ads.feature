# language:ru
# encoding: utf-8
Функционал: ОП - Удаление всех объявлений

  Сценарий: Удаление всех объявлений у ОП
    Когда открыта страница для региона "Усть-Алтан"
        * я вхожу под пользователем с ролью "Обычный пользователь 1"
        * я перехожу в список моих объявлений
        * в ЛК ОП я удаляю все объявления
