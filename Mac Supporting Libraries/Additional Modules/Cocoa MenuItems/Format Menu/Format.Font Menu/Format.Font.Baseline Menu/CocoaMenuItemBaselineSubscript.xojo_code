#tag Class
Protected Class CocoaMenuItemBaselineSubscript
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "subscript:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Subscript", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Subscript"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Tiefgestellt"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xB8\x8B\xE4\xBB\x98\xE3\x81\x8D"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Indice"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Pedice"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Subscript"
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
