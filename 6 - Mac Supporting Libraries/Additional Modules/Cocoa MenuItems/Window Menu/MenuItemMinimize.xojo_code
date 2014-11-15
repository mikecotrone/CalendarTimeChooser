#tag Class
Protected Class MenuItemMinimize
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "performMiniaturize:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Minimize", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Minimize"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Im Dock ablegen"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"R\xC3\xA9duire"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Contrai"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Minimaliseer"
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
