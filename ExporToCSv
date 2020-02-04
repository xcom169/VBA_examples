Attribute VB_Name = "Module1"
Sub CopyToCVS()
Dim MyFileName As String
Dim LastRow As Integer
Dim r, c As Integer
Dim WorkSheetCounter As Integer

'Get my file my from Save as dialog window
MyFileName = Application.GetSaveAsFilename("", "CSV File (*.csv), *.csv") '  "LSMW" & Format(Time, "mmss")

'Makes sure the path name ends with "\":
If Not Right(MyPath, 1) = "\" Then MyPath = MyPath & "\"

'Iterate through Worksheets No. 1 and No 10
Worksheets(1).Activate

For WorkSheetCounter = 1 To Worksheets.Count


'Copies the sheet to a new workbook:
ActiveSheet.Copy

'Deletes first line (header)
Rows("1:1").Select
Selection.Delete Shift:=xlUp


'Crop the useful area
LastRow = Cells(Rows.Count, 2).End(xlUp).Row
Rows(LastRow + 1).Select
Range(Selection, Selection.End(xlDown)).Select
Selection.Delete Shift:=xlUp
Cells(1, 1).Select

'Add sheet's name to filename
MyFileName = Format(Time, "S") & ActiveSheet.Name


'Makes sure the filename ends with ".csv"
If Not Right(MyFileName, 4) = ".csv" Then MyFileName = MyFileName & ".csv"

'Create BinaryStream and export data to CVS(Tab chr(9))
Const adTypeText = 2
Const adSaveCreateOverWrite = 2

Set wkb = ActiveSheet
Dim BinaryStream
Set BinaryStream = CreateObject("ADODB.Stream")
BinaryStream.Charset = "UTF-8"
BinaryStream.Type = adTypeText
BinaryStream.Open

For r = 1 To LastRow
s = ""
c = 1
While Not IsEmpty(wkb.Cells(r, c).Value)
'Add tabulator separator
s = s & wkb.Cells(r, c).Value & Chr(9)
c = c + 1
Wend
BinaryStream.WriteText s, 1
Next r

BinaryStream.SaveToFile MyFileName, adSaveCreateOverWrite
'Close Binary stream
BinaryStream.Close
'Close Workbook, Do not save
ActiveWorkbook.Close False

'MsgBox "CSV generated successfully"

'If last Worksheet then Stop adding 1 to Index
If Not ActiveSheet.Index = Worksheets.Count Then
Worksheets(ActiveSheet.Index + 1).Select
End If


Next WorkSheetCounter

End Sub


