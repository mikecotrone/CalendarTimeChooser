#tag Class
Protected Class CocoaMenuItemFormatOutline
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "outline:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Outline", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Outline"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Konturschrift"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x82\xA2\xE3\x82\xA6\xE3\x83\x88\xE3\x83\xA9\xE3\x82\xA4\xE3\x83\xB3"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Contour"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Bordato"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Contour"
	#tag EndConstant


	#tag ViewBehavior
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
