# test_task
==================================================

ТЗ к работе: 
Макет:
Необходимо авторизоваться в figma, чтобы ссылка открылась.

Необходимо отверстать экран и Bottom Sheet (без адаптива). И в экране и в Bottom Sheet должна быть возможность скроллить внутренний контент.

Bottom Sheet должен открываться по тапу на кнопку с иконкой шестеренки и закрываться по тапу на крестик или смахиванием вниз.

Блок с процентом загрузки. Процент загрузки должен передаваться в параметрах виджета числом от 0 до 100. Высота синего фона зависит от процента заполненности. Если процент заполненности 0, то синий фон отсутствует. Если 100% - то он полностью перекрывает белый фон.
Желательно, чтобы при первом показе фон заполнялся от 0 до значения процента загрузки с анимацией, число тоже увеличивалось от 0 до значения.

Карточки в разделе Финансы должны проскролливаться горизонтально.

Чекбокс, инпуты и свитчер в Bottom Sheet должны быть интерактивными.

Блок Прайс-листы. По тапу на кнопку “Добавить строку” должна создаваться новая строка прайс-листа с пустыми инпутами. 
По тапу на кнопку крестика в строке прайс-листа, соответствующая строка должна удаляться. Можно удалить все строки. Строк добавить можно сколько угодно. В инпуты можно вводить только числа.

Кнопка “Сохранить изменения” в Bottom Sheet должна быть привязана к нижней границе экрана, при скролле контента Bottom Sheet всегда должна быть доступна для тапа.

Остальные элементы не интерактивные.
#
==================================================

В работе применялся mobX и intl - для языков 
В assets храняться проектные шрифты и иконки формата svg

atom_inside.dart - основная страница поделена на виджеты которые хранятся с ней в папке page/main/widget
виджеты главной страницы: 
atm_widget.dart - Виджет для вывода данных АТМ (custom_row_widget.dat - его сопутствующий виджет)
event_widget.dart - виджет события с главной страницы
finance_widget.dart - виджет финансов с главной страницы
progress_widget.dart - виджет загрузки (для проверки временно подвязанные кнопки "загрузка"""инвентаризация")
Загрузка работает через modx store/progress

bottom_sheet.dart - Bottom Sheet из тз

виджеты :
button_widget.dart - универсальный кастомный виджет кнопки
custom_text_field.dart - универсальный кастомный виджет текстового поля ввода
info_widget.dart - универсальный виджет уведомления
toggle_button.dart - кастомный кнопка переключения для Bottom Sheet
