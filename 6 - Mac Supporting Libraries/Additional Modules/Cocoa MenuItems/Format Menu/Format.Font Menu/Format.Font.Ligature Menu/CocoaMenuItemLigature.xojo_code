#tag Class
Protected Class CocoaMenuItemLigature
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Ligature", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Ligature"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Ligaturen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x83\xAA\xE3\x82\xAC\xE3\x83\x81\xE3\x83\xA3"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ligature"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Legatura"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Ligaturen"
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
