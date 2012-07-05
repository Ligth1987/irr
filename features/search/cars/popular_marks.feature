# language:ru
# encoding: utf-8
Функционал: Авто и мото - популярные марки
  Контекст:
    Когда открыта страница для региона "Россия"

  Структура сценария: Популярные марки и модели (полный)
     Когда на главной странице я перехожу в категорию "Авто и мото"
         * я перехожу по ссылке для марки "<марка>"
         * я перехожу по ссылке для модели "<модель>"
        То на странице поиска загружен список результатов
         * на странице показано >= 1 объявлений
         * в поле "Марка" выбраны следующие значения:
             | value   |
             | <марка> |
         * в поле "Модель" выбраны следующие значения:
             | value   |
             | <модель> |

  Примеры:
  | марка | модель |