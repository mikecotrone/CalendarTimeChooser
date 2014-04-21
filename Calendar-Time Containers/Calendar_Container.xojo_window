#tag Window
Begin ContainerControl Calendar_Container
   AcceptFocus     =   True
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   214
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
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   11
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
      TextFont        =   "Helvetica"
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      Visible         =   True
      Width           =   91
   End
   Begin PopupMenu YearPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   104
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
      TextFont        =   "Helvetica"
      TextSize        =   13.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      Visible         =   True
      Width           =   62
   End
   Begin PushButton PreviousMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   "<"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   171
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin PushButton CurrentMonthButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ""
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   187
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   18
   End
   Begin PushButton NextMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ">"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin Calendar Calendar1
      AcceptFocus     =   False
      AcceptTabs      =   False
      AutoDeactivate  =   True
      Backdrop        =   0
      DoubleBuffer    =   False
      Enabled         =   True
      EraseBackground =   True
      Height          =   169
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   11
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      NextYear        =   0
      PrevYear        =   0
      Scope           =   0
      SelectedX       =   0
      SelectedY       =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
      TodaysDate_NotSelected=   &c0000FF00
      TodaysDate_Selected=   &cFFFF0000
      Top             =   33
      Transparent     =   True
      UseFocusRing    =   True
      Visible         =   True
      Width           =   211
      YearNumber      =   0
      Begin Separator Separator1
         AutoDeactivate  =   True
         Enabled         =   True
         Height          =   1
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "Calendar1"
         Left            =   15
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   0
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   56
         Visible         =   True
         Width           =   201
      End
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  //RaiseEvent SelectedDate(
		End Function
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub mNextMonth()
		  // Need a Check to See about Incrementing Year or not
		  Calendar1.mDeselectAll
		  if Calendar1.NextMonth = "January" then
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
		Private Sub mPrevMonth()
		  // Need a Check to See about Decrementing Year or not
		  Calendar1.mDeselectAll
		  if Calendar1.PreviousMonth = "December" then
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

	#tag Method, Flags = &h0
		Sub mRaiseEvent()
		  RaiseEvent SelectedDate(Calendar1.SelectedDate)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mTakeMeToTodaysDate()
		  // Bring Us Back to Today's Month
		  Dim CurrentDateMonthString as String = Calendar1.fConvertMonthIntToMonthString(Calendar1.CurrentDate.Month)
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
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectedDate(inSelectedDate as Date)
	#tag EndHook


#tag EndWindowCode

#tag Events MonthPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedMonth = Me.Text
		  Calendar1.mCalculateMonth(Me.Text)
		  Calendar1.UPDATE_MonthDays
		  Calendar1.UPDATE_MapDaysToCalSlots
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events YearPopup
	#tag Event
		Sub Change()
		  Calendar1.SelectedYear = Me.Text
		  Calendar1.mCalculateYear(Me.Text)
		  Calendar1.UPDATE_MonthDays
		  Calendar1.UPDATE_MapDaysToCalSlots
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events PreviousMonthButton
	#tag Event
		Sub Action()
		  mPrevMonth
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CurrentMonthButton
	#tag Event
		Sub Action()
		  mTakeMeToTodaysDate
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.TextSize = 30
		  Me.Caption = Chr(8226)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextMonthButton
	#tag Event
		Sub Action()
		  mNextMonth
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
