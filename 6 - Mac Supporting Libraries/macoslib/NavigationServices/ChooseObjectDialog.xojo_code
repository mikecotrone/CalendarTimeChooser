#tag Class
Class ChooseObjectDialog
Inherits NavigationDialog
	#tag Event
		Function CreateDialog(CreationOptions as NavDialogCreationOptions, eventHandler as Ptr, UserData as Ptr) As Ptr
		  #if targetMacOS
		    soft declare function NavCreateChooseObjectDialog lib CarbonLib (inOptions as Ptr, inEventProc as Ptr, inPreviewProc as Ptr, inFilterProc as Ptr, inClientData as Ptr, ByRef outDialog as Ptr) as Integer
		    
		    dim theRef as Ptr
		    dim OSStatus as Integer = NavCreateChooseObjectDialog(CreationOptions, eventHandler, nil, nil, UserData, theRef)
		    If OSStatus <> 0 then
		      theRef = nil
		      System.Log System.LogLevelError, "NavigationDialog.Show: NavCreateChooseObjectDialog returned error " + Str(OSStatus) + "."
		    End if
		    return theRef
		    
		  #else
		    #pragma unused CreationOptions
		    #pragma unused eventHandler
		    #pragma unused UserData
		  #endif
		End Function
	#tag EndEvent

	#tag Event
		Sub UserActionChoose(items() as FolderItem)
		  if UBound(items) > -1 then
		    me.pSelection = items(0)
		  end if
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Function Selection() As FolderItem
		  if me.pSelection <> nil then
		    return new FolderItem(me.pSelection)
		  else
		    return nil
		  end if
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private pSelection As FolderItem
	#tag EndProperty


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
