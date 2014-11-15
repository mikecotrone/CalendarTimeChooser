#tag Class
Class PutFileDialog
Inherits NavigationDialog
	#tag Event
		Function CreateDialog(CreationOptions as NavDialogCreationOptions, eventHandler as Ptr, UserData as Ptr) As Ptr
		  #if targetMacOS
		    soft declare function NavCreatePutFileDialog lib CarbonLib (inOptions as Ptr, inFileType as OSType, inFileCreator as OSType, inEventProc as Ptr, inClientData as Ptr, ByRef outDialog as Ptr) as Integer
		    
		    CreationOptions.Top = 0
		    CreationOptions.Left = 0
		    
		    
		    dim theRef as Ptr
		    dim OSStatus as Integer = NavCreatePutFileDialog(CreationOptions, me.pType, me.pCreator, eventHandler, UserData, theRef)
		    If OSStatus <> 0 then
		      theRef = nil
		      System.Log System.LogLevelError, "NavigationDialog.Show: NavCreatePutFileDialog returned error " + Str(OSStatus) + "."
		    End if
		    return theRef
		    
		  #else
		    #pragma unused CreationOptions
		    #pragma unused eventHandler
		    #pragma unused UserData
		  #endif
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor(creator as String, type as String)
		  me.pCreator = creator
		  me.pType = type
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private pCreator As OSType
	#tag EndProperty

	#tag Property, Flags = &h21
		Private pType As OSType
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
