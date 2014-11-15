#tag Class
Protected Class CocoaMenuItemDelete
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "delete:"
		End Function
	#tag EndEvent


	#tag Constant, Name = LocalizedText, Type = String, Dynamic = True, Default = \"Delete", Scope = Public
		#Tag Instance, Platform = Any, Language = Default, Definition  = \"Delete"
		#Tag Instance, Platform = Any, Language = de, Definition  = \"L\xC3\xB6schen"
		#Tag Instance, Platform = Any, Language = ja, Definition  = \"\xE5\x89\x8A\xE9\x99\xA4"
		#Tag Instance, Platform = Any, Language = fr, Definition  = \"Supprimer"
		#Tag Instance, Platform = Any, Language = it, Definition  = \"Elimina"
		#Tag Instance, Platform = Any, Language = bn, Definition  = \"\xE0\xA6\xAE\xE0\xA7\x81\xE0\xA6\x9B\xE0\xA7\x87 \xE0\xA6\xAB\xE0\xA7\x87\xE0\xA6\xB2\xE0\xA6\xBE"
		#Tag Instance, Platform = Any, Language = nl, Definition  = \"Verwijder"
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
