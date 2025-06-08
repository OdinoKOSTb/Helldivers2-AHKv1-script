#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

global Stratagems := Object()
global OrderedStratagems := []
global Bindings := Object()
global IniFile := A_ScriptDir . "\StratagemBindings.ini"
global ActivationKey := "LControl"

; === Призыв Оружия ===

OrderedStratagems.Push("___ РЮКЗАКИ: ___")
Stratagems["Прыжковый модуль"] := ["Down", "Up", "Up", "Down", "Up"]
OrderedStratagems.Push("Прыжковый модуль")
Stratagems["Ранец для парения"] := ["Down", "Up", "Up", "Down", "Left", "Right"]
OrderedStratagems.Push("Ранец для парения")
Stratagems["Пёс: пулемёт"] := ["Down", "Up", "Left", "Up", "Right", "Down"]
OrderedStratagems.Push("Пёс: пулемёт")
Stratagems["Пёс: лазер"] := ["Down", "Up", "Left", "Up", "Right", "Right"]
OrderedStratagems.Push("Пёс: лазер")
Stratagems["Пёс: Газ"] := ["Down", "Up", "Left", "Up", "Right", "Up"]
OrderedStratagems.Push("Пёс: Газ")
Stratagems["Баллистический щит"] := ["Down", "Left", "Down", "Down", "Up", "Left"]
OrderedStratagems.Push("Баллистический щит")
Stratagems["Рюказак: Щит"] := ["Down", "Up", "Left", "Right", "Left", "Right"]
OrderedStratagems.Push("Рюказак: Щит")
Stratagems["Направленный щит"] := ["Down", "Up", "Left", "Right", "Up", "Up"]
OrderedStratagems.Push("Направленный щит")
Stratagems["Рюказак: боезапас"] := ["Down", "Left", "Down", "Up", "Up", "Down"]
OrderedStratagems.Push("Рюказак: боезапас")
Stratagems["Переносная бомба"] := ["Down", "Right", "Up", "Up", "Up"]
OrderedStratagems.Push("Переносная бомба")
OrderedStratagems.Push(" ")



; === Оружие ===

OrderedStratagems.Push("___ ОРУЖИЕ: ___")
Stratagems["Пулемёт"] := ["Down", "Left", "Down", "Up", "Right"]
OrderedStratagems.Push("Пулемёт")
Stratagems["Снайпа"] := ["Down", "Left", "Right", "Up", "Down"]
OrderedStratagems.Push("Снайпа")
Stratagems["Лёгкий пулемёт"] := ["Down", "Left", "Down", "Up", "Up", "Left"]
OrderedStratagems.Push("Лёгкий пулемёт")
Stratagems["Тяжёлый пулемёт"] := ["Down", "Left", "Up", "Down", "Down"]
OrderedStratagems.Push("Тяжёлый пулемёт")
Stratagems["Бронебой"] := ["Down", "Down", "Left", "Up", "Right"]
OrderedStratagems.Push("Бронебой")
Stratagems["Безоткатная"] := ["Down", "Left", "Right", "Right", "Left"]
OrderedStratagems.Push("Безоткатная")
Stratagems["Огнемёт"] := ["Down", "Left", "Up", "Down", "Up"]
OrderedStratagems.Push("Огнемёт")
Stratagems["Автопушка"] := ["Down", "Left", "Down", "Up", "Up", "Right"]
OrderedStratagems.Push("Автопушка")
Stratagems["Рельса"] := ["Down", "Right", "Left", "Down", "Up", "Left", "Right"]
OrderedStratagems.Push("Рельса")
Stratagems["Копьё"] := ["Down", "Down", "Up", "Down", "Down"]
OrderedStratagems.Push("Копьё")
Stratagems["Гранатомёт"] := ["Down", "Left", "Up", "Left", "Down"]
OrderedStratagems.Push("Гранатомёт")
Stratagems["Лазер"] := ["Down", "Left", "Down", "Up", "Left"]
OrderedStratagems.Push("Лазер")
Stratagems["Дуга"] := ["Down", "Right", "Down", "Up", "Left", "Left"]
OrderedStratagems.Push("Дуга")
Stratagems["Квазар"] := ["Down", "Down", "Up", "Left", "Right"]
OrderedStratagems.Push("Квазар")
Stratagems["Ракета с подрывом в воздухе"] := ["Down", "Up", "Up", "Left", "Right"]
OrderedStratagems.Push("Ракета с подрывом в воздухе")
Stratagems["Коммандо"] := ["Down", "Left", "Up", "Down", "Right"]
OrderedStratagems.Push("Коммандо")
Stratagems["Оса"] := ["Down", "Down", "Up", "Down", "Right"]
OrderedStratagems.Push("Оса")
OrderedStratagems.Push(" ")


