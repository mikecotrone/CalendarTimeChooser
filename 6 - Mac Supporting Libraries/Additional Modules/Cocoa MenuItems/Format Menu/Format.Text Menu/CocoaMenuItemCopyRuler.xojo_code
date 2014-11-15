#tag Class
Protected Class CocoaMenuItemCopyRuler
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "copyRuler:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Copy Ruler", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Copy Ruler"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Lineal kopieren"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x83\xAB\xE3\x83\xBC\xE3\x83\xA9\xE3\x82\x92\xE3\x82\xB3\xE3\x83\x94\xE3\x83\xBC"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Coller"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Copia righello"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Kopieer liniaal"
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
