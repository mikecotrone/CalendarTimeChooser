#tag Class
Protected Class CocoaMenuItemKernLoosen
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "loosenKerning:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Loosen", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Loosen"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Geringer"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x82\x86\xE3\x82\x8B\xE3\x81\x8F"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Desserrer"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Allarga"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Uitgerekt"
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
