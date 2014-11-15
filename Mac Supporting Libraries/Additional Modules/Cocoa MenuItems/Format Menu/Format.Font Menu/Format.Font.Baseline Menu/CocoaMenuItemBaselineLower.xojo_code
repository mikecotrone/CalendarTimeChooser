#tag Class
Protected Class CocoaMenuItemBaselineLower
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "lowerBaseline:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Lower", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Lower"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Niedriger"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xB8\x8B\xE3\x81\x92\xE3\x82\x8B"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Abaisser"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Riduci"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Omlaag"
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
