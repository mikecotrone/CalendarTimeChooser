#tag Class
Protected Class RecurringCanvas
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseEnter()
		  Me.MouseCursor = System.Cursors.FingerPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  mAddMenuItems
		  dim result As MenuItem=myMenu.PopUp
		  if result<>nil then 
		    RecurringMode=result.Tag
		    
		    // Raise User Defined Event
		    Calendar_Container(window).mRaiseEvent_Recurring(result.Text)
		  end if
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  myMenu=new MenuItem
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(Reoccur20x20,0,0)
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function fConvertDayOfWeek_Int_to_Str(inDayofWeek_Int as Integer) As String
		  Select Case inDayofWeek_Int
		    
		  Case 1
		    Return Calendar_Container(window).Calendar1.Localized_Sunday
		  Case 2
		    Return Calendar_Container(window).Calendar1.Localized_Monday
		  Case 3
		    Return Calendar_Container(window).Calendar1.Localized_Tuesday
		  Case 4
		    Return Calendar_Container(window).Calendar1.Localized_Wednesday
		  Case 5
		    Return Calendar_Container(window).Calendar1.Localized_Thursday
		  Case 6
		    Return Calendar_Container(window).Calendar1.Localized_Friday
		  Case 7
		    Return Calendar_Container(window).Calendar1.Localized_Saturday
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mAddMenuItems()
		  myMenu=new MenuItem
		  // Get Realtime User Selected Month
		  dim OTF_DayOfMonth_String as string = Calendar_Container(window).Calendar1.SelectedMonth
		  // Get Realtime User Selected Day of the Week
		  Dim DayofWeekString as String = fConvertDayOfWeek_Int_to_Str(Calendar_Container(window).Calendar1.SelectedDate.DayOfWeek)
		  dim OTF_DayOfWeek_String as string =DayofWeekString
		  
		  // Get User Selected Day
		  dim OTF_Day_String as string = Str(Calendar_Container(window).Calendar1.SelectedDate.Day)
		  Dim DayEnding as String
		  if CDbl(OTF_Day_String) > 1 Then
		    DayEnding = "th"
		  Else
		    DayEnding = "st"
		  End if
		  
		  // Update options
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_OnceOnly_Str,0) 
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_Every_Str+DayofWeekString,1) 
		  myMenu.Append new MenuItem(Localized_Recurring_Day_Str+OTF_Day_String+Localized_Recurring_of_Every_Str+OTF_DayOfMonth_String,2)
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_Every_Str + OTF_DayOfMonth_String + " "+OTF_Day_String+DayEnding,3) //Localized_Recurring_Every_Month_Day_Str
		  if RecurringMode>-1 then myMenu.Item(RecurringMode).Checked=true
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		myMenu As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RecurringMode As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Name"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="RecurringMode"
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Super"
			Visible=true
			Group="ID"
			Type="String"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Group="Position"
			InitialValue="0"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
