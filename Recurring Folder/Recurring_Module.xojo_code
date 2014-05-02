#tag Module
Protected Module Recurring_Module
	#tag Method, Flags = &h0
		Sub Open_SelectRecurringDefault()
		  Dim TodaysDate as New Date
		  Recurring_Module.Selected_MenuItem = New SelectedMenuItem
		  Recurring_Module.Selected_MenuItem.Row = 0
		  Recurring_Module.Selected_MenuItem.Item_String = "Once Only"
		  Recurring_Module.Selected_MenuItem.SelectedItem_Date =TodaysDate
		  Recurring_Module.Selected_MenuItem.Selected = True
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		Selected_MenuItem As SelectedMenuItem
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
End Module
#tag EndModule
