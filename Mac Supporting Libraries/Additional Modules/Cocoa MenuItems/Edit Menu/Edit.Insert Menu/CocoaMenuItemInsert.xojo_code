#tag Class
Protected Class CocoaMenuItemInsert
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Insert", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Insert"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Einf\xC3\xBCgen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE6\x8C\xBF\xE5\x85\xA5"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Ins\xC3\xA9rer"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Inserisci"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Voeg in"
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
