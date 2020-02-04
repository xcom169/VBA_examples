Sub Macro2()
'
' Create structure from text
'


Dim Repeat As Integer
Dim RepeatBelso As Integer
Dim RowNumber As Integer
Dim StartCol As Integer
Dim EndCol As Integer
Dim k As Integer
Dim j As Integer

Dim LastRow As Long

Dim i As Integer
Dim CurrentRow As Integer

Repeat = 1
RowNumber = 2
StartCol = 9
EndCol = 15
i = 1
k = 1
j = 1


Dim sht As Worksheet
Set sht = ActiveSheet


Repeat = Cells(RowNumber, EndCol + 2).Value
LastRow = sht.Cells(sht.Rows.Count, "A").End(xlUp).Row


For k = RowNumber To LastRow

Cells(RowNumber, EndCol + 2).Select
Repeat = Cells(RowNumber, EndCol + 2).Value
RepeatBelso = Repeat



For j = 1 To RepeatBelso

    Rows(RowNumber + Repeat).Select
    Selection.Insert Shift:=xlDown, CopyOrigin:=xlFormatFromLeftOrAbove
    LastRow = LastRow + 1

Next j

For i = 1 To Repeat
    
    Range(Cells((RowNumber), 9), Cells((RowNumber), 15)).Select
    Selection.Cut
    Cells(RowNumber + Repeat, 1) = "ITEM"
    Cells((RowNumber + Repeat), 2).Select
    ActiveSheet.Paste
        
    If i > 1 Then
    
    Rows(RowNumber).Clear
        
    End If
    
        
        
    RowNumber = RowNumber + 1
    
        
Next i

RowNumber = RowNumber + Repeat

Next k



 









End Sub
