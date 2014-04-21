#tag Class
Protected Class CalendarButtonClass
	#tag Property, Flags = &h0
		BottomY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Day As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Height As Integer = 24
	#tag EndProperty

	#tag Property, Flags = &h0
		ID As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return RightX - Width
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mLeftX = value
			End Set
		#tag EndSetter
		LeftX As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mLeftX As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTopY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		NextMonthMark As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		PrevMonthMark As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		RightX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Row As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Selected As boolean
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return BottomY - Height
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTopY = value
			End Set
		#tag EndSetter
		TopY As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		Width As Integer = 30
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BottomY"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Day"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Group="Behavior"
			InitialValue="24"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
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
			Name="LeftX"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightX"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Row"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Group="Behavior"
			Type="boolean"
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
		#tag ViewProperty
			Name="TopY"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
