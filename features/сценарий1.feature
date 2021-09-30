﻿#language: ru

@tree

Функционал: <описание фичи>

Как <Роль> я хочу
<описание функционала> 
чтобы <бизнес-эффект> 

Сценарий: <описание сценария> 

Дано Я открыл новый сеанс TestClient или подключил уже существующий
И я закрываю все окна клиентского приложения

И В панели функций я выбираю 'Приобретение'
Когда открылось окно 'Приобретение'
И я нажимаю на кнопку с именем 'ФормаСоздать'
Тогда открылось окно 'Приобретение (создание)'
И создание номенклатуры
	И в таблице "Товары" я нажимаю на кнопку с именем 'ТоварыДобавить'
	И в таблице "Товары" я нажимаю кнопку выбора у реквизита с именем "ТоварыНоменклатура"
	Тогда открылось окно 'Номенклатура'
	И я нажимаю на кнопку с именем 'ФормаСоздать'
	Тогда открылось окно 'Номенклатура (создание)'
	И в поле с именем 'Наименование' я ввожу текст 'Журнал'
	И я нажимаю на кнопку с именем 'ФормаЗаписатьИЗакрыть'
	И я жду закрытия окна 'Номенклатура (создание) *' в течение 20 секунд
	Тогда открылось окно 'Номенклатура'

И я нажимаю на кнопку с именем 'ФормаВыбрать'
Тогда открылось окно 'Приобретение (создание) *'
И редактирую номенклатуру
	//И в таблице "Товары" я завершаю редактирование строки
	И в таблице "Товары" я активизирую поле с именем "ТоварыКоличество"
	И в таблице "Товары" я выбираю текущую строку
	И в таблице "Товары" в поле с именем 'ТоварыКоличество' я ввожу текст '5,000'
	И в таблице "Товары" я завершаю редактирование строки
И проверяю движения
	И я нажимаю на кнопку с именем 'ФормаПровести'
	Тогда открылось окно 'Приобретение * от *'
	И я нажимаю на кнопку 'Товары на складах'
	Тогда открылось окно 'Товары на складах'
	И таблица "Список" равна макету "проводки приобретения" по шаблону

И проверяю печатную форму
	И Я закрываю окно 'Товары на складах'
	Тогда открылось окно 'Приобретение * от *'
	И я нажимаю на кнопку 'Печать'
	Тогда Табличный документ 'SpreadsheetDocument' равен макету "эталон ПФ приобретения" по шаблону

