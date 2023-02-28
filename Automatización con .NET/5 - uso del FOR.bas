Attribute VB_Name = "Modulo1"
Sub Calculo()

Dim valorFila As Variant

   valorFila = InputBox("Que valor le damos a la fila ?", "Pregunta")

   Cells(valorFila, 1) = valorFila
   Cells(valorFila, 2) = valorFila + valorFila
   Cells(valorFila, 3) = valorFila * valorFila

End Sub

Sub calculoFor()
'
' Macro para la practica 5 de Introduccion a .Net
' Objetivo: cambiar el calculo hecho con celdas por uno con FOR

Dim valorFila As Long

For valorFila = 1 To 10
    Cells(valorFila, 1) = valorFila
    Cells(valorFila, 2) = valorFila + valorFila
    Cells(valorFila, 3) = valorFila * valorFila
Next valorFila

End Sub


