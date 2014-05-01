#tag Window
Begin Window RecurringMenuWin
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   False
   Compatibility   =   ""
   Composite       =   False
   Frame           =   5
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   121
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   121
   MaximizeButton  =   False
   MaxWidth        =   172
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   121
   MinimizeButton  =   False
   MinWidth        =   172
   Placement       =   0
   Resizeable      =   False
   Title           =   ""
   Visible         =   True
   Width           =   172
   Begin Listbox RecurringMenuLB
      AutoDeactivate  =   True
      AutoHideScrollbars=   True
      Bold            =   False
      Border          =   True
      ColumnCount     =   1
      ColumnsResizable=   False
      ColumnWidths    =   ""
      DataField       =   ""
      DataSource      =   ""
      DefaultRowHeight=   -1
      Enabled         =   True
      EnableDrag      =   False
      EnableDragReorder=   False
      GridLinesHorizontal=   0
      GridLinesVertical=   0
      HasHeading      =   False
      HeadingIndex    =   -1
      Height          =   126
      HelpTag         =   ""
      Hierarchical    =   False
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      RequiresSelection=   False
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollBarVertical=   False
      SelectionType   =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   172
      _ScrollOffset   =   0
      _ScrollWidth    =   -1
   End
   Begin Timer AfterSelectionTimer
      Enabled         =   True
      Height          =   "32"
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   0
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Visible         =   True
      Width           =   "32"
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  if asc(key)=27 then
		    me.close
		    Return True
		  end
		End Function
	#tag EndEvent

	#tag Event
		Sub Open()
		  #If TargetMacOS Then
		    soft declare sub setLevel lib "Cocoa" selector "setLevel:" (windowRef as integer, sender as integer)
		    setLevel(Self.Handle, 1)
		  #endif
		  
		  //mAddMenuItems
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function fConvertDayOfWeek_Int_to_Str(inDayofWeek_Int as Integer) As String
		  Select Case inDayofWeek_Int
		    
		  Case 1
		    Return "Sunday"
		  Case 2
		    Return "Monday"
		  Case 3
		    Return "Tuesday"
		  Case 4
		    Return "Wednesday"
		  Case 5
		    Return "Thursday"
		  Case 6
		    Return "Friday"
		  Case 7
		    Return "Saturday"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mAddMenuItems()
		  // Get Realtime User Selected Month
		  OTF_DayOfMonth_String = DemoLaunchWindow.MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.SelectedMonth
		  // Get Realtime User Selected Day of the Week
		  Dim DayofWeekString as String = fConvertDayOfWeek_Int_to_Str(DemoLaunchWindow.MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.SelectedDate.DayOfWeek)
		  OTF_DayOfWeek_String =DayofWeekString
		  
		  // Get User Selected Day
		  OTF_Day_String = Str(DemoLaunchWindow.MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.SelectedDate.Day)
		  Dim DayEnding as String
		  if CDbl(OTF_Day_String) > 1 Then
		    DayEnding = "th"
		  Else
		    DayEnding = "st"
		  End if
		  
		  // Update options
		  RecurringMenuLB.AddRow "Once Only"
		  RecurringMenuLB.AddRow "Every "+DayofWeekString
		  RecurringMenuLB.AddRow "Day "+OTF_Day_String+" of Every "+OTF_DayOfMonth_String
		  RecurringMenuLB.AddRow "Every "+ OTF_DayOfMonth_String +" "+OTF_Day_String+DayEnding
		  
		  // Measure the Size of the Longest menu
		  Dim LineLen as Integer
		  Dim LineLenArray() as integer
		  
		  for i as integer = 0 to RecurringMenuLB.ListCount-1
		    LineLen = Len(RecurringMenuLB.Cell(i,0))
		    LineLenArray.Append LineLen*7.5
		  next
		  LineLenArray.sort
		  
		  // Update the Width of the PopUp Menu Dynamically based on size of Menu Wording
		  RecurringMenuWin.Width = LineLenArray(LineLenArray.Ubound)
		  RecurringMenuLB.Width = LineLenArray(LineLenArray.Ubound)
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mLoad_Selected_MenuItem()
		  // Need to look at the SelectedMenuItem Class to Prepopulate Previously Selected Items or Default (Row0)
		  if Recurring_Module.Selected_MenuItem <> Nil Then
		    FireCheckMark = True
		    mRow = Recurring_Module.Selected_MenuItem.Row
		    
		  End if
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h21
		Private AfterSelectionTimer_Counter As Integer = 0
	#tag EndProperty

	#tag Property, Flags = &h21
		Private FireCheckMark As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Fire_Highlight_Flash As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mRow As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OTF_DayOfMonth_String As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OTF_DayOfWeek_String As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private OTF_Day_String As String
	#tag EndProperty


