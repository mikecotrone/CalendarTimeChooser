#tag Class
Protected Class RecurringCanvas
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
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
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  addMenuItems()
		  
		  Var result As MenuItem = myMenu.PopUp
		  
		  if result<>nil then
		    
		    RecurringMode = result.Tag
		    RecurringMode = RecurringMode + 1
		    
		    // Raise User Defined Event
		    Var thisSelectedRecurringStr as String = result.Text
		    Calendar_Container(window).raiseRecurringEvent(thisSelectedRecurringStr)
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  myMenu=new MenuItem
		  
		  
		  // WINDOWS OFFSET ADJUSTMENTS
		  #IF TargetWindows Then
		    Me.Top = Me.Top - 2
		  #ENDIF
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub addMenuItems()
		  myMenu=new MenuItem
		  // Get Realtime User Selected Month
		  Var OTF_DayOfMonth_String as string = Calendar_Container(window).Calendar1.SelectedMonth
		  // Get Realtime User Selected Day of the Week
		  Var DayofWeekString as String = convertDayOfWeek_Int_to_Str(Calendar_Container(window).Calendar1.SelectedDate.DayOfWeek)
		  'Var OTF_DayOfWeek_String as string =DayofWeekString
		  
		  // Get User Selected Day
		  Var OTF_Day_String as string = Calendar_Container(window).Calendar1.SelectedDate.Day.ToString
		  Var DayEnding as String
		  if OTF_Day_String.ToDouble > 1 Then
		    DayEnding = "th"
		  Else
		    DayEnding = "st"
		  End if
		  
		  // BUILD MENU
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_OnceOnly_Str,0)
		  
		  myMenu.Append new MenuItem(MenuItem.TextSeparator)
		  
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_Every_Str+DayofWeekString,1)
		  
		  myMenu.Append new MenuItem(Localized_Recurring_Day_Str+OTF_Day_String+Localized_Recurring_of_Every_Str+OTF_DayOfMonth_String,2)
		  
		  myMenu.Append new MenuItem(Cal_Time_Strings_Module.Localized_Recurring_Every_Str + OTF_DayOfMonth_String + " "+OTF_Day_String+DayEnding,3) 
		  
		  // HANDLE CHECK MARK
		  if RecurringMode > -1 then 
		    If RecurringMode = 1 Then
		      myMenu.Item(RecurringMode-1).Checked=true
		    Else
		      myMenu.Item(RecurringMode).Checked=true
		    end if
		    
		  end if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function convertDayOfWeek_Int_to_Str(inDayofWeek_Int as Integer) As String
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


	#tag Property, Flags = &h0
		myMenu As MenuItem
	#tag EndProperty

	#tag Property, Flags = &h0
		RecurringMode As Integer = 0
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AllowAutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Tooltip"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocusRing"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowFocus"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowTabs"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Left"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockBottom"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockLeft"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockRight"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="LockTop"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Boolean"
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
			Name="RecurringMode"
			Visible=false
			Group="Behavior"
			InitialValue="0"
			Type="Integer"
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
			Name="TabIndex"
			Visible=true
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabPanelIndex"
			Visible=false
			Group="Position"
			InitialValue="0"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TabStop"
			Visible=true
			Group="Position"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Top"
			Visible=true
			Group="Position"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Transparent"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
