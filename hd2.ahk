#NoEnv
SendMode Input
SetWorkingDir %A_ScriptDir%
#SingleInstance force

global Stratagems := Object()
global OrderedStratagems := []
global Bindings := Object()
global IniFile := A_ScriptDir . "\StratagemBindings.ini"
global ActivationKey := "LControl"

; === ������ ������ ===

OrderedStratagems.Push("___ �������: ___")
Stratagems["��������� ������"] := ["Down", "Up", "Up", "Down", "Up"]
OrderedStratagems.Push("��������� ������")
Stratagems["����� ��� �������"] := ["Down", "Up", "Up", "Down", "Left", "Right"]
OrderedStratagems.Push("����� ��� �������")
Stratagems["ϸ�: ������"] := ["Down", "Up", "Left", "Up", "Right", "Down"]
OrderedStratagems.Push("ϸ�: ������")
Stratagems["ϸ�: �����"] := ["Down", "Up", "Left", "Up", "Right", "Right"]
OrderedStratagems.Push("ϸ�: �����")
Stratagems["ϸ�: ���"] := ["Down", "Up", "Left", "Up", "Right", "Up"]
OrderedStratagems.Push("ϸ�: ���")
Stratagems["�������������� ���"] := ["Down", "Left", "Down", "Down", "Up", "Left"]
OrderedStratagems.Push("�������������� ���")
Stratagems["�������: ���"] := ["Down", "Up", "Left", "Right", "Left", "Right"]
OrderedStratagems.Push("�������: ���")
Stratagems["������������ ���"] := ["Down", "Up", "Left", "Right", "Up", "Up"]
OrderedStratagems.Push("������������ ���")
Stratagems["�������: ��������"] := ["Down", "Left", "Down", "Up", "Up", "Down"]
OrderedStratagems.Push("�������: ��������")
Stratagems["���������� �����"] := ["Down", "Right", "Up", "Up", "Up"]
OrderedStratagems.Push("���������� �����")
OrderedStratagems.Push(" ")



; === ������ ===

OrderedStratagems.Push("___ ������: ___")
Stratagems["������"] := ["Down", "Left", "Down", "Up", "Right"]
OrderedStratagems.Push("������")
Stratagems["������"] := ["Down", "Left", "Right", "Up", "Down"]
OrderedStratagems.Push("������")
Stratagems["˸���� ������"] := ["Down", "Left", "Down", "Up", "Up", "Left"]
OrderedStratagems.Push("˸���� ������")
Stratagems["������ ������"] := ["Down", "Left", "Up", "Down", "Down"]
OrderedStratagems.Push("������ ������")
Stratagems["��������"] := ["Down", "Down", "Left", "Up", "Right"]
OrderedStratagems.Push("��������")
Stratagems["�����������"] := ["Down", "Left", "Right", "Right", "Left"]
OrderedStratagems.Push("�����������")
Stratagems["������"] := ["Down", "Left", "Up", "Down", "Up"]
OrderedStratagems.Push("������")
Stratagems["���������"] := ["Down", "Left", "Down", "Up", "Up", "Right"]
OrderedStratagems.Push("���������")
Stratagems["������"] := ["Down", "Right", "Left", "Down", "Up", "Left", "Right"]
OrderedStratagems.Push("������")
Stratagems["�����"] := ["Down", "Down", "Up", "Down", "Down"]
OrderedStratagems.Push("�����")
Stratagems["���������"] := ["Down", "Left", "Up", "Left", "Down"]
OrderedStratagems.Push("���������")
Stratagems["�����"] := ["Down", "Left", "Down", "Up", "Left"]
OrderedStratagems.Push("�����")
Stratagems["����"] := ["Down", "Right", "Down", "Up", "Left", "Left"]
OrderedStratagems.Push("����")
Stratagems["������"] := ["Down", "Down", "Up", "Left", "Right"]
OrderedStratagems.Push("������")
Stratagems["������ � �������� � �������"] := ["Down", "Up", "Up", "Left", "Right"]
OrderedStratagems.Push("������ � �������� � �������")
Stratagems["��������"] := ["Down", "Left", "Up", "Down", "Right"]
OrderedStratagems.Push("��������")
Stratagems["���"] := ["Down", "Down", "Up", "Down", "Right"]
OrderedStratagems.Push("���")
OrderedStratagems.Push(" ")


; === ��������� ===

