#tag Module
Protected Module Cal_Time_Strings_Module
	#tag Property, Flags = &h0
		Localized_CalendarOnlyTitle_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_ChooseBothTitle_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Recurring_Day_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Recurring_Every_Month_Day_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Recurring_Every_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Recurring_of_Every_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Recurring_OnceOnly_Str As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_TimeOnlyTitle_Str As String
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
			Name="Localized_CalendarOnlyTitle_Str"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_ChooseBothTitle_Str"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_TimeOnlyTitle_Str"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
