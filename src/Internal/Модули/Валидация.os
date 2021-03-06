
Функция ЗначениеПоТипу(Знач Значение, ПредполагаемыйТип) Экспорт
	

	Если ТипЗнч(Значение) = Тип(ПредполагаемыйТип) Тогда
		нЗначение = НужноеЗначение(Значение, ПредполагаемыйТип);
	ИначеЕсли ТипЗнч(Значение) = Тип("Строка") Тогда
		нЗначение = Значение;
	Иначе
		ВызватьИсключение(СформироватьТекстИсключения(ПредполагаемыйТип));
	КонецЕсли;

	Возврат нЗначение;

КонецФункции

Функция нужноеЗначение(Значение, ПредполагаемыйТип)
	Если ПредполагаемыйТип = "РепозиторийGitHub" Тогда
		нЗначение = Значение.ПолноеИмя;
	ИначеЕсли ПредполагаемыйТип = "ПользовательGitHub" Тогда
		нЗначение = Значение.Идентификатор;
	ИначеЕсли ПредполагаемыйТип = "ОрганизацияGitHub" Тогда
		нЗначение = Значение.Логин;
	Иначе 
		ВызватьИсключение("Проверка данного типа не реализована");
	КонецЕсли;

	Возврат нЗначение;
КонецФункции

Функция СформироватьТекстИсключения(ПредполагаемыйТип)
	Если ПредполагаемыйТип = "РепозиторийGitHub" Тогда
		ТекстИсключения = "Тип параметра Репозиторий не поддерживается";
	ИначеЕсли ПредполагаемыйТип = "ПользовательGitHub" Тогда
		ТекстИсключения = "Тип параметра Пользователь не поддерживается.";
	ИначеЕсли ПредполагаемыйТип = "ОрганизацияGitHub" Тогда
		ТекстИсключения = "Тип параметра ИмяОрганизации не поддерживается";
	Иначе 
		ВызватьИсключение("Проверка данного типа не реализована");
	КонецЕсли;

	Возврат ТекстИсключения;
КонецФункции