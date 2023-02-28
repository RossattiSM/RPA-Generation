Attribute VB_Name = "M�dulo1"
Sub combinarCeldas1()
'
' Macro grabada que combina celdas.
' Practica 1 de la clase de Introducci�n a .Net.

    Range("A2:A5").Select
    With Selection
        .HorizontalAlignment = xlLeft
        .VerticalAlignment = xlCenter
        .MergeCells = True
    End With
    
End Sub

Sub combinarCeldas2()
'
' Macro que combina las celdas de la primer empresa.
' Practica 7 de la clase de Introducci�n a .Net.

    Dim numFila As Long ' Declaro variable
    numFila = 2 ' Inicio variable

        While Cells(2, 1) = Cells(numFila + 1, 1) ' Se evalua si A1 es igual a 'combinar + 1'
            numFila = numFila + 1 ' Sumamos 1 a la variable
        Wend ' Al finalizar el while, la variable vale 5
    
        Application.DisplayAlerts = False ' Deshabilita las alertas

        With Range(Cells(2, 1), Cells(numFila, 1)) ' Aqu� el rago es A1:A5
                .HorizontalAlignment = xlLeft
                .VerticalAlignment = xlCenter
                .MergeCells = True
        End With

        Application.DisplayAlerts = True ' Vuelve a habilitarlas

End Sub

Sub combinarCeldas3()
'
' Macro que combina las celdas de todas las empresas.
' Pr�ctica 8 de Introducci�n a .Net.

    Dim celdaInicial As Long   ' Fila inicial del bloque de celdas a combinar.
    Dim celdaLeida As Long     ' Lee las filas hasta encontrar la que marca el final de un bloque de celdas combinable.
    Dim miHoja As Worksheet    ' Indica la worksheet donde aplicar la macro.
    Set miHoja = ActiveSheet   ' Le da el valor que queremos a 'miHoja'
    celdaInicial = 2           ' Valor permanente de la fila inicial
    celdaLeida = celdaInicial  ' Valor de inicio de la fila le�da

    Application.DisplayAlerts = False  ' Elimina las alertas

        While miHoja.Cells(celdaInicial, 1) <> "" ' Indica que el bucle contin�a mientras las celdas no sean vac�as.
    
            While Cells(celdaInicial, 1) = Cells(celdaLeida + 1, 1) ' Indica que contin�e mientras que la celda inicial y la que se est� leyendo sean iguales.
                        celdaLeida = celdaLeida + 1   ' Suma 1 a la celda le�da para que avance a la siguiente.
            Wend ' Finaliza cuando la celda inicial es distinta de la que se est� leyendo
        
            With Range(Cells(celdaInicial, 1), Cells(celdaLeida, 1)) ' Combina las celdas una vez que obtiene el valor correcto para la fila le�da.
                .HorizontalAlignment = xlLeft
                .VerticalAlignment = xlCenter
                .MergeCells = True
            End With
    
            celdaInicial = celdaLeida + 1
            celdaLeida = celdaInicial
    
        Wend

    Application.DisplayAlerts = True  ' Activa las alertas nuevamente

End Sub

