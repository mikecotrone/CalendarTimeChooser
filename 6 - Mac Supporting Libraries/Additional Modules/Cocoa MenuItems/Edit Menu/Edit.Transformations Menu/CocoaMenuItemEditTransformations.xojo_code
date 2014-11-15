#tag Class
Protected Class CocoaMenuItemEditTransformations
Inherits CocoaMenuItemSupermenu
	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Transformations", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Transformations"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Transformationen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE5\xA4\x89\xE6\x8F\x9B"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Transformations"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Trasformazioni"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Omzetting"
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
