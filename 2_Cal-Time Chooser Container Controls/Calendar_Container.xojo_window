#tag Window
Begin ContainerControl Calendar_Container
   AcceptFocus     =   True
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
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
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   107
   End
   Begin Combobox YearPopup
      AutoComplete    =   False
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
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   12
      Transparent     =   True
      Underline       =   False
      UseFocusRing    =   False
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
      EraseBackground =   False
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
      Width           =   213
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
      EraseBackground =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   202
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
      Left            =   39
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
      Width           =   147
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  // DE-SELECT ALL CALENDAR DAYS SELECTED WHEN CLICK ON THE CONTAINER
		  Calendar1.deselectAll()
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #IF TargetWin32 Then
		    Me.DoubleBuffer = True
		    Me.Transparent = False
		    Me.EraseBackground = False
		  #ENDIF
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = &cECECEC 
		  #IF TargetWin32 Then
		    g.FillRect(0,0,me.Width,me.Height)
		  #ELSE
		    g.FillRoundRect(0,0,me.Width,me.Height, 8, 8)
		  #ENDIF
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub goNextMonth()
		  // Need a Check to See about Incrementing Year or not
		  Calendar1.deselectAll()
		  if Calendar1.NextMonth = Calendar1.Localized_January then
		    // Need to increment Year
		    Calendar1.NextYear = CDbl(YearPopup.Text)+1
		    for i as integer = 0 to YearPopup.ListCount-1
		      if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        exit
		      End if
		    next i
		  End if
		  
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if Calendar1.NextMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goNextYear()
		  Calendar1.deselectAll()
		  
		  Calendar1.NextYear = CDbl(YearPopup.Text)+1
		  for i as integer = 0 to YearPopup.ListCount-1
		    if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goPrevMonth()
		  // Need a Check to See about Decrementing Year or not
		  Calendar1.deselectAll()
		  if Calendar1.PreviousMonth = Calendar1.Localized_December then
		    // Need to increment Year
		    Calendar1.PrevYear = CDbl(YearPopup.Text)-1
		    for i as integer = 0 to YearPopup.ListCount-1
		      if Str(Calendar1.PrevYear) = YearPopup.List(i) Then
		        YearPopup.ListIndex = i
		        exit
		      End if
		    next i
		  End if
		  
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if Calendar1.PreviousMonth = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub goPrevYear()
		  Calendar1.deselectAll()
		  
		  Calendar1.NextYear = CDbl(YearPopup.Text)-1
		  for i as integer = 0 to YearPopup.ListCount-1
		    if Str(Calendar1.NextYear) = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		      exit
		    End if
		  next i
		  
		  
		  
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
		  
		  // Bring Us Back to Today's Month
		  Dim CurrentDateMonthString as String = Calendar1.convertMonthIntToMonthString(Calendar1.CurrentDate.Month)
		  for i as integer = 0 to MonthPopup.ListCount-1
		    if CurrentDateMonthString = MonthPopup.List(i) Then
		      MonthPopup.ListIndex = i
		    End if
		  next i
		  
		  
		  // Bring Us Back to Today's Year
		  Dim CurrentDateYearString as String = Str(Calendar1.CurrentDate.Year)
		  for i as integer = 0 to YearPopup.ListCount - 1
		    if CurrentDateYearString = YearPopup.List(i) Then
		      YearPopup.ListIndex = i
		    End if
		  next i
		  
		  //Select Todays Date
		  Calendar1.deselectAll()
		  for i as integer = 7 to UBound(Calendar1.CalendarButtonClassArray) // Only begin at 7 Since 0-6 Are reserved for Day Of Week Titles
		    if Calendar1.CalendarButtonClassArray(i).MyDate <> Nil Then
		      if Calendar1.CalendarButtonClassArray(i).MyDate.Month = Calendar1.CurrentDate.Month AND  Calendar1.CalendarButtonClassArray(i).MyDate.Day = Calendar1.CurrentDate.Day Then
		        Calendar1.CalendarButtonClassArray(i).Selected = True
		        Calendar1.SelectedDate = Calendar1.CalendarButtonClassArray(i).MyDate
		        Calendar1.Invalidate(False)
		      End if
		    end if
		    
		    
		  next i
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
		  #If TargetWin32 Then
		    Me.Top = Me.Top - 7
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events YearPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedYear = Me.Text
		  Dim validYearCode as Integer = Calendar1.calculateYear(Me.Text)
		  If validYearCode = -1 Then
		    // INVALID YEAR USE THIS YEARS
		    DIm todayDate as New date
		    Calendar1.YearNumber = todayDate.Year
		    Me.Text = Str( todayDate.Year)
		  End If
		  Calendar1.UPDATE_MonthDays()
		  Calendar1.UPDATE_MapDaysToCalSlots()
		  Calendar1.deselectAll()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Open()
		  #IF TargetWin32 Then
		    Me.Top = Me.Top - 4
		  #ENDIF
		  
		  // Default to today's Year only on open
		  Dim TodaysYear as New Date
		  
		  for i as integer = 0 to Me.ListCount-1
		    if Str(TodaysYear.Year) = Me.List(i) Then
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
		  me.Items( 2 ).icon = BlackDot16x16
		  me.Items( 3 ).Title = ">"
		  me.Items( 4 ).Title = ">>"
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="DoubleBuffer"
		Visible=true
		Group="Windows Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="drawColSeperatorLines"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="InitialParent"
		Group="Position"
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
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
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
		EditorType="Boolean"
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
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
