#tag Class
Protected Class CocoaMenuItemKernTighten
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "tightenKerning:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Tighten", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Tighten"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"St\xC3\xA4rker"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE3\x81\x8D\xE3\x81\xA4\xE3\x81\x8F"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Resserrer"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Stringi"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Versmal"
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
