#tag Window
Begin Window DateTimeWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   227
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   227
   MaximizeButton  =   True
   MaxWidth        =   394
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   227
   MinimizeButton  =   True
   MinWidth        =   394
   Placement       =   0
   Resizeable      =   False
   Title           =   ""
   Visible         =   True
   Width           =   394
   Begin Date_Time_Container Date_Time_Container1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &c9D9D9D00
      Backdrop        =   0
      ClockFaceBorderColor=   &c00000000
      ClockFaceColor  =   &c00000000
      ClockFaceHourCount=   0
      ClockFaceTextColor=   &c00000000
      ClockFaceTextFont=   ""
      ClockHandColor  =   &c00000000
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   True
      Height          =   227
      HelpTag         =   ""
      IncludePrevNextMonthDays=   False
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   0
      Transparent     =   True
      UseFocusRing    =   False
      UseGraphicalClockHands=   True
      Visible         =   True
      WeekStartsOnMonday=   False
      Width           =   394
   End
End
#tag EndWindow

#tag WindowCode
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
			  return Date_Time_Container1.ClockFaceColor
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Date_Time_Container1.ClockFaceColor = value
			End Set
		#tag EndSetter
		ClockFaceColor As Color
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
		ClockFaceType As ClockFaceType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Date_Time_Container1.ClockHandColor
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
		VisiblePickers As Date_Time_Container.PickerElements
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
		Name="BackColor"
		Visible=true
		Group="Appearance"
		InitialValue="&hFFFFFF"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Backdrop"
		Visible=true
		Group="Appearance"
		Type="Picture"
		EditorType="Picture"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceBorderColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceHourCount"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockFaceTextFont"
		Group="Behavior"
		Type="String"
		EditorType="MultiLineEditor"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ClockHandColor"
		Group="Behavior"
		InitialValue="&c000000"
		Type="Color"
	#tag EndViewProperty
	#tag ViewProperty
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
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
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HasBackColor"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Height"
		Visible=true
		Group="Position"
		InitialValue="400"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IncludePrevNextMonthDays"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
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
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseGraphicalClockHands"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="WeekStartsOnMonday"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
