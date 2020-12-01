#tag Window
Begin ContainerControl Calendar_Container
   AcceptFocus     =   True
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   DoubleBuffer    =   False
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   252
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   230
   Begin PopUpMenu YearPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   123
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   70
   End
   Begin Calendar Calendar1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AllowMultipleSelections=   False
      AutoDeactivate  =   True
      Backdrop        =   0
      CalMonFirstDayOfWeekBool=   False
      DoubleBuffer    =   False
      drawColumnLines =   False
      Enabled         =   True
      EndYear         =   0
      FirstWeekDay    =   ""
      Height          =   170
      HelpTag         =   ""
      IncludePrevNextMonthDaysBool=   True
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   9
      Localized_April =   ""
      Localized_August=   ""
      Localized_December=   ""
      Localized_February=   ""
      Localized_Friday=   ""
      Localized_January=   ""
      Localized_July  =   ""
      Localized_June  =   ""
      Localized_March =   ""
      Localized_May   =   ""
      Localized_Monday=   ""
      Localized_November=   ""
      Localized_October=   ""
      Localized_Saturday=   ""
      Localized_September=   ""
      Localized_Sunday=   ""
      Localized_Thursday=   ""
      Localized_Tuesday=   ""
      Localized_Wednesday=   ""
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MonthNumber     =   0
      NextMonth       =   ""
      NextYear        =   0
      PreviousMonth   =   ""
      PrevYear        =   0
      Scope           =   0
      SelectedMonth   =   ""
      SelectedX       =   0
      SelectedY       =   0
      SelectedYear    =   ""
      StartYear       =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      TodaysDate_NotSelected=   &c0000FF00
      TodaysDate_Selected=   &cFFFF0000
      Top             =   43
      Transparent     =   False
      UseFocusRing    =   True
      UserSelectedEndYear=   0
      UserSelectedStartYear=   0
      Visible         =   True
      Width           =   212
      YearNumber      =   0
      Begin Separator Separator1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   1
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Calendar1"
         Left            =   13
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   66
         Transparent     =   True
         Visible         =   True
         Width           =   205
      End
   End
   Begin Label RecurrenceLabel
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
      Left            =   -46
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   57
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   "Recurrence"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   1.0
      TextUnit        =   0
      Top             =   -113
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   100
   End
   Begin RecurringCanvas RecurringCanvas1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   201
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RecurringMode   =   0
      Scope           =   0
      TabIndex        =   58
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   12
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   20
   End
   BeginSegmented SegmentedControl calControlSegmentedControl
      Enabled         =   True
      Height          =   24
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   40
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MacControlStyle =   6
      Scope           =   0
      Segments        =   "\n\nFalse\r\n\nFalse\r\n\nFalse\r\n\nFalse\r\n\nFalse"
      SelectionType   =   2
      TabIndex        =   5
      TabPanelIndex   =   0
      Top             =   226
      Transparent     =   True
      Visible         =   True
      Width           =   150
   End
   Begin PopupMenu MonthPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   9
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  // DE-SELECT ALL CALENDAR DAYS SELECTED WHEN CLICK ON THE CONTAINER
		  Calendar1.deselectAll()
		End Sub
	#tag EndEvent

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


	#tag Method, Flags = &h21
		Private Sub goNextMonth()
		  // Need a Check to See about Incrementing Year or not
		  Calendar1.deselectAll()
		  If Calendar1.NextMonth = Calendar1.Localized_January Then
		    Var nextYearDbl As Double = YearPopup.Text.ToDouble+1
		    Calendar1.NextYear = nextYearDbl
		    For i As Integer = 0 To YearPopup.ListCount-1
		      If Calendar1.NextYear.ToString = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        Exit
		      End If
		    Next i
		  End If
		  
		  For i As Integer = 0 To MonthPopup.ListCount-1
		    If Calendar1.NextMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      Exit
		    End If
		  Next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goNextYear()
		  Calendar1.deselectAll()
		  Var nextYearDbl As Double = YearPopup.Text.ToDouble + 1
		  Calendar1.NextYear = nextYearDbl
		  For i As Integer = 0 To YearPopup.ListCount-1
		    If Calendar1.NextYear.ToString = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      Exit
		    End If
		  Next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goPrevMonth()
		  // Need a Check to See about Decrementing Year or not
		  Calendar1.deselectAll()
		  If Calendar1.PreviousMonth = Calendar1.Localized_December Then
		    Var prevYearDbl As Double = YearPopup.Text.ToDouble -1
		    Calendar1.PrevYear = prevYearDbl
		    For i As Integer = 0 To YearPopup.ListCount-1
		      If Calendar1.PrevYear.ToString = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        Exit
		      End If
		    Next i
		  End If
		  
		  For i As Integer = 0 To MonthPopup.ListCount-1
		    If Calendar1.PreviousMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      Exit
		    End If
		  Next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goPrevYear()
		  Calendar1.deselectAll()
		  Var prevYearDbl As Double = YearPopup.Text.ToDouble -1
		  Calendar1.NextYear = prevYearDbl
		  For i As Integer = 0 To YearPopup.ListCount-1
		    If Calendar1.NextYear.ToString = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      Exit
		    End If
		  Next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub raiseRecurringEvent(inSelectedMenuItem as String)
		  RaiseEvent Recurring_Selection(inSelectedMenuItem)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub raiseThisEvent(inSelectedDate as Date)
		  RaiseEvent SelectedDate(inSelectedDate)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub takeMeToTodaysDate()
		  Var CurrentDateMonthString As String = Calendar1.convertMonthIntToMonthString(Calendar1.CurrentDate.Month)
		  For i As Integer = 0 To MonthPopup.ListCount-1
		    If CurrentDateMonthString = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		    End If
		  Next i
		  
		  Var CurrentDateYearString As String = Calendar1.CurrentDate.Year.ToString
		  For i As Integer = 0 To YearPopup.ListCount - 1
		    If CurrentDateYearString = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		    End If
		  Next i
		  
		  // SELECT TODAYS DATE
		  Calendar1.deselectAll()
		  Var lr As Integer = Calendar1.CalendarButtonClassArray.LastIndex
		  For i As Integer = 6 To lr
		    // Only begin at 7 Since 0-6 Are reserved for Day Of Week Titles
		    If Calendar1.CalendarButtonClassArray(i).MyDate <> Nil Then
		      If Calendar1.CalendarButtonClassArray(i).MyDate.Month = Calendar1.CurrentDate.Month And  Calendar1.CalendarButtonClassArray(i).MyDate.Day = Calendar1.CurrentDate.Day Then
		        Calendar1.CalendarButtonClassArray(i).Selected = True
		        Var selectedDate As Date = Calendar1.CalendarButtonClassArray(i).MyDate
		        Calendar1.SelectedDate = selectedDate
		      End If
		    End If
		  Next i
		  
		  Calendar1.Invalidate(False)
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event Recurring_Selection(inSelectedRecurring as String)
	#tag EndHook

	#tag Hook, Flags = &h0
		Event SelectedDate(inSelectedDate as Date)
	#tag EndHook


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mdrawColSeperatorLines
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mdrawColSeperatorLines = value
			  Calendar1.drawColumnLines = mdrawColSeperatorLines
			  Calendar1.Invalidate(False)
			End Set
		#tag EndSetter
		drawColSeperatorLines As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mdrawColSeperatorLines As Boolean
	#tag EndProperty


