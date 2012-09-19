# language:ru
# encoding: utf-8
Функционал: Импорт в категорию Недвижимость > Дома, дачи, участки. Аренда

  Сценарий: Импорт объявления ОП
    Когда я обновляю и импортирую файл "real-estate_out-of-town-rent/scenario1.xml" для роли "Пользователь для импорта"

    Когда открыта страница для региона "Москва"
        * я вхожу под пользователем с ролью "Пользователь для импорта"
        * я перехожу в список моих объявлений
       То в ЛК ОП объявление с названием "Сдам дом, общая площадь: 200 кв.м." присутствует в списке
        * у объявления указан город "Москва"
        * у объявления указана цена "30000" в евро

    Когда я открываю детали этого объявления
        * на вкладке "Все" "Площадь строения" равно "200 кв.м"