#tag Class
Protected Class CocoaMenuItemWritingDirectionBase
Inherits CocoaMenuItem
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Paragraph", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Paragraph"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Absatz"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE6\xAE\xB5\xE8\x90\xBD"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Paragraphe"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Paragrafo"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Alinea"
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
