#tag Class
Protected Class CocoaMenuItemBaselineSuperscript
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "superscript:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Superscript", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Superscript"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Hochgestellt"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xB8\x8A\xE4\xBB\x98\xE3\x81\x8D"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Exposant"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Apice"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Superscript"
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