; === Транспорт ===

OrderedStratagems.Push("___ ТРАНСПОРТ: ___")
Stratagems["Вездеход"] := ["Left", "Down", "Right", "Down", "Right", "Down", "Up"]
OrderedStratagems.Push("Вездеход")
Stratagems["Экзоскелет: Пулемёт"] := ["Left", "Down", "Right", "Up", "Left", "Down", "Down"]
OrderedStratagems.Push("Экзоскелет: Пулемёт")
Stratagems["Экзоскелет: Автопушка"] := ["Left", "Down", "Right", "Up", "Left", "Down", "Up"]
OrderedStratagems.Push("Экзоскелет: Автопушка")
OrderedStratagems.Push(" ")


; === Миссия ===

OrderedStratagems.Push("___ МИССИЯ: ___")
Stratagems["Подкрепление"] := ["Up", "Down", "Right", "Left", "Up"]
OrderedStratagems.Push("Подкрепление")
Stratagems["Сигнал SOS"] := ["Up", "Down", "Right", "Up"]
OrderedStratagems.Push("Сигнал SOS")
Stratagems["Припасы"] := ["Down", "Down", "Up", "Right"]
OrderedStratagems.Push("Припасы")
Stratagems["Адская бомба"] := ["Down", "Up", "Left", "Down", "Up", "Right", "Down", "Up"]
OrderedStratagems.Push("Адская бомба")
Stratagems["Жёсткий диск"] := ["Down", "Down", "Down", "Up", "Up"]
OrderedStratagems.Push("Жёсткий диск")
Stratagems["Сейсмограф"] := ["Up", "Up", "Left", "Right", "Down", "Down"]
OrderedStratagems.Push("Сейсмограф")
Stratagems["Выгрузить данные"] := ["Left", "Right", "Up", "Up", "Up"]
OrderedStratagems.Push("Выгрузить данные")
Stratagems["Перезарядить орла"] := ["Up", "Up", "Left", "Up", "Right"]
OrderedStratagems.Push("Перезарядить орла")
Stratagems["Сигнальный огонь"] := ["Right", "Right", "Left", "Left"]
OrderedStratagems.Push("Сигнальный огонь")
Stratagems["Артиллерия"] := ["Right", "Up", "Up", "Down"]
OrderedStratagems.Push("Артиллерия")
Stratagems["Флаг"] := ["Down", "Up", "Down", "Up"]
OrderedStratagems.Push("Флаг")
OrderedStratagems.Push(" ")


; === Оборона ===

OrderedStratagems.Push("___ ОБОРОНА: ___")
Stratagems["Огневая позиция: Тяжелый пулемёт"] := ["Down", "Up", "Left", "Right", "Right", "Left"]
OrderedStratagems.Push("Огневая позиция: Тяжелый пулемёт")
Stratagems["Огневая позиция: Гранатомёт"] := ["Down", "Right", "Down", "Left", "Right"]
OrderedStratagems.Push("Огневая позиция: Гранатомёт")
Stratagems["Огневая позиция: Противотанковая пушка"] := ["Down", "Up", "Left", "Right", "Right", "Right"]
OrderedStratagems.Push("Огневая позиция: Противотанковая пушка")
Stratagems["Генератор щита"] := ["Down", "Down", "Left", "Right", "Left", "Right"]
OrderedStratagems.Push("Генератор щита")
Stratagems["Противопехотные мины"] := ["Down", "Left", "Up", "Right"]
OrderedStratagems.Push("Противопехотные мины")
Stratagems["Противотанковые мины"] := ["Down", "Left", "Up", "Up"]
OrderedStratagems.Push("Противотанковые мины")
Stratagems["Зажигательные мины"] := ["Down", "Left", "Left", "Down"]
OrderedStratagems.Push("Зажигательные мины")
Stratagems["Газовые мины"] := ["Down", "Left", "Left", "Right"]
OrderedStratagems.Push("Газовые мины")
Stratagems["Пулемётная турель"] := ["Down", "Up", "Right", "Right", "Up"]
OrderedStratagems.Push("Пулемётная турель")
Stratagems["Гатлинг турель"] := ["Down", "Up", "Right", "Left"]
OrderedStratagems.Push("Гатлинг турель")
Stratagems["Турель-автопушка"] := ["Down", "Up", "Right", "Up", "Left", "Up"]
OrderedStratagems.Push("Турель-автопушка")
Stratagems["Ракетная турель"] := ["Down", "Up", "Right", "Right", "Left"]
OrderedStratagems.Push("Ракетная турель")
Stratagems["Миномёт"] := ["Down", "Up", "Right", "Right", "Down"]
OrderedStratagems.Push("Миномёт")
Stratagems["ЭМ-гранатомёт"] := ["Down", "Up", "Right", "Down", "Right"]
OrderedStratagems.Push("ЭМ-гранатомёт")
Stratagems["Тесла"] := ["Down", "Up", "Right", "Up", "Left", "Right"]
OrderedStratagems.Push("Тесла")
Stratagems["Огнемёт"] := ["Down", "Up", "Right", "Down", "Up", "Up"]
OrderedStratagems.Push("Огнемёт")
OrderedStratagems.Push(" ")


