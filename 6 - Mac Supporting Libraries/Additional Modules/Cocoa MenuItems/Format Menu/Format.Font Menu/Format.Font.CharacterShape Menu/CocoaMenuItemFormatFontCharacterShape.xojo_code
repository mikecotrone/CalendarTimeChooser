#tag Class
Protected Class CocoaMenuItemFormatFontCharacterShape
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Character Shape", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Character Shape"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Buchstabenform"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE6\x96\x87\xE5\xAD\x97\xE3\x81\xAE\xE5\xBD\xA2\xE7\x8A\xB6"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Forme de caract\xC3\xA8re"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Forma Carattere"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Tekenvorm"
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
