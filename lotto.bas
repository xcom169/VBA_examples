Attribute VB_Name = "Lottó"
Option Explicit

'1. Select 6 random numbers from 42
'2. Sort them
'3. if any numbers are the same, select a random number to replace them
'4. repeat steps 2 & 3 until all numbers are different

'When debugging this code, set ArraySize to a large number (say 25), so
'you'll get lots of duplicates and so testing will be easier.

Sub Main()

Dim i As Integer
Dim NumberString As String
Dim temp1 As Integer
Dim Sorted As Boolean
Dim totalnumbers As Integer
Dim arraysize As Integer



'Const ArraySize = 10 'Choose this amount of numbers from TotalNumbers...
'Const TotalNumbers = 50 'Choose from these numbers...
arraysize = Application.InputBox("Hány számot szeretnél kihúzni?", "Hány számot szeretnél kihúzni?", 1, , , , , 1)
totalnumbers = Application.InputBox("Hány számból szeretnél sorsolni?", "Hány számból szeretnél sorsolni?", 1, , , , , 1)



'Dim arrRandom(1 To ArraySize) As Integer
Dim arrrandom() As Integer
ReDim arrrandom(1 To arraysize)


Randomize
For i = 1 To arraysize
1 arrrandom(i) = Int(Rnd * totalnumbers) + 1
Next i

Sorted = False

'The nested while loop is not wholly necessary for the program to work.
'You can take it out. The reason I've included it is for efficiency -
'when the nested while finishes, the numbers will be sorted, ready for
'comparison. If the nested while loop were excluded, the test for
'duplicates would not be comparing values from a sorted array and would
'therefore be pointless.
'But if you can come up with a nicer way of doing it...
While Sorted = False

'Sort the array in ascending order
'The logic here assumes that if one swap is made, the array is not
'sorted, so it goes back to the top and sorts again. When no swaps
'are made, the Sorted variable will be true and the loop will end.
While Sorted = False
Sorted = True
For i = 1 To UBound(arrrandom) - 1
If arrrandom(i) > arrrandom(i + 1) Then
temp1 = arrrandom(i)
arrrandom(i) = arrrandom(i + 1)
arrrandom(i + 1) = temp1
Sorted = False
End If
Next i
Wend

'Check for duplicates - if there are any, replace them with another
'random number. When the for loop finishes, we need to sort again,
'at which point we go back to the top of the while loop.
For i = 1 To UBound(arrrandom) - 1
If arrrandom(i) = arrrandom(i + 1) Then
arrrandom(i) = Int(Rnd * totalnumbers) + 1
Sorted = False
End If
Next i

Wend

'Output the chosen numbers via a message box
NumberString = arrrandom(1)
For i = 2 To UBound(arrrandom)
NumberString = NumberString & ", " & arrrandom(i)
Next i
MsgBox NumberString

For i = 1 To UBound(arrrandom)
Cells(arrrandom(i), 1).Interior.ColorIndex = 35


Next i


End Sub