OrderedStratagems.Push("___ ���������: ___")
Stratagems["��������"] := ["Left", "Down", "Right", "Down", "Right", "Down", "Up"]
OrderedStratagems.Push("��������")
Stratagems["����������: ������"] := ["Left", "Down", "Right", "Up", "Left", "Down", "Down"]
OrderedStratagems.Push("����������: ������")
Stratagems["����������: ���������"] := ["Left", "Down", "Right", "Up", "Left", "Down", "Up"]
OrderedStratagems.Push("����������: ���������")
OrderedStratagems.Push(" ")


; === ������ ===

OrderedStratagems.Push("___ ������: ___")
Stratagems["������������"] := ["Up", "Down", "Right", "Left", "Up"]
OrderedStratagems.Push("������������")
Stratagems["������ SOS"] := ["Up", "Down", "Right", "Up"]
OrderedStratagems.Push("������ SOS")
Stratagems["�������"] := ["Down", "Down", "Up", "Right"]
OrderedStratagems.Push("�������")
Stratagems["������ �����"] := ["Down", "Up", "Left", "Down", "Up", "Right", "Down", "Up"]
OrderedStratagems.Push("������ �����")
Stratagems["Ƹ����� ����"] := ["Down", "Down", "Down", "Up", "Up"]
OrderedStratagems.Push("Ƹ����� ����")
Stratagems["����������"] := ["Up", "Up", "Left", "Right", "Down", "Down"]
OrderedStratagems.Push("����������")
Stratagems["��������� ������"] := ["Left", "Right", "Up", "Up", "Up"]
OrderedStratagems.Push("��������� ������")
Stratagems["������������ ����"] := ["Up", "Up", "Left", "Up", "Right"]
OrderedStratagems.Push("������������ ����")
Stratagems["���������� �����"] := ["Right", "Right", "Left", "Left"]
OrderedStratagems.Push("���������� �����")
Stratagems["����������"] := ["Right", "Up", "Up", "Down"]
OrderedStratagems.Push("����������")
Stratagems["����"] := ["Down", "Up", "Down", "Up"]
OrderedStratagems.Push("����")
OrderedStratagems.Push(" ")


; === ������� ===

OrderedStratagems.Push("___ �������: ___")
Stratagems["������� �������: ������� ������"] := ["Down", "Up", "Left", "Right", "Right", "Left"]
OrderedStratagems.Push("������� �������: ������� ������")
Stratagems["������� �������: ���������"] := ["Down", "Right", "Down", "Left", "Right"]
OrderedStratagems.Push("������� �������: ���������")
Stratagems["������� �������: ��������������� �����"] := ["Down", "Up", "Left", "Right", "Right", "Right"]
OrderedStratagems.Push("������� �������: ��������������� �����")
Stratagems["��������� ����"] := ["Down", "Down", "Left", "Right", "Left", "Right"]
OrderedStratagems.Push("��������� ����")
Stratagems["��������������� ����"] := ["Down", "Left", "Up", "Right"]
OrderedStratagems.Push("��������������� ����")
Stratagems["��������������� ����"] := ["Down", "Left", "Up", "Up"]
OrderedStratagems.Push("��������������� ����")
Stratagems["������������� ����"] := ["Down", "Left", "Left", "Down"]
OrderedStratagems.Push("������������� ����")
Stratagems["������� ����"] := ["Down", "Left", "Left", "Right"]
OrderedStratagems.Push("������� ����")
Stratagems["��������� ������"] := ["Down", "Up", "Right", "Right", "Up"]
OrderedStratagems.Push("��������� ������")
Stratagems["������� ������"] := ["Down", "Up", "Right", "Left"]
OrderedStratagems.Push("������� ������")
Stratagems["������-���������"] := ["Down", "Up", "Right", "Up", "Left", "Up"]
OrderedStratagems.Push("������-���������")
Stratagems["�������� ������"] := ["Down", "Up", "Right", "Right", "Left"]
OrderedStratagems.Push("�������� ������")
Stratagems["������"] := ["Down", "Up", "Right", "Right", "Down"]
OrderedStratagems.Push("������")
Stratagems["��-���������"] := ["Down", "Up", "Right", "Down", "Right"]
OrderedStratagems.Push("��-���������")
Stratagems["�����"] := ["Down", "Up", "Right", "Up", "Left", "Right"]
OrderedStratagems.Push("�����")
Stratagems["������"] := ["Down", "Up", "Right", "Down", "Up", "Up"]
OrderedStratagems.Push("������")
OrderedStratagems.Push(" ")


; === ��������� ===

