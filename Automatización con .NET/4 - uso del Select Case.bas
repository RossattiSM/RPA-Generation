Attribute VB_Name = "Modulo1"
Sub esPrimo()
'
' Macro para el ejercicio 4 de Introduccion a .Net
' Objetivo: comprueba si es o no es primo el numero incertado en la celda A1

    Select Case Cells(1, 1)
        Case 1, 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 39  ' Numeros primos
        Cells(1, 2) = "Numero primo"    ' Retorno con fines descriptivos
        Case Else
            Cells(1, 2) = "No es numero primo"    ' Retorno con fines descriptivos
    End Select

End Sub

Sub de1a10()
'
' Macro para el ejercicio 4 de Introduccion a .Net
' Objetivo: comprueba las notas y devuelve un string descriptivo

    Select Case Range("A1")  ' Evaluar numero
        Case 1 To 5          ' Numero entre 1 y 5, incluidos.
            Range("A2") = "Entre 1 y 5"
        Case 6 To 8          ' Numero entre 6 y 8.
            Range("A2") = "Entre 6 y 8"
        Case 9 To 10         ' Numero entre 9 y 10.
            Range("A2") = "Entre 9 y 10"
        Case Else            ' Otros valores.
            Range("A2") = "No est� entre 1 y 10"
    End Select
    
End Sub

