#tag Class
Protected Class CocoaMenuItemFormatText
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Text", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Text"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Text"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x83\x86\xE3\x82\xAD\xE3\x82\xB9\xE3\x83\x88"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Texte"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Testo"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Tekst"
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
