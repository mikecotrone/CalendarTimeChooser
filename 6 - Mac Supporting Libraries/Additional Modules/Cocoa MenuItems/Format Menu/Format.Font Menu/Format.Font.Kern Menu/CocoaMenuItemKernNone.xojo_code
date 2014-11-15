#tag Class
Protected Class CocoaMenuItemKernNone
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "turnOffKerning:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Use None", Scope = Public
		#Tag Instance, Platform = Any, Language = en, Definition  = \"Use None"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"Nicht verwenden"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE4\xBD\xBF\xE7\x94\xA8\xE3\x81\x97\xE3\x81\xAA\xE3\x81\x84"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Aucun"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Non utilizzare nessuna"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Geen"
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
