#tag Class
Class GetFileDialog
Inherits NavigationDialog
	#tag Event
		Function CreateDialog(CreationOptions as NavDialogCreationOptions, eventHandler as Ptr, UserData as Ptr) As Ptr
		  #if targetMacOS
		    soft declare function NavCreateGetFileDialog lib CarbonLib (inOptions as Ptr, inTypeList as Ptr, inEventProc as Ptr, inPreviewProc as Ptr, inFilterProc as Ptr, inClientData as Ptr, ByRef outDialog as Ptr) as Integer
		    
		    dim NavList as new MemoryBlock(12) //actually 8 + type list count
		    NavList.StringValue(0, 4) = kNavGenericSignature
		    NavList.Short(6) = 0
		    
		    dim NavListHandle as new MemoryBlock(4)
		    NavListHandle.Ptr(0) = NavList
		    dim theRef as Ptr
		    dim OSStatus as Integer = NavCreateGetFileDialog(CreationOptions, navListHandle, eventHandler, nil, nil, UserData, theRef)
		    if OSStatus <> 0 then
		      theRef = nil
		      System.Log System.LogLevelError, "NavigationDialog.Show: NavCreateGetFileDialog returned error " + Str(OSStatus) + "."
		    end if
		    return theRef
		    
		  #else
		    #pragma unused CreationOptions
		    #pragma unused eventHandler
		    #pragma unused UserData
		  #endif
		End Function
	#tag EndEvent

	#tag Event
		Sub UserActionOpen(items() as FolderItem)
		  me.pSelection = Copy(items)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Shared Function Copy(theList() as FolderItem) As FolderItem()
		  dim theCopy() as FolderItem
		  
		  for i as Integer = 0 to UBound(theList)
		    theCopy.Append new FolderItem(theList(i))
		  next
		  
		  return theCopy
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function Selection() As FolderItem()
		  return Copy(me.pSelection)
		End Function
	#tag EndMethod


	#tag Property, Flags = &h21
		Private pSelection() As FolderItem
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
