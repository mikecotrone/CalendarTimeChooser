#tag Window
Begin Window DateTimeWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   272
   ImplicitInstance=   True
   LiveResize      =   "True"
   MacProcID       =   0
   MaxHeight       =   272
   MaximizeButton  =   True
   MaxWidth        =   416
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   272
   MinimizeButton  =   True
   MinWidth        =   416
   Placement       =   0
   Resizeable      =   False
   Title           =   ""
   Visible         =   True
   Width           =   416
   Begin Date_Time_Container Date_Time_Container1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AllowMultipleCalendarSelections=   False
      AutoDeactivate  =   True
      BackColor       =   &c9D9D9D00
      Backdrop        =   0
      ClockFaceBorderColor=   &c00000000
      ClockFaceHourCount=   0
      ClockFaceTextColor=   &c00000000
      ClockFaceTextFont=   ""
      ClockFaceType   =   0
      ClockHandColor  =   &c00000000
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   True
      Height          =   272
      HelpTag         =   ""
      IncludePrevNextMonthDays=   False
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LocalizationInt =   0
      LockBottom      =   True
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   True
      LockTop         =   True
      Scope           =   2
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      UseGraphicalClockHands=   True
      Visible         =   True
      VisiblePickers  =   0
      WeekStartsOnMonday=   False
      Width           =   416
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  // Uncomment if you would like to allow a user to hit the escape key to close this window
		  
		  //if asc(key)=27 then
		  //me.close
		  //Return True
		  //end
		End Function
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  Dim d As New date
		  StartYear = d.year
		  endyear = d.year
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub Invalidate(eraseBackground As Boolean = True)
		  // Calling the overridden superclass method.
		  // Note that this may need modifications if there are multiple  choices.
		  // Possible calls:
		  // Invalidate(eraseBackground As Boolean = True) -- From Window
		  // Invalidate(x As Integer, y As Integer, width As Integer, height As Integer, eraseBackground As Boolean = True) -- From Window
		  Super.Invalidate(eraseBackground)
		  
		  Date_Time_Container1.Time_Container1.Clock1.Invalidate(False)
		  Date_Time_Container1.Time_Container1.TimePicker1.Invalidate(False)
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Date_Time_Container1.Calendar_Container1.Calendar1.AllowMultipleSelections
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Calendar_Container1.Calendar1.AllowMultipleSelections = value
			  
			End Set
		#tag EndSetter
		AllowMultipleCalendarSelections As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockFaceBorderColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceBorderColor = value
			End Set
		#tag EndSetter
		ClockFaceBorderColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockFaceHourCount
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceHourCount = value
			End Set
		#tag EndSetter
		ClockFaceHourCount As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockFaceTextColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceTextColor = value
			End Set
		#tag EndSetter
		ClockFaceTextColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockFaceTextFont
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceTextFont = value
			End Set
		#tag EndSetter
		ClockFaceTextFont As String
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockFaceType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceType=value
			End Set
		#tag EndSetter
		ClockFaceType As integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Date_Time_Container1.ClockHandColor
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockHandColor = value
			End Set
		#tag EndSetter
		ClockHandColor As Color
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.Calendar_Container1.drawColSeperatorLines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Calendar_Container1.drawColSeperatorLines = Value
			End Set
		#tag EndSetter
		DrawColSeperatorLines As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.Calendar_Container1.Calendar1.EndYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Calendar_Container1.Calendar1.EndYear = Value
			End Set
		#tag EndSetter
		EndYear As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.Time_Container1.flashSeparator
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Time_Container1.flashSeparator = Value
			End Set
		#tag EndSetter
		flashSeparator As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.Time_Container1.HideAMPM
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Time_Container1.HideAMPM = value
			  
			End Set
		#tag EndSetter
		HideAMPM As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Date_Time_Container1.IncludePrevNextMonthDays
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.IncludePrevNextMonthDays=value
			  
			End Set
		#tag EndSetter
		IncludePrevNextMonthDays As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.LocalizationInt
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  // Redirect Values to the Date-Calendar Container this way we can stay non dependant on this Window in case user wants something else other than this window
			  Date_Time_Container1.LocalizationInt = Value
			End Set
		#tag EndSetter
		LocalizationInt As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.SelectedDate
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.SelectedDate=value
			End Set
		#tag EndSetter
		SelectedDate As Date
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Note
			MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.StartYear = 2010
			MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.EndYear = 2020
		#tag EndNote
		#tag Getter
			Get
			  return Date_Time_Container1.Calendar_Container1.Calendar1.StartYear
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Calendar_Container1.Calendar1.StartYear = Value
			  
			End Set
		#tag EndSetter
		StartYear As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.Time_Container1.TimeMode
			  
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.Time_Container1.TimeMode = value
			  
			End Set
		#tag EndSetter
		TimeMode As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Date_Time_Container1.UseGraphicalClockHands
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.UseGraphicalClockHands=value
			  
			  
			End Set
		#tag EndSetter
		UseGraphicalClockHands As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.VisiblePickers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.VisiblePickers=value
			End Set
		#tag EndSetter
		VisiblePickers As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Date_Time_Container1.WeekStartsOnMonday
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.WeekStartsOnMonday=value
			End Set
		#tag EndSetter
		WeekStartsOnMonday As Boolean
	#tag EndComputedProperty


#tag EndWindowCode

#tag ViewBehavior
	#tag ViewProperty
		Name="MinimumWidth"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimumHeight"
		Visible=true
		Group="Size"
		InitialValue="64"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumWidth"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximumHeight"
		Visible=true
		Group="Size"
		InitialValue="32000"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Type"
		Visible=true
		Group="Frame"
		InitialValue="0"
		Type="Types"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasCloseButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMaximizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasMinimizeButton"
		Visible=true
		Group="Frame"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasFullScreenButton"
		Visible=true
		Group="Frame"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DefaultLocation"
		Visible=true
		Group="Behavior"
		InitialValue="0"
		Type="Locations"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
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
		Name="BackgroundColor"
		Visible=true
		Group="Background"
		InitialValue="&hFFFFFF"
		Type="Color"
		EditorType="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AllowMultipleCalendarSelections"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Name="ClockFaceBorderColor"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceHourCount"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextColor"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextFont"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceType"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockHandColor"
		Visible=false
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Visible=false
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="IncludePrevNextMonthDays"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		InitialValue=""
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="LocalizationInt"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		InitialValue=""
		Type="MenuBar"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Visible=false
		Group="Appearance"
		InitialValue="True"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
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
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseGraphicalClockHands"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
		Name="VisiblePickers"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="WeekStartsOnMonday"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="DrawColSeperatorLines"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="EndYear"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
	#tag ViewProperty
		Name="HideAMPM"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Boolean"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="StartYear"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
	#tag ViewProperty
		Name="TimeMode"
		Visible=false
		Group="Behavior"
		InitialValue=""
		Type="Integer"
		EditorType=""
	#tag EndViewProperty
#tag EndViewBehavior
