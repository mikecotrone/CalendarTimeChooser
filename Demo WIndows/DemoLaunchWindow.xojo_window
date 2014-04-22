#tag Window
Begin Window DemoLaunchWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   442
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   500
   MaximizeButton  =   False
   MaxWidth        =   489
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   364
   MinimizeButton  =   True
   MinWidth        =   489
   Placement       =   0
   Resizeable      =   False
   Title           =   "[Demo] Calendar / Time Chooser Project"
   Visible         =   True
   Width           =   489
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   130
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   10
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   10
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   468
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      Enabled         =   True
      Height          =   254
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   149
      Underline       =   False
      Visible         =   True
      Width           =   468
      Begin Label SelectChooserTypeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Select Chooser Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   154
      End
      Begin PopupMenu SelectChooserTypePopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   183
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label ChangeBackColorLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   279
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "Change Back Color:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin PopupMenu ChangeBackColorPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   8
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   183
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label IncludeNextPrevMonDaysLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   11
         TabPanelIndex   =   0
         Text            =   "Include Previous/Next Month Days:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   224
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin PopupMenu IncludePrevNextMonDaysPopUpMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   12
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   248
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label UseGraphicalClockHandsLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   279
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   14
         TabPanelIndex   =   0
         Text            =   "Use Graphical Clock Hands:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   224
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin PopupMenu UseGraphicalClockHandsPopUpMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   279
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   15
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   248
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Separator Separator1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   4
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   8
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   16
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   215
         Visible         =   True
         Width           =   469
      End
      Begin Separator Separator2
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   4
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   8
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   17
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   282
         Visible         =   True
         Width           =   469
      End
      Begin PopupMenu WeekStartType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   18
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   314
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label WeekStartTypeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   19
         TabPanelIndex   =   0
         Text            =   "Week Start Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   289
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin PopupMenu ClockFaceChangerPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   314
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label ClockFaceChangerLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   278
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   0
         Text            =   "Change Clock Face:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   289
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   153
      End
      Begin Canvas ClockIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   19
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   227
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   47
      End
      Begin Canvas CalendarIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   18
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   24
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   294
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   47
      End
      Begin Canvas GeneralIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   17
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   25
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   159
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin Label LocalizationLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   26
         TabPanelIndex   =   0
         Text            =   "Calendar Localization:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   344
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin PopupMenu LocalizationPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   76
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   27
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   368
         Underline       =   False
         Visible         =   True
         Width           =   191
      End
   End
End
#tag EndWindow

#tag WindowCode
#tag EndWindowCode

