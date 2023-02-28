Attribute VB_Name = "M�dulo1"
' Sub programaInfinito()
'
' Macro para la practica 6 de Introduccion a .Net
' Objetivo: entender los errores de codigo que pueden generar bucles infinitos

' Dim filaLeida As Long

'    While Cells(filaLeida, 1) <> ""
'          Cells(filaLeida, 2) = filaLeida
'    Wend
    
' End Sub

Sub programaPrincipal()
'
' Macro para la practica 6 de Introduccion a .Net
' Objetivo: entender la escritura correcta de un bucle para no generar bucles infinitos

Dim filaLeida As Long ' declaro variable

filaLeida = 2 ' Inicio variable asignando un valor

    While Cells(filaLeida, 1) <> "" ' Mientras la celda sea 'distinta' de vac�o
        Cells(filaLeida, 2) = filaLeida ' Igualo con filaLeida
        filaLeida = filaLeida + 1 ' Incremento
    Wend

End Sub
