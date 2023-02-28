Attribute VB_Name = "M�dulo1"
Sub EjercicioFinal()
'
' Ejercicio final para la materia Automatizaci�n.Net
'
' El objetivo de la macro ser� filtrar las personas que tienen la edad
' jubilatoria para poder ser derivados al �rea de ventas.
'
' 1) Primero comprobar la edad jubilatoria de las personas dentro de la tabla e
' introducir los datos de la edad en su columna correspondiente.
' 2) Decidir, seg�n la edad, si se deriva o no.

Dim miHoja As Worksheet    ' Indica la worksheet donde aplicar la macro.
Set miHoja = ActiveSheet   ' Le da el valor que queremos a 'miHoja'

Dim celdaInicial As Long ' Primer celda de columna
Dim celdaLeida As Long ' Celda que cambia de la columna

Dim Edad As Long ' Variable que contiene el resultado y la edad
Dim celdaEdad As Long ' Variable de la celda donde se pone el dato Edad

celdaInicial = 2           ' Valor permanente de la celda inicial
celdaLeida = celdaInicial  ' Valor de inicio de la celda le�da
celdaEdad = celdaLeida

Application.DisplayAlerts = False  ' Elimina las alertas

        While miHoja.Cells(celdaLeida, 2) <> "" ' Indica que el bucle contin�a mientras las celdas no sean vac�as.
            
            Edad = DateDiff("yyyy", CDate(Cells(celdaLeida, 2)), Date)
            Cells(celdaEdad, 3) = Edad
             If Edad >= 65 Then
                    Cells(celdaLeida, 7) = "S�"
                Else
                    Cells(celdaLeida, 7) = "No"
                End If
            celdaLeida = celdaLeida + 1   ' Suma 1 a la celda le�da para que avance a la siguiente.
            celdaEdad = celdaEdad + 1
            
        Wend
        
        Sheets("Derivados").Add After:=Worksheet(1)
    
Application.DisplayAlerts = True  ' Activa las alertas nuevamente

End Sub