; === Орбиталка ===

OrderedStratagems.Push("___ ОРБИТАЛКА: ___")
Stratagems["Орбитальный гатлинг"] := ["Right", "Down", "Left", "Up", "Up"]
OrderedStratagems.Push("Орбитальный гатлинг")
Stratagems["Орбитальная воздушная бомба"] := ["Right", "Right", "Right"]
OrderedStratagems.Push("Орбитальная воздушная бомба")
Stratagems["Залп 120мм"] := ["Right", "Right", "Down", "Left", "Right", "Down"]
OrderedStratagems.Push("Залп 120мм")
Stratagems["Залп 380мм"] := ["Right", "Down", "Up", "Up", "Left", "Down", "Down"]
OrderedStratagems.Push("Залп 380мм")
Stratagems["Огневой вал"] := ["Right", "Down", "Right", "Down", "Right", "Down"]
OrderedStratagems.Push("Огневой вал")
Stratagems["Орбитальный лазер"] := ["Right", "Down", "Up", "Right", "Down"]
OrderedStratagems.Push("Орбитальный лазер")
Stratagems["Орбитальная рельса"] := ["Right", "Up", "Down", "Down", "Right"]
OrderedStratagems.Push("Орбитальная рельса")
Stratagems["Высокоточный удар"] := ["Right", "Right", "Up"]
OrderedStratagems.Push("Высокоточный удар")
Stratagems["Орбитальный газ"] := ["Right", "Right", "Down", "Right"]
OrderedStratagems.Push("Орбитальный газ")
Stratagems["Орбитальное ЭМП"] := ["Right", "Right", "Left", "Down"]
OrderedStratagems.Push("Орбитальное ЭМП")
Stratagems["Орбитальный дым"] := ["Right", "Right", "Down", "Up"]
OrderedStratagems.Push("Орбитальный дым")
Stratagems["Орбитальный напалм"] := ["Right", "Right", "Down", "Left", "Right", "Up"]
OrderedStratagems.Push("Орбитальный напалм")
OrderedStratagems.Push(" ")

; === Категория: Орёл ===

OrderedStratagems.Push("___ ОРЁЛ: ___")
Stratagems["Орёл: Бреющий полёт"] := ["Up", "Right", "Right"]
OrderedStratagems.Push("Орёл: Бреющий полёт")
Stratagems["Орёл: Авиаудар"] := ["Up", "Right", "Down", "Right"]
OrderedStratagems.Push("Орёл: Авиаудар")
Stratagems["Орёл: Кластерная бомба"] := ["Up", "Right", "Down", "Down", "Right"]
OrderedStratagems.Push("Орёл: Кластерная бомба")
Stratagems["Орёл: Напалм"] := ["Up", "Right", "Down", "Up"]
OrderedStratagems.Push("Орёл: Напалм")
Stratagems["Орёл: Дымовая"] := ["Up", "Right", "Up", "Down"]
OrderedStratagems.Push("Орёл: Дымовая")
Stratagems["Орёл: Блок 110мм"] := ["Up", "Right", "Up", "Left"]
OrderedStratagems.Push("Орёл: Блок 110мм")
Stratagems["Орёл: 500кг"] := ["Up", "Right", "Down", "Down", "Down"]
OrderedStratagems.Push("Орёл: 500кг")

; ====== Загрузка биндингов из INI ======
LoadBindings()

