# План тестирования

## Содержание
1. [Введение](#introduction)
2. [Объект тестирования](#items)
3. [Атрибуты качества](#quality)
4. [Риски](#risks)
5. [Аспекты тестирования](#features)
6. [Подходы к тестированию](#approach)
7. [Представление результатов](#pass)
8. [Выводы](#conclusion)

## 1 Введение <a name = "#introduction"></a>

В данном документе будет описываться тестирование web-приложения Tahan-Cafe.
Цели данного тестирования:
1. Проверить соответствие документа [требований](../SRS.md) с итоговым web-приложением
2. Протестировать работоспособность функционала приложения
3. Проверить работоспособность сторонних сервисов
4. Осуществить проверку приложения, с помощью конечного пользователя и дать оценку удовлетворённости клиента в контексте использования данного web-приложения

## 2 Объект тестирования <a name = "#items"></a>

В качестве объектов тестирования можно выделить основные [функциональные требования](../SRS.md). К основным модулям следует отнести:
* Модуль администратора
* Модуль пользователя

## 3 Атрибуты качетсва <a name = "#quality"></a>

1. Функциональность:
   1.1 Функциональная полнота: приложение должно выполнять все заявленные [функции](../SRS.md);
   1.2 Функциональная корректность: приложение должно выполнять все заявленные функции корректно;
   1.3 Функциональная целесообразность: отсутствуют не заявленные функции, которые бы мешали приложению выполнить первоначально поставленные задачи;
2. Удобство использования:
   1. эстетика пользовательского интерфейса: плавный интерфейс;

## 4 Риски <a name = "#risks"></a>

К рискам можно отнести:
* Плохая связь с интернетом или его отсутствие
* Ошибки на стороне сервера, где находиться сайт
* Ошибки timeout при связи с базой данных из-за слабого сервера

## 5 Аспекты тестирования <a name = "#approach"></a>

В ходе тестирования планируется проверить реализацию основных функций приложения. Данное тестирования будет проводится человеком, не имевшим возможность наблюдать за этапами разработки и не знакомым с исходным кодом.
### 5.1 Функционал пользователя:

* Регистрация
* Авторизация
* Бронирование зала
* Просмотр информации о блюде
* Добавление блюда в корзину
* Оформление заказа
* Комментарии к заказу
* Оставить отзыв
* Отмена заказа

### 5.2 Функционал администратора:

* Авторизация
* Удаление блюда
* Обновление блюда
* Добавление нового блюда
* Удаление категории
* Добавление категории
* Удаление ингредиентов
* Добавление ингредиентов
* Удаление зала
* Добавление зала
* Просмотр заказов
* Просмотр бронированных залов
* Просмотр зарегистрированных пользователей
* Просмотр отзывов
* Начисление бонусов пользователям
* Редактирование пользователей
* Подтверждение заказа

### Нефункциональные требования

* Доступ ко всем функциям приложения не более, чем за две операции;
* Все функциональные элементы пользовательского интерфейса должны иметь названия или символические обозначения, описывающие действие, которое произойдет при выборе элемента;
* Функциональные элементы должны находится в одной части главного окна приложения.

## 6 Подходы к тестированию <a name = "approach"></a>

При тестировании будет использоваться ручной подход. При тестировании функционала разработчик будет вручную проходить весь цикл управления сайтом: от регистрации до подтверждения заказа. 
При тестировании приложения сторонним пользователем будет проделан полный цикл от регистрации до оформления заказа.

## 7 Предоставление результатов <a name = "pass"></a>

Результаты тестирования представлены в документе ["Результаты тестирования"](./Results.md).

## 8 Выводы <a name = "conclusion"></a>

Исходя из результатов тестирования можно сделать вывод о том, что приложение полностью соответствует фунциональным требованиям. Также можно сделать вывод о том, что приложение полностью удовлетворяет нефункциональным требованиям.