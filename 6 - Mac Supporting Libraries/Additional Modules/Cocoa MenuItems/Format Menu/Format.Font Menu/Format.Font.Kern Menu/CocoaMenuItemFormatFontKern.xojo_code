#tag Class
Protected Class CocoaMenuItemFormatFontKern
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Kern", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Kern"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Unterschneidungen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x82\xAB\xE3\x83\xBC\xE3\x83\x8B\xE3\x83\xB3\xE3\x82\xB0"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Cr\xC3\xA9nage"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Crenatura"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Spati\xC3\xABring"
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