OrderedStratagems.Push("___ ���������: ___")
Stratagems["����������� �������"] := ["Right", "Down", "Left", "Up", "Up"]
OrderedStratagems.Push("����������� �������")
Stratagems["����������� ��������� �����"] := ["Right", "Right", "Right"]
OrderedStratagems.Push("����������� ��������� �����")
Stratagems["���� 120��"] := ["Right", "Right", "Down", "Left", "Right", "Down"]
OrderedStratagems.Push("���� 120��")
Stratagems["���� 380��"] := ["Right", "Down", "Up", "Up", "Left", "Down", "Down"]
OrderedStratagems.Push("���� 380��")
Stratagems["������� ���"] := ["Right", "Down", "Right", "Down", "Right", "Down"]
OrderedStratagems.Push("������� ���")
Stratagems["����������� �����"] := ["Right", "Down", "Up", "Right", "Down"]
OrderedStratagems.Push("����������� �����")
Stratagems["����������� ������"] := ["Right", "Up", "Down", "Down", "Right"]
OrderedStratagems.Push("����������� ������")
Stratagems["������������ ����"] := ["Right", "Right", "Up"]
OrderedStratagems.Push("������������ ����")
Stratagems["����������� ���"] := ["Right", "Right", "Down", "Right"]
OrderedStratagems.Push("����������� ���")
Stratagems["����������� ���"] := ["Right", "Right", "Left", "Down"]
OrderedStratagems.Push("����������� ���")
Stratagems["����������� ���"] := ["Right", "Right", "Down", "Up"]
OrderedStratagems.Push("����������� ���")
Stratagems["����������� ������"] := ["Right", "Right", "Down", "Left", "Right", "Up"]
OrderedStratagems.Push("����������� ������")
OrderedStratagems.Push(" ")

; === ���������: ��� ===

OrderedStratagems.Push("___ �Ш�: ___")
Stratagems["���: ������� ����"] := ["Up", "Right", "Right"]
OrderedStratagems.Push("���: ������� ����")
Stratagems["���: ��������"] := ["Up", "Right", "Down", "Right"]
OrderedStratagems.Push("���: ��������")
Stratagems["���: ���������� �����"] := ["Up", "Right", "Down", "Down", "Right"]
OrderedStratagems.Push("���: ���������� �����")
Stratagems["���: ������"] := ["Up", "Right", "Down", "Up"]
OrderedStratagems.Push("���: ������")
Stratagems["���: �������"] := ["Up", "Right", "Up", "Down"]
OrderedStratagems.Push("���: �������")
Stratagems["���: ���� 110��"] := ["Up", "Right", "Up", "Left"]
OrderedStratagems.Push("���: ���� 110��")
Stratagems["���: 500��"] := ["Up", "Right", "Down", "Down", "Down"]
OrderedStratagems.Push("���: 500��")

; ====== �������� ��������� �� INI ======
LoadBindings()

; ====== GUI ======
Gui, Add, Text,, �������� ������� ��������� ���������:
Gui, Add, DropDownList, vActivationKeyList w150, LControl|RControl|LShift|RShift|LAlt|RAlt|LWin|RWin|Tab
GuiControl, Choose, ActivationKeyList, LControl
Gui, Add, Text,, ��� ��������� ����:
Gui, Add, Hotkey, vActivationKeyHotkey
Gui, Add, Button, gApplyActivationKey, �����������
Gui, Add, Text,, ���������� ������ ��� ��������� ����������:
Gui, Add, Hotkey, vUserHotkey
Gui, Add, Button, gSetXButton1, ������������ ������� ������� ���� 4
Gui, Add, Button, gSetXButton2, ������������ ������� ������� ���� 5
Gui, Add, Button, gSetMButton, ������������ ������ ����
Gui, Add, Text,, �������� ����������:
Gui, Add, DropDownList, vSelectedStratagem w400, % GetStratagemList()
Gui, Add, Button, gAddBinding, ��������
Gui, Add, Button, gDeleteBinding, ������� ���������
Gui, Add, ListView, vBindingsList w500 h300 Grid, �������|����������
ReloadBindingsList()
Gui, Show,, �������� ���������
return

; ====== ������: �������� ======
AddBinding:
Gui, Submit, NoHide

if (SelectedStratagem = "")
{
    MsgBox, �������� ����������.
    return
}
if (UserHotkey = "")
{
    MsgBox, ��������� ������� �������.
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

; ====== ������: ������� ======
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

; ====== ��������� ������ ======
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

; ====== ��������� ======
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