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
      Scope           =   0
      SelectedX       =   0
      SelectedY       =   0
      TabIndex        =   52
      TabPanelIndex   =   0
      TabStop         =   True
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
	#tag Method, Flags = &h21
		Private Function fCalculateLeapYear() As Integer
		  //// Calculate Leap year
		  //
		  //Dim RetMonthDays as Integer
		  //
		  //If (mSelectedDate.Year / 4.0) = Floor(mSelectedDate.Year / 4.0) Then
		  //RetMonthDays = 29 // Leap year
		  //Else
		  //RetMonthDays = 28
		  //End If
		  //
		  //Return RetMonthDays
		  //
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fConvertMonthToInt(inMonth as String) As Integer
		  Select Case inMonth
		    
		  Case "January"
		    Return 1
		  Case "February"
		    Return 2
		  Case "March"
		    Return 3
		  Case "April"
		    Return 4
		  Case "May"
		    Return 5
		  Case "June"
		    Return 6
		  Case "July"
		    Return 7
		  Case "August"
		    Return 8
		  Case "September"
		    Return 9
		  Case "October"
		    Return 10
		  Case "November"
		    Return 11
		  Case "December"
		    Return 12
		  End Select
		End Function
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectedDate(inSelectedDate as Date)
	#tag EndHook


#tag EndWindowCode

#tag Events MonthPopup
	#tag Event
		Sub Change()
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events YearPopup
	#tag Event
		Sub Change()
		  //mSelectedDate.Year = Val(Me.Text)
		  
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
		  //User wants to back up a month
		  //If not at limits of dates(Jan,1904) then do it
		  
		  //Dim m,y As Integer
		  //
		  //m = MonthPopup.ListIndex + 1
		  //y = Val(YearPopup.Text)
		  //
		  //If m = 1 And y > StartYear Then
		  //YearPopup.ListIndex = YearPopup.ListIndex - 1
		  //MonthPopup.ListIndex = 11
		  //Elseif m > 1 Then
		  //MonthPopup.ListIndex = MonthPopup.ListIndex - 1
		  //End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CurrentMonthButton
	#tag Event
		Sub Action()
		  
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
		  //User wants to advance a month
		  //If not at limits of dates(dec,2039) then do it
		  
		  //Dim m, y As Integer
		  //
		  //m = MonthPopup.ListIndex + 1
		  //y = Val(YearPopup.Text)
		  //
		  //If m = 12 And y < EndYear Then
		  //YearPopup.ListIndex = YearPopup.ListIndex + 1
		  //MonthPopup.ListIndex = 0
		  //ElseIf m < 12 Then
		  //MonthPopup.ListIndex = MonthPopup.ListIndex + 1
		  //End If
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
