#tag Class
Protected Class CocoaMenuItemSupermenu
Inherits CocoaMenuItem
	#tag Event
		Function Action() As Boolean
		  //for reasons that I don't yet understand
		  return true
		End Function
	#tag EndEvent

	#tag Event
		Function ActionSelectorName() As String
		  return "submenuAction:"
		End Function
	#tag EndEvent

	#tag Event
		Function Target(menuItemRef as Ptr) As Ptr
		  #if targetCocoa
		    declare function submenu lib CocoaLib selector "submenu" (obj_id as Ptr) as Ptr
		    
		    return submenu(menuitemRef)
		    
		  #else
		    #pragma unused menuItemRef
		  #endif
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