#tag EndWindowCode

#tag Events YearPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedYear = Me.Text
		  Var validYearCode as Integer = Calendar1.calculateYear(Me.Text)
		  'If validYearCode = -1 Then
		  '// INVALID YEAR USE THIS YEARS
		  'Var todayDate as New date
		  'Calendar1.YearNumber = todayDate.Year
		  'Me.SelectedRow = todayDate.Year.ToString
		  'End If
		  Calendar1.UPDATE_MonthDays()
		  Calendar1.UPDATE_MapDaysToCalSlots()
		  Calendar1.deselectAll()
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #IF TargetWindows Then
		    Me.Top = Me.Top - 4
		  #ENDIF
		  
		  // Default to today's Year only on open
		  Var TodaysYear as New Date
		  
		  for i as integer = 0 to Me.ListCount-1
		    if TodaysYear.Year.ToString = Me.List(i) Then
		      Me.ListIndex = i
		    End if
		  next i
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events calControlSegmentedControl
	#tag Event
		Sub Action(itemIndex as integer)
		  Select Case itemIndex
		  Case 0
		    // PREVIOUS YEAR
		    goPrevYear()
		  Case 1
		    // PREVIOUS MONTH
		    goPrevMonth()
		    
		  Case 2
		    // TODAY'S DATE
		    takeMeToTodaysDate()
		    
		  Case 3
		    // NEXT MONTH
		    goNextMonth()
		    
		  Case 4
		    // NEXT YEAR
		    goNextYear()
		    
		  End Select
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  me.Items( 0 ).Title = "<<"
		  me.Items( 1 ).Title = "<"
		  me.Items( 2 ).icon = BlackDotPicture
		  me.Items( 3 ).Title = ">"
		  me.Items( 4 ).Title = ">>"
		  
		  #If TargetWindows Then
		    Me.Left = Me.Left - 6
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events MonthPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedMonth = Me.Text
		  Calendar1.calculateMonth(Me.Text)
		  Calendar1.UPDATE_MonthDays()
		  Calendar1.UPDATE_MapDaysToCalSlots()
		  Calendar1.deselectAll()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #If TargetWindows Then
		    Me.Top = Me.Top - 4
		  #endif
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
		Name="drawColSeperatorLines"
		Visible=false
		Group="Behavior"
		InitialValue=""
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
#tag EndViewBehavior
