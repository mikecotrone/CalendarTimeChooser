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

	#tag Property, Flags = &h0
		mouseOver As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTopY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		MyDate As Date
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

	#tag Property, Flags = &h0
		SelectedDate As Date
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
		TransMark As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Width As Integer = 30
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="BottomY"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Day"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=false
			Group="Behavior"
			InitialValue="24"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ID"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue="-2147483648"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LeftX"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="NextMonthMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrevMonthMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="RightX"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Row"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Selected"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TopY"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TransMark"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=false
			Group="Behavior"
			InitialValue="30"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="mouseOver"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
