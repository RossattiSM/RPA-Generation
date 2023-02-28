Attribute VB_Name = "Módulo1"
Sub crearTabla()
'
' Procedimiento (Macro) para crear una tabla

    Dim miTabla As Variant ' Declaro tabla
    miTabla = Range("A1:D7") ' Doy valor a la tabla

    MsgBox (miTabla(4, 1)) ' Devuelve un mensaje mostrando la tabla

End Sub

Sub diaSemana()
'
' Procedimiento (Macro) para obtener un elemento del array

    Dim diaSem(7) As String
        
        For i = 1 To 7
            diaSem(i - 1) = Range("A" & i)
        Next i

MsgBox (diaSem(0))

End Sub
