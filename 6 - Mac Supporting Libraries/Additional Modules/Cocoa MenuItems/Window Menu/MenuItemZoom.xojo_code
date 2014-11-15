#tag Class
Protected Class MenuItemZoom
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "performZoom:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Zoom", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Zoom"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Zoomen"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Zoom"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Ridimensiona"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Vergroot/verklein"
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