#tag EndWindowCode

#tag Events RecurringMenuLB
	#tag Event
		Function CellBackgroundPaint(g As Graphics, row As Integer, column As Integer) As Boolean
		  // Get Cell Width
		  Dim RW as integer = me.Column(column).WidthActual
		  Dim RH as integer = me.RowHeight
		  
		  //Fill background Cell color (multicolor) of Only Added Rows
		  If row Mod 2=0 then
		    g.foreColor = RGB(240,245,254)
		  else
		    g.foreColor = RGB(255,255,255)
		  end if
		  g.FillRect 0,0,RW,RH
		  
		  if FireCheckMark = True AND row = mrow Then
		    g.ForeColor = RGB(220,220,220)
		    g.FillRect 0,0,RW,RH
		    if Fire_Highlight_Flash = True AND row = mRow Then
		      g.FillRect 0,0,RW,RH
		    Elseif Fire_Highlight_Flash = False  AND row = mRow Then
		      g.ForeColor = RGB(230,230,230)
		      g.FillRect 0,0,RW,RH
		    End if
		    g.DrawPicture(Checkmark10x11,5,7)
		  End if
		  
		  
		  Return true
		  
		  
		  
		End Function
	#tag EndEvent
	#tag Event
		Function CellClick(row as Integer, column as Integer, x as Integer, y as Integer) As Boolean
		  mRow = row
		  FireCheckMark =True
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  // Setup Default Behavior
		  Me.ColumnsResizable = True
		  Me.RequiresSelection = False
		  Me.ColumnCount = 1
		  me.ColumnAlignmentOffset(0) = 13
		  Me.HasHeading = False
		  Me.AutoHideScrollbars = True
		  Me.ScrollBarHorizontal = False
		  Me.ScrollBarVertical = False
		  Me.UseFocusRing = False
		  Me.TextFont = "System"
		  Me.TextSize = 12
		  Me.SelectionType = Listbox.SelectionSingle
		  Me.DefaultRowHeight = 30
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  if me.ListIndex =  mRow Then
		    //FireCheckMark = True
		    Recurring_Module.Selected_MenuItem = New SelectedMenuItem
		    Recurring_Module.Selected_MenuItem.Row = mRow
		    Recurring_Module.Selected_MenuItem.Item_String = Me.Cell(Me.ListIndex, 0)
		    Recurring_Module.Selected_MenuItem.SelectedItem_Date = DemoLaunchWindow.MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.SelectedDate
		    Recurring_Module.Selected_MenuItem.Selected = True
		    DemoLaunchWindow.MyPicker.Date_Time_Container1.Calendar_Container1.RecurringCanvas1.mRecurringCanvasRaiseEvent(Recurring_Module.Selected_MenuItem)
		    Me.InvalidateCell(-1,-1)
		    AfterSelectionTimer.Period = 65
		    AfterSelectionTimer.Mode = timer.ModeMultiple
		    //Self.close
		    
		  End if
		  
		  
		End Sub
	#tag EndEvent
	#tag Event
		Function CellTextPaint(g As Graphics, row As Integer, column As Integer, x as Integer, y as Integer) As Boolean
		  g.ForeColor = RGB(0,0,0)
		End Function
	#tag EndEvent
	#tag Event
		Function MouseWheel(X As Integer, Y As Integer, deltaX as Integer, deltaY as Integer) As Boolean
		  Return True
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events AfterSelectionTimer
	#tag Event
		Sub Action()
		  
		  if AfterSelectionTimer_Counter =5 Then
		    Me.Mode = timer.ModeOff
		    Self.Close
		    exit
		  end if
		  
		  // Trigger Flash Effects
		  if Fire_Highlight_Flash = False Then
		    Fire_Highlight_Flash = True
		    RecurringMenuLB.InvalidateCell(-1,0)
		    AfterSelectionTimer_Counter = AfterSelectionTimer_Counter+1
		  Elseif  Fire_Highlight_Flash = True Then
		    Fire_Highlight_Flash = False
		    RecurringMenuLB.InvalidateCell(-1,0)
		    AfterSelectionTimer_Counter = AfterSelectionTimer_Counter+1
		  End if
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