; ====== GUI ======
Gui, Add, Text,, Выберите клавишу активации стратагем:
Gui, Add, DropDownList, vActivationKeyList w150, LControl|RControl|LShift|RShift|LAlt|RAlt|LWin|RWin|Tab
GuiControl, Choose, ActivationKeyList, LControl
Gui, Add, Text,, Или назначьте свою:
Gui, Add, Hotkey, vActivationKeyHotkey
Gui, Add, Button, gApplyActivationKey, Подтвердить
Gui, Add, Text,, Установите кнопку для активации стратагемы:
Gui, Add, Hotkey, vUserHotkey
Gui, Add, Button, gSetXButton1, Использовать боковую клавишу мыши 4
Gui, Add, Button, gSetXButton2, Использовать боковую клавишу мыши 5
Gui, Add, Button, gSetMButton, Использовать колесо мыши
Gui, Add, Text,, Выберите стратагему:
Gui, Add, DropDownList, vSelectedStratagem w400, % GetStratagemList()
Gui, Add, Button, gAddBinding, Добавить
Gui, Add, Button, gDeleteBinding, Удалить выбранное
Gui, Add, ListView, vBindingsList w500 h300 Grid, Клавиша|Стратогема
ReloadBindingsList()
Gui, Show,, Менеджер стратогем
return

; ====== Кнопка: Добавить ======
AddBinding:
Gui, Submit, NoHide

if (SelectedStratagem = "")
{
    MsgBox, Выберете стратагему.
    return
}
if (UserHotkey = "")
{
    MsgBox, Назначьте горячую клавишу.
    return
}

; Determine activation key: prefer hotkey if set, otherwise use dropdown
if (ActivationKeyHotkey != "")
    ActivationKey := ActivationKeyHotkey
else
    ActivationKey := ActivationKeyList

if (ActivationKey = "")
{
    MsgBox, Please select or enter an activation key.
    return
}

Bindings[UserHotkey] := SelectedStratagem
Hotkey, %UserHotkey%, StratagemHandler, On
SaveBindings()
ReloadBindingsList()
return

; ====== Кнопка: Удалить ======
DeleteBinding:
Gui, Submit, NoHide
Row := LV_GetNext()
if (!Row)
{
    MsgBox, Please select a binding to delete.
    return
}
LV_GetText(HotkeyToDelete, Row, 1)
Hotkey, %HotkeyToDelete%, Off
Bindings.Delete(HotkeyToDelete)
SaveBindings()
ReloadBindingsList()
return

; ====== Обработка хоткея ======
StratagemHandler:
    ThisKey := A_ThisHotkey
    Stratagem := Bindings[ThisKey]
    if !Stratagem
        return
    Sequence := Stratagems[Stratagem]
    if !IsObject(Sequence)
        return

    SendInput, {%ActivationKey% Down}
    Sleep, 50

    for _, dir in Sequence
    {
        SendInput, {Blind}{%dir% Down}
        Sleep, 25
        SendInput, {Blind}{%dir% Up}
        Sleep, 25
    }
	
    SendInput, {%ActivationKey% Up}
return

; ====== Поддержка ======
GetStratagemList()
{
    global OrderedStratagems
    list := ""
    for _, name in OrderedStratagems
        list .= name . "|"
    return RTrim(list, "|")
}

ReloadBindingsList()
{
    global Bindings
    GuiControl, -Redraw, BindingsList
    LV_Delete()
    for key, strat in Bindings
    {
        LV_Add("", Format("{:U}", key), strat)
    }
    GuiControl, +Redraw, BindingsList
}

SaveBindings()
{
    global Bindings, IniFile
    FileDelete, %IniFile%
    for key, strat in Bindings
        IniWrite, %strat%, %IniFile%, Binds, %key%
}

LoadBindings()
{
    global Bindings, IniFile
    if !FileExist(IniFile)
        return
    Loop, Read, %IniFile%
    {
        if RegExMatch(A_LoopReadLine, "^(.*)=(.*)$", m)
        {
            key := Trim(m1)
            strat := Trim(m2)
            Bindings[key] := strat
            Hotkey, %key%, StratagemHandler, On
        }
    }
}

ApplyActivationKey:
Gui, Submit, NoHide

if (ActivationKeyHotkey != "")
    ActivationKey := ActivationKeyHotkey
else
    ActivationKey := ActivationKeyList

if (ActivationKey = "")
{
    MsgBox, Please select or enter an activation key.
    return
}

MsgBox, Activation key set to: %ActivationKey%
return

SetXButton1:
    GuiControl,, UserHotkey, XButton1
return

SetXButton2:
    GuiControl,, UserHotkey, XButton2
return

SetMButton:
    GuiControl,, UserHotkey, MButton
return

GuiClose:
ExitApp