#tag Events TextArea1
	#tag Event
		Sub Open()
		  
		  Me.Text = "Welcome to the ""Calendar and Time Chooser Project""! "+EndOfLine+EndOfLine
		  
		  Me.AppendText "This project was written in Xojo 2014r1.1 and is free to use in your commercial and/or open source software."+EndOfLine+EndOfLine+_
		  "Please read the ""Quick Start App Note"" and If you have any questions "+_
		  "please email me at mikec@intelligentvisibility.com."+EndOfLine
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectChooserTypePopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Calendar and Time")
		  me.AddRow("Calendar Only")
		  me.AddRow("Time Only")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Calendar and Time"
		    CalendarWindow.BothPickers = True
		    CalendarWindow.CalendarPicker_Only = False
		    CalendarWindow.TimePicker_Only = False
		    CalendarWindow.mSetupForBothPickers
		  Case "Calendar Only"
		    CalendarWindow.CalendarPicker_Only = True
		    CalendarWindow.BothPickers = False
		    CalendarWindow.TimePicker_Only = False
		    CalendarWindow.mSetupForCalendarPickerOnly
		  Case "Time Only"
		    CalendarWindow.TimePicker_Only =True
		    CalendarWindow.BothPickers = False
		    CalendarWindow.CalendarPicker_Only = False
		    CalendarWindow.mSetupForTimePickerOnly
		  End Select
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ChangeBackColorPopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Dark Grey")
		  me.AddRow("Medium Grey")
		  me.AddRow("Light Grey")
		  me.AddRow("Light Green")
		  me.AddRow("Light Cyan")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Dark Grey"
		    CalendarWindow.BackColor = RGB(173,173,173)
		  Case "Medium Grey"
		    CalendarWindow.BackColor = RGB(200,200,200)
		  Case "Light Grey"
		    CalendarWindow.BackColor = RGB(239,239,239)
		  Case "Light Green"
		    CalendarWindow.BackColor = &cc5cfc5
		  Case "Light Cyan"
		    CalendarWindow.BackColor = RGB(234,244,255)
		  End Select
		  
		  CalendarWindow.Invalidate(True)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IncludePrevNextMonDaysPopUpMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Include")
		  me.AddRow("Do NOT include")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Include"
		    CalendarWindow.Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool = True
		  Case "Do NOT include"
		    CalendarWindow.Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool = False
		  End Select
		  
		  CalendarWindow.Calendar_Container1.Calendar1.Invalidate(False)
		  CalendarWindow.Calendar_Container1.Calendar1.UPDATE_MonthDays
		  CalendarWindow.Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseGraphicalClockHandsPopUpMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Use Graphical Clock Hands")
		  me.AddRow("Use Lines for Clock Hands")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Use Graphical Clock Hands"
		    CalendarWindow.Time_Container1.Clock1.UseGraphicalClockHands=True
		  Case "Use Lines for Clock Hands"
		    CalendarWindow.Time_Container1.Clock1.UseGraphicalClockHands=False
		  End Select
		  CalendarWindow.Time_Container1.Clock1.Invalidate(False)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WeekStartType
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Week Starts on Sunday")
		  me.AddRow("Week Starts on Monday")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Week Starts on Sunday"
		    CalendarWindow.Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool = False
		  Case "Week Starts on Monday"
		    CalendarWindow.Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool = True
		  End Select
		  
		  CalendarWindow.Calendar_Container1.Calendar1.Invalidate(False)
		  CalendarWindow.Calendar_Container1.Calendar1.UPDATE_MonthDays
		  CalendarWindow.Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClockFaceChangerPopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("0 - Chrome (12hr)")
		  me.AddRow("1 - Roman (12hr)")
		  me.AddRow("2 - Standard (12hr)")
		  me.AddRow("3 - Google Style (12hr)")
		  me.AddRow("4 - Modern (12hr)")
		  me.AddRow("5 - Dynamic (12hr)")
		  me.AddRow("6 - Dynamic (24hr)")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "0 - Chrome (12hr)"
		    // Default Clock Face
		    CalendarWindow.SelectClockFaceType = 0
		  Case "1 - Roman (12hr)"
		    CalendarWindow.SelectClockFaceType = 1
		  Case "2 - Standard (12hr)"
		    CalendarWindow.SelectClockFaceType =2
		  Case "3 - Google Style (12hr)"
		    CalendarWindow.SelectClockFaceType = 3
		  Case "4 - Modern (12hr)"
		    CalendarWindow.SelectClockFaceType = 4
		  Case "5 - Dynamic (12hr)"
		    CalendarWindow.SelectClockFaceType = 5
		    CalendarWindow.Time_Container1.Clock1.HourCount=12
		  Case "6 - Dynamic (24hr)"
		    CalendarWindow.SelectClockFaceType = 5
		    CalendarWindow.Time_Container1.Clock1.HourCount=24
		  End Select
		  CalendarWindow.Time_Container1.Clock1.Invalidate(False)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClockIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(ClockIcon50x50,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CalendarIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(cal46x50,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeneralIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(generaloptions,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LocalizationPopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("English")
		  me.AddRow("French")
		  me.AddRow("German")
		  me.AddRow("Spanish")
		  me.AddRow("Swedish")
		  me.ListIndex = 0 // Default to English
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Dim LocalInt as Integer
		  Select Case Me.Text
		  Case "English"
		    CalendarWindow.Calendar_Container1.Calendar1.LocalizationInt = 0
		    LocalInt = 0
		  Case "French"
		    CalendarWindow.Calendar_Container1.Calendar1.LocalizationInt = 1
		    LocalInt = 1
		  Case "Spanish"
		    CalendarWindow.Calendar_Container1.Calendar1.LocalizationInt = 2
		    LocalInt = 2
		  Case "Swedish"
		    CalendarWindow.Calendar_Container1.Calendar1.LocalizationInt = 3
		    LocalInt = 3
		  End Select
		  
		  // Create the Localized Month List
		  CalendarWindow.Calendar_Container1.Calendar1.mBuildLocalizedMonthList(LocalInt)
		  // Create the Localized Day of the Week List
		  CalendarWindow.Calendar_Container1.Calendar1.mBuildLocalizedDayOfWeekList(LocalInt)
		  
		  
		  // Load the Localized Month List to the PopUp Menu
		  CalendarWindow.Calendar_Container1.Calendar1.mLoad_MonthList
		  
		  // Load the Localized Day of the Week Abbreviation List to the Calendar
		  CalendarWindow.Calendar_Container1.Calendar1.mBuild_LocalizedDayOfWeek_Arrays(LocalInt)
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
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
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
