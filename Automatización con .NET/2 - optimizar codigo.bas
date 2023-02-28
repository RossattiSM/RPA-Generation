Attribute VB_Name = "Módulo1"
Sub Practica2()
Attribute Practica2.VB_ProcData.VB_Invoke_Func = " \n14"
'
' Practica2 Macro
'

' Macro para la práctica 2 de Introducción a .Net


    Sheets.Add After:=ActiveSheet
    Worksheet(1).Select
    Range("B4") = Range("A1")
    ActiveSheet.Paste
    Application.CutCopyMode = False
    Selection.Copy
    Sheets("Hoja2").Select
    Range("C2").Select
    ActiveSheet.Paste
    Application.CutCopyMode = False
    With Selection.Font
        .Name = "Algerian"
        .FontStyle = "Negrita Cursiva"
        .Size = 11
        .Strikethrough = False
        .Superscript = False
        .Subscript = False
        .OutlineFont = False
        .Shadow = False
        .Underline = xlUnderlineStyleNone
        .Color = 255
        .TintAndShade = 0
        .ThemeFont = xlThemeFontNone
    End With
    Sheets("Hoja1").Select
    Range("A1").Select
    Selection.ClearContents
End Sub
