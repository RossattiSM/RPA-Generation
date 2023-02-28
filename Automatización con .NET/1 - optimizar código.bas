Attribute VB_Name = "Módulo1"

Sub Practica1()
'
' Practica1 Macro
'
' Macro grabada para la practica 1 de la clase de Introducción a .Net
    
    Range("A2:A5").Select
    With Selection
        .HorizontalAlignment = xlLeft
        .VerticalAlignment = xlCenter
        .MergeCells = True
    End With
    
End Sub

