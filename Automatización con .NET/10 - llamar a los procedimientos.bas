Attribute VB_Name = "M�dulo1"

' Macro para aprender a llamar procedimientos. Practica 10 de Automatizaci�n con .NET

Sub Principal() ' Llama al procedimiento 1
    Pitar (3)   ' Llama al procedimiento 2 con el argumento 3
    Mensaje     ' LLama al procedimiento 3
End Sub

Sub Pitar(numero_pitidos As Integer)
    For indice = 1 To numero_pitidos
        Beep
    Next indice
End Sub

Sub Mensaje()
    MsgBox ("Tiempo de descansar!")
End Sub
