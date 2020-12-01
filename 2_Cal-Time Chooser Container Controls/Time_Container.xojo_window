#tag Window
Begin ContainerControl Time_Container
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   True
   HasBackColor    =   False
   Height          =   252
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   True
   LockTop         =   True
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   156
   Begin TimePicker TimePicker1
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      Backdrop        =   0
      colonVar        =   ":"
      DoubleBuffer    =   False
      Draw_AMPM_Selected=   False
      Draw_Hour_Selected=   False
      Draw_Minute_Selected=   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Indent          =   9
      Index           =   -2147483648
      InitialParent   =   ""
      KeyBuffer       =   ""
      Left            =   37
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   13
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   82
   End
   Begin UpDownArrows Time_Nav
      AcceptFocus     =   False
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   34
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   123
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   False
      Top             =   6
      Transparent     =   True
      Visible         =   True
      Width           =   16
   End
   Begin Clock Clock1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      BorderColor     =   &c44444400
      ClockFaceColor  =   &cDDDDDD00
      ClockFaceType   =   0
      ClockHandColor  =   &c00000000
      ClockHourValue  =   0.0
      ClockMinuteValue=   0.0
      ClockSecondValue=   0.0
      DoubleBuffer    =   True
      Enabled         =   True
      Font            =   "Helvetica"
      Height          =   130
      HelpTag         =   ""
      HourCount       =   12
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   13
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   True
      TextColor       =   &c08020200
      Top             =   56
      Transparent     =   True
      UseFocusRing    =   True
      UseGradientFill =   False
      UseGraphicalClockHands=   True
      Visible         =   True
      Width           =   130
   End
   Begin Label TimeZoneLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   2
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   2
      Selectable      =   False
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextAlign       =   1
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   212
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   152
   End
   Begin Timer clockColonFlashTimer
      Enabled         =   True
      Index           =   -2147483648
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  #IF TargetWindows Then
		    Me.DoubleBuffer = True
		    Me.Transparent = False
		    Me.EraseBackground = False
		  #ENDIF
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  g.ForeColor = &cECECEC
		  g.FillRect(0,0,me.Width,me.Height)
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub raiseEventSelectedTime()
		  RaiseEvent SelectedTime(Time_Hour, Time_Minute, Time_AMPM)
		  
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectedTime(inHours as String, inMinutes as String, optional inAMPM as String)
	#tag EndHook


	#tag Property, Flags = &h0
		ClockSecondsCounter As Integer
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mflashSeparator
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mflashSeparator = value
			  
			  Select Case mflashSeparator
			  Case True
			    Self.clockColonFlashTimer.Mode = timer.ModeMultiple
			    Self.clockColonFlashTimer.Period = 1000
			    
			  Case False
			    Self.clockColonFlashTimer.Mode = timer.ModeOff
			    
			    // MAKE SURE DEMO LANDS BACK ON ":"
			    TimePicker1.colonVar = ":"
			    TimePicker1.Refresh(False)
			    
			  End Select
			End Set
		#tag EndSetter
		flashSeparator As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		HideAMPM As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mflashSeparator As boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mTimeMode As Integer = 12
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mTimeMode
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mTimeMode = value
			  
			  Select Case mTimeMode
			  Case 12
			    if TimeModeFirstRunBool = False Then
			      Me.TimePicker1.oneTimeConversion24to12
			    End if
			  Case 24
			    Me.TimePicker1.oneTimeConversion12to24
			    TimeModeFirstRunBool = False
			    
			  End Select
			End Set
		#tag EndSetter
		TimeMode As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		TimeModeFirstRunBool As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_AMPM As String = "AM"
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_AMPM_Len As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_Hour As String = "12"
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_Hour_Len As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_Minute As String = "00"
	#tag EndProperty

	#tag Property, Flags = &h0
		Time_Minute_Len As Integer
	#tag EndProperty


#tag EndWindowCode

#tag Events Time_Nav
	#tag Event
		Sub Down()
		  // Default Behavior
		  if TimePicker1.Draw_Hour_Selected = False AND TimePicker1.Draw_Minute_Selected = False AND TimePicker1.Draw_AMPM_Selected = False Then
		    TimePicker1.Draw_Hour_Selected = True
		  end if
		  
		  // Change Hours Down
		  Select Case TimePicker1.Draw_Hour_Selected
		  Case True
		    if TimeMode = 12 Then
		      TimePicker1.move12HourDown
		    Elseif TimeMode = 24 Then
		      TimePicker1.move24HourDown
		    end if
		  End Select
		  
		  // Change Minutes Down
		  Select Case TimePicker1.Draw_Minute_Selected
		  Case True
		    if TimeMode = 12 Then
		      TimePicker1.move12MinDown
		    Elseif TimeMode = 24 Then
		      TimePicker1.move24MinDown
		    End If
		  End Select
		  
		  // Change AM / PM
		  Select Case TimePicker1.Draw_AMPM_Selected
		  Case True
		    TimePicker1.moveAMPM
		  End Select
		  
		  raiseEventSelectedTime()
		End Sub
	#tag EndEvent
	#tag Event
		Sub Up()
		  // Default Behavior
		  if TimePicker1.Draw_Hour_Selected = False AND TimePicker1.Draw_Minute_Selected = False AND TimePicker1.Draw_AMPM_Selected = False Then
		    TimePicker1.Draw_Hour_Selected = True
		  end if
		  
		  // Change Hours Up
		  Select Case TimePicker1.Draw_Hour_Selected
		  Case True
		    if TimeMode = 12 Then
		      TimePicker1.move12HourUp
		    Elseif TimeMode = 24 Then
		      TimePicker1.move24HourUp
		    end if
		  End Select
		  
		  // Change Minutes Up
		  Select Case TimePicker1.Draw_Minute_Selected
		  Case True
		    if TimeMode = 12 Then
		      TimePicker1.move12MinUp
		    Elseif TimeMode = 24 Then
		      TimePicker1.move24MinUp
		    end if
		  End Select
		  
		  // Change AM / PM
		  Select Case TimePicker1.Draw_AMPM_Selected
		  Case True
		    TimePicker1.moveAMPM
		  End Select
		  
		  raiseEventSelectedTime()
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  // WINDOWS ADJUSTMENTS
		  #IF TargetWindows Then
		    Me.Top = Me.Top + 4
		  #ENDIF
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TimeZoneLabel
	#tag Event
		Sub Open()
		  'Using Xojo.Core
		  'Var thisDate as Xojo.Core.Date
		  Var tz As TimeZone = TimeZone.Current
		  
		  Var thisText As String = tz.Abbreviation
		  
		  Me.Text = thisText
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events clockColonFlashTimer
	#tag Event
		Sub Action()
		  If TimePicker1.colonVar = " " Then
		    TimePicker1.colonVar = ":" 
		  Else
		    TimePicker1.colonVar = " "
		  End If
		  TimePicker1.Refresh(False)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="False"
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
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
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
		Name="ClockSecondsCounter"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HideAMPM"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Visible=false
		Group="Position"
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
		Name="TimeMode"
		Visible=false
		Group="Behavior"
		InitialValue="12"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TimeModeFirstRunBool"
		Visible=false
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_AMPM"
		Visible=false
		Group="Behavior"
		InitialValue="AM"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_AMPM_Len"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_Hour"
		Visible=false
		Group="Appearance"
		InitialValue="12"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_Hour_Len"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_Minute"
		Visible=false
		Group="Behavior"
		InitialValue="00"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Time_Minute_Len"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
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
		InitialValue="300"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="flashSeparator"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
