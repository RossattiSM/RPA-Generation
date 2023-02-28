Attribute VB_Name = "Módulo1"
Sub resultadoPartido()
'
' Macro para la práctica 3 de Introducción a .Net

Dim numFila As Long ' declarar la variable

numFila = InputBox("Escriba la fila") ' asignarle un valor

If Cells(numFila, 3) = 1 Then ' comienza la condición
Cells(numFila, 2) = Cells(numFila, 2) + 3
Else
Cells(numFila, 2) = Cells(numFila, 2) + 1
End If ' termina la condición

End Sub

