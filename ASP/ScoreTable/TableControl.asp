<%
Class TableControl
	' Constructor for the class
	Private Sub Class_Initialize
	End Sub

	' Destructor for the class
	Private Sub Class_Terminate
		' do cleanup code here
	End Sub

	Public Sub DisplayTable(XMLFilePath)
		Dim MappedXMLFilePath
		MappedXMLFilePath = Server.MapPath(XMLFilePath)
		If(FileExists(MappedXMLFilePath)) Then
			Set XmlDoc = Server.CreateObject("Microsoft.XMLDOM")
			XmlDoc.async = False
			XmlDoc.Load(MappedXMLFilePath)

			Dim FoundNodes
			Set FoundNodes = XmlDoc.SelectNodes("//DataPoint")
			
			If(FoundNodes.Length > 0) Then
				Dim TableHTML
				TableHTML  = "<Table>"
				TableHTML = TableHTML & "<tr>"
				TableHTML = TableHTML & "<th>"
				TableHTML = TableHTML & "Team"
				TableHTML = TableHTML & "</th>"
				TableHTML = TableHTML & "<th>"
				TableHTML = TableHTML & "Score"
				TableHTML = TableHTML & "</th>"
				TableHTML = TableHTML & "</tr>"
				
				For Each FoundNode in FoundNodes
					TableHTML = TableHTML & "<tr>"
					TableHTML = TableHTML & "<td>"
					TableHTML = TableHTML & FoundNode.getAttribute("AxisLabel")
					TableHTML = TableHTML & "</td>"
					TableHTML = TableHTML & "<td>"
					TableHTML = TableHTML & FoundNode.getAttribute("YValues")
					TableHTML = TableHTML & "</td>"
					TableHTML = TableHTML & "</tr>"
				Next
				
				TableHTML = TableHTML & "</Table>"
				Response.Write(TableHTML)
			End If
			
			Set XmlDoc = Nothing
		End If
	End Sub
	
	Private Function FileExists(XMLFilePath)
		Dim FS, isFileExists
		isFileExists = False
		Set FS = Server.CreateObject("Scripting.FileSystemObject")
		If FS.FileExists(XMLFilePath) = True Then
			isFileExists = True
		End If
		Set FS = Nothing
		
		FileExists = isFileExists
	End Function
End Class
%>