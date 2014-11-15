#tag Class
Protected Class CocoaMenuItemModifyFont
Inherits CocoaMenuItem
	#tag Event
		Function ActionSelectorName() As String
		  return "modifyFont:"
		End Function
	#tag EndEvent

	#tag Event
		Function Target(menuItemRef as Ptr) As Ptr
		  #if targetCocoa
		    declare function sharedFontManager lib CocoaLib selector "sharedFontManager" (class_id as Ptr) as Ptr
		    
		    return sharedFontManager(Cocoa.NSClassFromString("NSFontManager"))
		  #endif
		  
		  #pragma unused menuItemRef
		  
		End Function
	#tag EndEvent


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
