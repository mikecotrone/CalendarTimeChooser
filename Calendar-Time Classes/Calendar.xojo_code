#tag Class
Protected Class Calendar
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  Dim i as integer
		  for i = 0 to UBound(CalendarButtonClassArray)
		    if X >= CalendarButtonClassArray(i).LeftX AND X <= CalendarButtonClassArray(i).RightX AND Y >= CalendarButtonClassArray(i).TopY AND Y <= CalendarButtonClassArray(i).BottomY Then
		      mDeselectAll
		      CalendarButtonClassArray(i).Selected = True
		      SelectedDate = New Date
		      SelectedDate.Day = CalendarButtonClassArray(i).Day
		      SelectedDate.Year = CDbl(SelectedYear)
		      CalendarButtonClassArray(i).SelectedDate = SelectedDate
		      CalendarWindow.Calendar_Container1.mRaiseEvent
		      Me.Invalidate(False)
		    end if
		  next i
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Assign Calendar Spaces
		  mInitialAssignmentCalendarButtons(36)
		  
		  // Date Instantiations
		  CurrentDate = new Date
		  //StartYear = CurrentDate.Year
		  
		  // Build Year Popup Menu on Calendar Container
		  mLoad_YearList(StartYear,2050)
		  // Build Month Popup Menu on Calendar Container
		  mLoad_MonthList
		  
		  
		  // Build Day Of Week Arrays for Calendar Canvas Day of Week Titles
		  mBuild_DayOfWeek_Arrays
		  
		  /// /// /// /// /// /// /// /// ///
		  /// Gregorian Math ///
		  /// /// /// /// /// /// /// ///
		  
		  // Figure out Century Number
		  CenturyNumber = fCalcCenturyNumber(2015)
		  
		  // Choose Today's Date When we Open
		  CalendarWindow.Calendar_Container1.mTakeMeToTodaysDate
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.AntiAlias = true
		  // Fill White Background
		  g.ForeColor = RGB(255,255,255)
		  g.FillRect (1,1,me.Width-2,me.Height-2)
		  
		  // Draw Outline for Canvas
		  g.ForeColor = RGB(116,116,116)
		  g.PenHeight = 2
		  g.PenWidth = 2
		  g.DrawroundRect(0,0,me.Width,me.Height,3,3)
		  
		  // Draw Test Grid
		  //for i as integer = 0 to me.Width Step 24
		  //g.DrawLine (0,i,me.Width,i)
		  //next i
		  //for i as integer = 0 to me.Width Step 30
		  //g.DrawLine (i,0,i,me.Height)
		  //next i
		  
		  // Parms for the Highlighting Below
		  dim OffSet as Integer = 3
		  dim TwoOffset as Integer = (OffSet*2)
		  dim CurveSize as Integer = 6
		  
		  // Draw Highlight If Selected
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    if CalendarButtonClassArray(i).Selected = True Then
		      // Capture Selected Date in Date format for Custom Event
		      g.ForeColor = RGB(0,127,230)
		      g.FillRoundRect(CalendarButtonClassArray(i).LeftX+OffSet+1, CalendarButtonClassArray(i).TopY+OffSet,CalendarButtonClassArray(i).Width-TwoOffset,CalendarButtonClassArray(i).Height-TwoOffset,CurveSize,CurveSize)
		    End if
		  next i
		  
		  // Draw the Day of Week Labels using the Boolean to know if we are Sat - Sun or Mon - Sun
		  if CalMonFirstDayOfWeekBool = False Then
		    for i as integer = 1 to 6
		      dim pos as integer = 11
		      Dim TmpLen as Integer = SS_DayOfWeek(i).len
		      Dim xPos as Integer = 11
		      for x as integer = 0 to UBound(SS_DayOfWeek)
		        g.ForeColor = RGB(116,116,116)
		        g.TextFont = "System"
		        g.Bold = false
		        g.TextSize = 12
		        g.DrawString(SS_DayOfWeek(x),xPos-3,17)
		        xpos = xPos + 30
		      next x
		    next i
		  Elseif CalMonFirstDayOfWeekBool = True Then
		    for i as integer = 1 to 6
		      dim pos as integer = 11
		      Dim TmpLen as Integer = MS_DayOfWeek(i).len
		      Dim xPos as Integer = 11
		      for x as integer = 0 to UBound(MS_DayOfWeek)
		        g.ForeColor = RGB(116,116,116)
		        g.TextFont = "System"
		        g.Bold = false
		        g.TextSize = 12
		        g.DrawString(MS_DayOfWeek(x),xPos-3,17)
		        xpos = xPos + 30
		      next x
		    next i
		  End if
		  
		  Dim SelectMonthInt as Integer = fConvertMonthStringToMonthNumber(SelectedMonth)
		  // Draw Day Values in Calendar Spaces
		  for i as integer = 7 to UBound(CalendarButtonClassArray)
		    if CalendarButtonClassArray(i).Selected = True Then
		      if CDbl(SelectedYear) = CurrentDate.Year AND SelectMonthInt = CurrentDate.Month AND CalendarButtonClassArray(i).Day = CurrentDate.Day Then
		        g.bold = true
		        g.ForeColor = TodaysDate_Selected
		      Else
		        g.bold = false
		        g.ForeColor = RGB(255,255,255)
		      End if
		    elseif CalendarButtonClassArray(i).NextMonthMark = True OR  CalendarButtonClassArray(i).PrevMonthMark = True Then
		      g.bold = false
		      g.ForeColor= RGB(170,170,170)
		    elseif CDbl(SelectedYear) = CurrentDate.Year AND SelectMonthInt = CurrentDate.Month AND CalendarButtonClassArray(i).Day = CurrentDate.Day Then // If Today's Date Not Selected
		      g.bold = true
		      g.ForeColor = TodaysDate_NotSelected
		    Else
		      g.bold = false
		      g.ForeColor = RGB(0,0,0)
		    End if
		    
		    // Draw Days Centered -- Windows GDI+ Is different that MacOS for centering the Calendar Day Text FYI.
		    #IF TargetWin32 Then
		      if CalendarButtonClassArray(i).Day > 0 AND CalendarButtonClassArray(i).Day < 10 Then
		        g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+13,CalendarButtonClassArray(i).TopY+17)
		      Else
		        g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+10,CalendarButtonClassArray(i).TopY+17)
		      End if
		    #ELSEIF TargetMacOS Then
		      if CalendarButtonClassArray(i).Day > 0 AND CalendarButtonClassArray(i).Day < 10 Then
		        g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+12,CalendarButtonClassArray(i).TopY+17)
		      Else
		        g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+8,CalendarButtonClassArray(i).TopY+17)
		      End if
		    #ENDIF
		    
		    
		  next i
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function fCalcCenturyNumber(inYear as Integer) As Integer
		  // Map Century Number
		  Select Case inYear
		  Case 1900 to 1999
		    Return 0
		  Case 2000 to 2099
		    Return 1
		  Case 2100 to 2199
		    Return 3
		  Case 2200 to 2299
		    Return 5
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fCalcHowManyCalSlotsAvailable(inStartingSlot as Integer, inEndingSlot as Integer, inSpacesAvailable as Integer) As Integer
		  // This will calculate how many available Spaces we have for next or previous month Calendar day assignments
		  for x as integer = inStartingSlot to inEndingSlot
		    if CalendarButtonClassArray(x).Day = 0 Then
		      inSpacesAvailable = inSpacesAvailable + 1
		    end if
		  next x
		  
		  Return inSpacesAvailable
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fCalcLeapYear(inYear as Integer) As boolean
		  Return (inYear MOD 4) = 0 AND (((inYear MOD 100) <> 0) OR ((inYear MOD 400) = 0))
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fCalcMonthNumber(inMonth as String, inLeapYear as Boolean) As Integer
		  //0   February (leap year), August
		  //1   February (non-leap year), March, November
		  //2   June
		  //3   September, December
		  //4   January (leap year), April, July
		  //5   January (non-leap year), October
		  //6   May
		  
		  If inMonth = "February" AND inLeapYear = True  OR inMonth = "August" Then
		    Return 0
		  Elseif inMonth = "February" AND inLeapYear = False OR inMonth = "March" or inMonth = "November" Then
		    Return 1
		  Elseif inMonth = "June" Then
		    Return 2
		  ElseIf inMonth = "September" OR inMonth = "December" Then
		    Return 3
		  ElseIf inMonth = "January" AND inLeapYear = True OR inMonth = "April" OR inMonth = "July" Then
		    Return 4
		  Elseif inMonth = "January" AND inLeapYear = False OR inMonth = "October" Then
		    Return 5
		  Elseif inMonth = "May" Then
		    Return 6
		  End if
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fCalculate1stDayOfMonth() As String
		  // Need to Find out which Day of the Week this Month's 1st Day starts on
		  
		  // Calculate to get Weekday Number
		  Dim WeekdayNum as Integer = (CenturyNumber + YearNumber + MonthNumber + 1)
		  
		  DIM CalcWeekDayNum as Integer = WeekdayNum Mod 7
		  
		  // Map Weekday Number to Weekday String
		  FirstWeekday = fGetDayOfWeekString(CalcWeekDayNum)
		  
		  Return FirstWeekday
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fCalcYearNumber(inYear as String) As Integer
		  Dim TrimFirstTwoDigits as String = inYear.Right(2)
		  Dim Year as Integer = CDbl(TrimFirstTwoDigits)
		  
		  Dim CalcYearNum as Integer
		  CalcYearNum  = Year + Year / 4
		  
		  Dim CalcYearFinal as integer
		  CalcYearFinal = CalcYearNum mod 7
		  
		  Return CalcYearFinal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function fConvertMonthIntToMonthString(inMonthInt as Integer) As String
		  Select Case inMonthInt
		    
		  Case 1
		    Return "January"
		  Case 2
		    Return "February"
		  Case 3
		    Return "March"
		  Case 4
		    Return "April"
		  Case 5
		    Return "May"
		  Case 6
		    Return "June"
		  Case 7
		    Return "July"
		  Case 8
		    Return "August"
		  Case 9
		    Return "September"
		  Case 10
		    Return "October"
		  Case 11
		    Return "November"
		  Case 12
		    Return "December"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fConvertMonthStringToMonthNumber(inMonth as String) As Integer
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

	#tag Method, Flags = &h21
		Private Function fGetDayOfWeekString(inDayOfWeekNum as Integer) As String
		  Select Case inDayOfWeekNum
		  Case 0
		    Return "Sunday"
		  Case 1
		    Return "Monday"
		  Case 2
		    Return "Tuesday"
		  Case 3
		    Return "Wednesday"
		  Case 4
		    Return "Thursday"
		  Case 5
		    Return "Friday"
		  Case 6
		    Return "Saturday"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetFirstDayOfWeekCalSlotNumber(inDayofWeekString as String, inCalMonFirstDayOfWeekBool as Boolean) As Integer
		  if inCalMonFirstDayOfWeekBool = False Then
		    // Sunday is the First Day of the Week Calendar Labeling Wise
		    Select Case FirstWeekDay
		    Case "Sunday"
		      Return 7 // 0 Based
		    Case "Monday"
		      Return 8
		    Case "Tuesday"
		      Return 9
		    Case "Wednesday"
		      Return 10
		    Case "Thursday"
		      Return 11
		    Case "Friday"
		      Return 12
		    Case "Saturday"
		      Return 13
		    End Select
		    
		  Elseif inCalMonFirstDayOfWeekBool = True Then
		    // Monday is the First Day of the Week Calendar Labeling Wise
		    Select Case FirstWeekDay
		    Case "Monday"
		      Return 7 // 0 Based
		    Case "Tuesday"
		      Return 8
		    Case "Wednesday"
		      Return 9
		    Case "Thursday"
		      Return 10
		    Case "Friday"
		      Return 11
		    Case "Saturday"
		      Return 12
		    Case "Sunday"
		      Return 13
		    End Select
		  End if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetNextMonthString(inSelectedMonth as String) As String
		  Select Case inSelectedMonth
		    
		  Case "December"
		    Return  "January"
		    
		  Case "January"
		    Return "February"
		    
		  Case "February"
		    Return "March"
		    
		  Case "March"
		    Return "April"
		    
		  Case  "April"
		    Return  "May"
		    
		  Case "May"
		    Return  "June"
		    
		  Case "June"
		    Return "July"
		    
		  Case "July"
		    Return "August"
		    
		  Case "August"
		    Return "September"
		    
		  Case "September"
		    Return "October"
		    
		  Case "October"
		    Return "November"
		    
		  Case "November"
		    Return "December"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetPrevMonthString(inSelectedMonth as String) As String
		  Select Case inSelectedMonth
		    
		  Case "January"
		    Return "December"
		    
		  Case "February"
		    Return "January"
		    
		  Case "March"
		    Return "February"
		    
		  Case "April"
		    Return "March"
		    
		  Case "May"
		    Return  "April"
		    
		  Case "June"
		    Return "May"
		    
		  Case "July"
		    Return "June"
		    
		  Case "August"
		    Return "July"
		    
		  Case "September"
		    Return "August"
		    
		  Case "October"
		    Return "September"
		    
		  Case "November"
		    Return "October"
		    
		  Case "December"
		    Return "November"
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fNumOfDaysInMonth(inMonth as String) As Integer
		  // Jan - 31
		  // Feb (non leap year = 28, leap year = 29)
		  // Mar - 31
		  // Apr - 30
		  // May - 31
		  // Jun - 30
		  // Jul - 31
		  // Aug - 31
		  // Sept - 30
		  // Oct - 31
		  // Nov - 30
		  // Dec - 31
		  
		  Select Case inMonth
		  Case "January"
		    Return 31
		    
		  Case "February"
		    if LeapYearBool = True Then
		      Return 29
		    Elseif LeapYearBool = False Then
		      Return 28
		    End if
		    
		  Case "March"
		    Return 31
		    
		  Case "April"
		    Return 30
		    
		  Case "May"
		    Return 31
		    
		  Case "June"
		    Return 30
		    
		  Case "July"
		    Return 31
		    
		  Case "August"
		    Return 31
		    
		  Case "September"
		    Return 30
		    
		  Case "October"
		    Return 31
		    
		  Case "November"
		    Return 30
		    
		  Case "December"
		    Return 31
		    
		  End Select
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mBuild_DayOfWeek_Arrays()
		  SS_DayOfWeek.Append "Su"
		  SS_DayOfWeek.Append "Mo"
		  SS_DayOfWeek.Append "Tu"
		  SS_DayOfWeek.Append "We"
		  SS_DayOfWeek.Append "Th"
		  SS_DayOfWeek.Append "Fr"
		  SS_DayOfWeek.Append "Sa"
		  
		  MS_DayOfWeek.Append "Mo"  //1
		  MS_DayOfWeek.Append "Tu"   //2
		  MS_DayOfWeek.Append "We" //3
		  MS_DayOfWeek.Append "Th" //4
		  MS_DayOfWeek.Append "Fr" //5
		  MS_DayOfWeek.Append "Sa" //6
		  MS_DayOfWeek.Append "Su" //7
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mCalculateMonth(inMonth as String)
		  // Get Month Number
		  MonthNumber = fCalcMonthNumber(inMonth,LeapYearBool)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mCalculateYear(inYear as String)
		  // Expect STring from PopUp Menu but needs to convert to Integer
		  Dim InYearInt as Integer = CDbl(inYear)
		  LeapYearBool = fCalcLeapYear(InYearInt)
		  
		  // Year Number
		  YearNumber = fCalcYearNumber(inYear)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mClearDays()
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    CalendarButtonClassArray(i).Day = 0
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDeselectAll()
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    CalendarButtonClassArray(i).Selected = False
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mInitialAssignmentCalendarButtons(inNumOfSpaces as Integer)
		  // Classes are 1 based
		  Dim row, col as integer
		  
		  for y as integer = 1 to 49
		    Select Case y
		    Case 1 to 7 // Row 1
		      row =  1
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      //CalendarButton.RightX = y * 30 ' Do Not Give X/Y so we can't select this
		      //CalendarButton.BottomY = row  * 24  ' Do Not Give X/Y so we can't select this
		      CalendarButton.Row = row
		    Case 8 to 14 // Row 2
		      row =  2
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = (y-7) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		      
		    Case 15 to 21 // Row 3
		      row =  3
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = (y-14) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		    Case 22 to 28 // Row 4
		      row =  4
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = (y-21) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		    Case 29 to 35 // Row 5
		      row =  5
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX =  (y-28) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		    Case 36 to 42 // Row 6
		      row =  6
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = (y-35) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		      
		    Case 43 to 50 // Row 7
		      row =  7
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = (y-42) * 30
		      CalendarButton.BottomY = row  * 24
		      CalendarButton.Row = row
		      
		    End Select
		    CalendarButtonClassArray.Append CalendarButton
		  Next y
		  
		  Dim a as string
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mLoad_MonthList()
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "January"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "February"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "March"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "April"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "May"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "June"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "July"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "August"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "September"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "October"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "November"
		  CalendarWindow.Calendar_Container1.MonthPopup.AddRow "December"
		  
		  // Load Today's Month
		  CalendarWindow.Calendar_Container1.MonthPopup.ListIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mLoad_YearList(inStartYear as integer, inEndYear as Integer)
		  // Load the Year Pop Up Menu on the Calendar Container
		  for i as integer = inStartYear to inEndYear
		    CalendarWindow.Calendar_Container1.YearPopup.AddRow Str(i)
		  next i
		  CalendarWindow.Calendar_Container1.YearPopup.ListIndex = 0
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub TMP_MATH()
		  // Is This a Leap Year?
		  LeapYearBool = fCalcLeapYear(2015)
		  
		  // Year Number
		  YearNumber = fCalcYearNumber(Str(2015))
		  
		  // Month Number
		  MonthNumber = fCalcMonthNumber("May",LeapYearBool)
		  
		  // Day
		  DayNumber = 30
		  
		  // Calculate to get Weekday Number
		  Dim WeekdayNum as Integer = (CenturyNumber + YearNumber + MonthNumber + DayNumber) Mod 7
		  
		  // Map Weekday Number to Weekday String
		  FirstWeekday = fGetDayOfWeekString(WeekdayNum)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UPDATE_MapDaysToCalSlots()
		  Dim NumOfDaysInMonth as Integer  = fNumOfDaysInMonth(SelectedMonth)
		  Dim FirstCalSlot as Integer
		  
		  // Calendar Slot Mappings for Selected Month
		  FirstCalSlot = fGetFirstDayOfWeekCalSlotNumber(FirstWeekDay,CalMonFirstDayOfWeekBool)
		  
		  // Clear the Class' day values
		  mClearDays
		  // Map the Calendar Slots to Correct Month Days
		  Dim DayCounter as Integer  = 1
		  Dim i  as integer
		  for i = FirstCalSlot to NumOfDaysInMonth+FirstCalSlot-1
		    // Erase Other Marks
		    CalendarButtonClassArray(i).PrevMonthMark = False
		    CalendarButtonClassArray(i).NextMonthMark = False
		    // Process Selected Month Day
		    CalendarButtonClassArray(i).Day = DayCounter
		    DayCounter = DayCounter + 1
		    Invalidate(False)
		  Next i
		  
		  // Need to Calculate How many Available Spaces for the previous month's worth of Calendar Days
		  Dim CalPrevMonthSpacesAvailable as Integer = fCalcHowManyCalSlotsAvailable(7,13,1)
		  // Need to Calculate How many Available Spaces for the next month's worth of Calendar Days
		  Dim CalNextMonthSpacesAvailable as Integer = fCalcHowManyCalSlotsAvailable(38,48,0)
		  
		  // Figure Out which Months are Previous and Next
		  PreviousMonth = fGetPrevMonthString(SelectedMonth)
		  NextMonth = fGetNextMonthString(SelectedMonth)
		  // Figure Out How Many Days are in the Previous and Next Month
		  Dim PrevMonthNumOfDays as Integer = fNumOfDaysInMonth(PreviousMonth)
		  Dim NextMonthNumOfDays as Integer = fNumOfDaysInMonth(NextMonth)
		  
		  // Now Map the Previous Available Slots with the appropriate Previous Month's Ending Calendar Days
		  Dim PrevDayCounter as Integer  = PrevMonthNumOfDays
		  Dim ii as integer
		  for ii = FirstCalSlot-1 DownTo CalPrevMonthSpacesAvailable
		    CalendarButtonClassArray(ii).Day = PrevDayCounter
		    CalendarButtonClassArray(ii).PrevMonthMark = True
		    PrevDayCounter = PrevDayCounter - 1
		    Invalidate(False)
		  Next ii
		  
		  // Now Map the Next Available Slots with the appropriate Next Month's Beginning Calendar Days
		  Dim NextDayCounter as Integer  = 1
		  Dim xx as integer
		  Dim LastCalSlot as Integer = FirstCalSlot + NumOfDaysInMonth
		  for xx = LastCalSlot to 48 // 48 is the Last Calendar Slot
		    CalendarButtonClassArray(xx).Day = NextDayCounter
		    CalendarButtonClassArray(xx).NextMonthMark = True
		    NextDayCounter = NextDayCounter + 1
		    Invalidate(False)
		  Next xx
		  
		  Dim a as string
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UPDATE_MonthDays()
		  // This is the Day of Week the 1st day of the Selected Month is
		  Dim DayOfWeekFor1stDayOfMonth as String = fCalculate1stDayOfMonth
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		CalendarButton As CalendarButtonClass
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CalendarButtonClassArray() As CalendarButtonClass
	#tag EndProperty

	#tag Property, Flags = &h0
		CalMonFirstDayOfWeekBool As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h21
		Private CenturyNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		CurrentDate As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DayNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private EndYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		FirstWeekDay As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LeapYearBool As Boolean
	#tag EndProperty

	#tag Property, Flags = &h21
		Private MonthNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private MS_DayOfWeek() As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NextMonth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		NextYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PreviousMonth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		PrevYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedDate As Date
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedMonth As String
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedX As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedY As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		SelectedYear As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SS_DayOfWeek() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private StartYear As Integer = 1900
	#tag EndProperty

	#tag Property, Flags = &h0
		TodaysDate_NotSelected As Color = &c0000FF
	#tag EndProperty

	#tag Property, Flags = &h0
		TodaysDate_Selected As Color = &cFFFF00
	#tag EndProperty

	#tag Property, Flags = &h0
		YearNumber As Integer
	#tag EndProperty


	#tag ViewBehavior
		#tag ViewProperty
			Name="AcceptFocus"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AcceptTabs"
			Visible=true
			Group="Behavior"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="AutoDeactivate"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			Type="Picture"
			EditorType="Picture"
		#tag EndViewProperty
		#tag ViewProperty
			Name="CalMonFirstDayOfWeekBool"
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="EraseBackground"
			Visible=true
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstWeekDay"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="HelpTag"
			Visible=true
			Group="Appearance"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
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
			Name="NextMonth"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NextYear"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreviousMonth"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrevYear"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedMonth"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedX"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedY"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedYear"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="TodaysDate_NotSelected"
			Group="Behavior"
			InitialValue="&c0000FF"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="TodaysDate_Selected"
			Group="Behavior"
			InitialValue="&cFFFF00"
			Type="Color"
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
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Visible"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Width"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
		#tag EndViewProperty
		#tag ViewProperty
			Name="YearNumber"
			Group="Behavior"
			Type="Integer"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
