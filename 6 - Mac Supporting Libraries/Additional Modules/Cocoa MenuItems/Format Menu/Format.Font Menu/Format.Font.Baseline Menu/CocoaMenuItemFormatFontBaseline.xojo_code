#tag Class
Protected Class CocoaMenuItemFormatFontBaseline
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Baseline", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Baseline"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Schriftlinie"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x83\x99\xE3\x83\xBC\xE3\x82\xB9\xE3\x83\xA9\xE3\x82\xA4\xE3\x83\xB3"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ligne de base"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Linea di base"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Basislijn"
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
