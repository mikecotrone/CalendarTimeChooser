#tag Class
Protected Class CocoaMenuItemFormatFont
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Font", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Font"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Schrift"
		#Tag Instance, Platform = Any, Language = he, Definition  = \"\xE3\x83\x95\xE3\x82\xA9\xE3\x83\xB3\xE3\x83\x88"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Police"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Font"
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xAB\xE0\xA6\xA8\xE0\xA7\x8D\xE0\xA6\x9F"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Lettertype"
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
