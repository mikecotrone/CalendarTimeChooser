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
		    
		    
		    if Keyboard.ShiftKey = True Then // Multi Selection
		      if AllowMultipleSelections = True Then
		        if X >= CalendarButtonClassArray(i).LeftX AND X <= CalendarButtonClassArray(i).RightX AND Y >= CalendarButtonClassArray(i).TopY AND Y <= CalendarButtonClassArray(i).BottomY Then
		          CalendarButtonClassArray(i).Selected = True
		          SelectedDate = New Date
		          // Set the correct month
		          if CalendarButtonClassArray(i).NextMonthMark = True Then
		            SelectedDate.Month = fConvertMonthStringToMonthNumber(NextMonth)
		          Elseif CalendarButtonClassArray(i).PrevMonthMark = True Then
		            SelectedDate.Month = fConvertMonthStringToMonthNumber(PreviousMonth)
		          end if
		          SelectedDate.Day = CalendarButtonClassArray(i).Day
		          SelectedDate.Month = fConvertMonthStringToMonthNumber(SelectedMonth)
		          SelectedDate.Year = CDbl(SelectedYear)
		          CalendarButtonClassArray(i).SelectedDate = SelectedDate
		          Calendar_Container(window).mRaiseEvent(CalendarButtonClassArray(i).SelectedDate)
		          Me.Invalidate(False)
		        end if
		      end if
		      
		    Elseif Keyboard.ShiftKey = False Then // Single Selection
		      if X >= CalendarButtonClassArray(i).LeftX AND X <= CalendarButtonClassArray(i).RightX AND Y >= CalendarButtonClassArray(i).TopY AND Y <= CalendarButtonClassArray(i).BottomY Then
		        mDeselectAll
		        CalendarButtonClassArray(i).Selected = True
		        SelectedDate = New Date
		        // Set the correct month
		        Dim MonthToAdvance as String
		        if CalendarButtonClassArray(i).NextMonthMark = True Then
		          SelectedDate.Month = fConvertMonthStringToMonthNumber(NextMonth)
		          MonthToAdvance = "Next"
		        Elseif CalendarButtonClassArray(i).PrevMonthMark = True Then
		          SelectedDate.Month = fConvertMonthStringToMonthNumber(PreviousMonth)
		          MonthToAdvance = "Prev"
		        end if
		        SelectedDate.Day = CalendarButtonClassArray(i).Day
		        SelectedDate.Year = CDbl(SelectedYear)
		        CalendarButtonClassArray(i).SelectedDate = SelectedDate
		        if MonthToAdvance = "Next" or MonthToAdvance = "Prev" Then
		          // Converting here
		          mTakeUsToMonth(MonthToAdvance, SelectedDate)
		          Calendar_Container(window).mRaiseEvent(SelectedDate)
		          //
		          
		          for ii as integer = 0 to UBound(CalendarButtonClassArray)
		            if CalendarButtonClassArray(ii).Day = SelectedDate.Day Then
		              CalendarButtonClassArray(ii).TransMark = True
		              CalendarButtonClassArray(ii).SelectedDate = SelectedDate
		            Else
		              CalendarButtonClassArray(ii).TransMark = False
		            End if
		            
		          next ii
		          mDeselectAll
		          mRemapSelectedToSlot
		        Else
		          SelectedDate.Month = fConvertMonthStringToMonthNumber(SelectedMonth)
		          Calendar_Container(window).mRaiseEvent(SelectedDate)
		          
		        End if
		        Me.Invalidate(False)
		      end if
		      
		    End if
		  next i
		  
		  
		  
		  // Need to flag if the date is in the current month, previous month, or next month
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  // Set Initially the Selected Date for Today's Date
		  Dim TodayIsTheDay as new Date
		  SelectedDate = TodayIsTheDay
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.AntiAlias = True
		  // Fill White Background
		  g.ForeColor = RGB(255,255,255)
		  g.FillRect (1,1,me.Width-2,me.Height-2)
		  
		  // Draw Outline for Canvas
		  g.ForeColor = RGB(116,116,116)
		  g.PenHeight = 2
		  g.PenWidth = 2
		  g.DrawroundRect(0,0,me.Width,me.Height,8,8)
		  
		  // Parms for the Highlighting Below
		  dim OffSet as Integer = 3
		  dim TwoOffset as Integer = (OffSet*2)
		  dim CurveSize as Integer = 6
		  
		  // Set Today's Date for Selected Date (on first time run)
		  if SelectTodayRunOnce = False Then
		    for i as integer = 7 to UBound(CalendarButtonClassArray)
		      if CalendarButtonClassArray(i).MyDate = CurrentDate Then
		        CalendarButtonClassArray(i).Selected = True
		        CalendarButtonClassArray(i).SelectedDate = CurrentDate
		      end if
		    next
		    SelectTodayRunOnce = True
		  end if
		  
		  // Draw Highlight If Selected
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    if CalendarButtonClassArray(i).Selected = True Then
		      if CalendarButtonClassArray(i).Day = 0 Then
		        // We don't want a user to be able to Select a Day that is hidden
		      Else
		        // Capture Selected Date in Date format for Custom Event
		        g.ForeColor = RGB(0,127,230)
		        #IF TargetMacOS Then
		          g.FillRoundRect(CalendarButtonClassArray(i).LeftX+OffSet+1, CalendarButtonClassArray(i).TopY+OffSet,CalendarButtonClassArray(i).Width-TwoOffset,CalendarButtonClassArray(i).Height-TwoOffset,CurveSize,CurveSize)
		        #ELSEIF TargetWin32 Then
		          g.FillRoundRect(CalendarButtonClassArray(i).LeftX+OffSet+1, CalendarButtonClassArray(i).TopY+OffSet,CalendarButtonClassArray(i).Width-TwoOffset,CalendarButtonClassArray(i).Height-TwoOffset,0,0)
		        #ENDIF
		      End if
		    End if
		    
		  Next i
		  
		  // Draw the Day of Week Labels using the Boolean to know if we are Sat - Sun or Mon - Sun
		  g.ForeColor = RGB(116,116,116)
		  g.TextFont = "System"
		  g.Bold = false
		  g.TextSize = 12
		  
		  // Measure the size of the Abbreviated Day Of Week so we may center it properly
		  Dim xPos as Integer
		  Dim DoWAbrvLen as Integer = DayOfWeekArray_SS(0).Len
		  if DoWAbrvLen = 1 Then // One Letter Abbreviation (Not Implemented yet)
		    xPos = 2
		  Elseif DoWAbrvLen = 2 Then // Two Letter Abbreviation Spacing
		    xPos = 11
		  Elseif DoWAbrvLen = 3 Then // Three Letter Abbreviation Spacing
		    xPos = 8
		  Else // Default to two letter abbreviations
		    xPos = 11
		  End if
		  
		  if CalMonFirstDayOfWeekBool = False Then
		    for x as integer = 0 to UBound(DayOfWeekArray_SS)
		      g.DrawString(DayOfWeekArray_SS(x),xPos-3,17)
		      xpos = xPos + 30
		    next x
		    
		  Elseif CalMonFirstDayOfWeekBool = True Then
		    for x as integer = 0 to UBound(DayOfWeek_MS)
		      g.DrawString(DayOfWeek_MS(x),xPos-3,17)
		      xpos = xPos + 30
		    next x
		    
		  End if
		  
		  Dim SelectMonthInt as Integer = fConvertMonthStringToMonthNumber(SelectedMonth)
		  // Draw Day Values in Calendar Spaces
		  for i as integer = 7 to UBound(CalendarButtonClassArray)
		    if CalendarButtonClassArray(i).Selected = True Then
		      if CDbl(SelectedYear) = CurrentDate.Year AND SelectMonthInt = CurrentDate.Month AND CalendarButtonClassArray(i).Day = CurrentDate.Day Then
		        g.bold = false
		        g.ForeColor = RGB(255,255,255)
		      Else
		        g.bold = false
		        g.ForeColor = RGB(255,255,255)
		      End if
		    elseif CalendarButtonClassArray(i).NextMonthMark = True OR  CalendarButtonClassArray(i).PrevMonthMark = True Then
		      g.bold = false
		      g.ForeColor= RGB(170,170,170)
		    elseif CDbl(SelectedYear) = CurrentDate.Year AND SelectMonthInt = CurrentDate.Month AND CalendarButtonClassArray(i).Day = CurrentDate.Day Then
		      g.bold = True
		      g.ForeColor = &c0000ff
		    Else
		      g.bold = false
		      g.ForeColor = RGB(0,0,0)
		    End if
		    
		    // Draw Days Centered -- Windows GDI+ Is different that MacOS for centering the Calendar Day Text FYI.
		    #IF TargetWin32 Then
		      if CalendarButtonClassArray(i).Day = 0 Then
		        g.DrawString("",CalendarButtonClassArray(i).LeftX+13,CalendarButtonClassArray(i).TopY+17)
		      Else
		        if CalendarButtonClassArray(i).Day > 0 AND CalendarButtonClassArray(i).Day < 10 Then
		          g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+13,CalendarButtonClassArray(i).TopY+17)
		        Else
		          g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+10,CalendarButtonClassArray(i).TopY+17)
		        End if
		        
		      End if
		    #ELSEIF TargetMacOS Then
		      if CalendarButtonClassArray(i).Day = 0 Then
		        g.DrawString("",CalendarButtonClassArray(i).LeftX+13,CalendarButtonClassArray(i).TopY+17)
		      Else
		        if CalendarButtonClassArray(i).Day > 0 AND CalendarButtonClassArray(i).Day < 10 Then
		          g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+12,CalendarButtonClassArray(i).TopY+17)
		        Else
		          g.DrawString(Str(CalendarButtonClassArray(i).day),CalendarButtonClassArray(i).LeftX+8,CalendarButtonClassArray(i).TopY+17)
		        End if
		      End if
		    #ENDIF
		    
		    
		  next i
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h1000
		Sub constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  // Assign Calendar Spaces
		  mInitialAssignmentCalendarButtons(36)
		  
		  // Date Instantiations
		  CurrentDate = new Date
		  //StartYear = CurrentDate.Year
		  
		  // Build Year Popup Menu on Calendar Container
		  mLoad_YearList(StartYear,EndYear)
		  
		  //// Build Month Popup Menu on Calendar Container
		  mLoad_MonthList
		  
		  // Load the Localized Day of the Week Abbreviation List to the Calendar
		  mBuild_LocalizedDayOfWeek_Arrays(0)
		  
		  /// /// /// /// /// /// /// /// ///
		  /// Gregorian Math ///
		  /// /// /// /// /// /// /// ///
		  
		  // Figure out Century Number
		  CenturyNumber = fCalcCenturyNumber(2015)
		  
		  
		  
		End Sub
	#tag EndMethod

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
		  If inMonth = Localized_February AND inLeapYear = True  OR inMonth = Localized_August Then
		    Return 0
		  Elseif inMonth = Localized_February AND inLeapYear = False OR inMonth = Localized_March or inMonth = Localized_November Then
		    Return 1
		  Elseif inMonth = Localized_June Then
		    Return 2
		  ElseIf inMonth = Localized_September OR inMonth = Localized_December Then
		    Return 3
		  ElseIf inMonth = Localized_January AND inLeapYear = True OR inMonth = Localized_April OR inMonth = Localized_July Then
		    Return 4
		  Elseif inMonth = Localized_January AND inLeapYear = False OR inMonth = Localized_October Then
		    Return 5
		  Elseif inMonth = Localized_May Then
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
		    Return Localized_January
		  Case 2
		    Return Localized_February
		  Case 3
		    Return Localized_March
		  Case 4
		    Return Localized_April
		  Case 5
		    Return Localized_May
		  Case 6
		    Return Localized_June
		  Case 7
		    Return Localized_July
		  Case 8
		    Return Localized_August
		  Case 9
		    Return Localized_September
		  Case 10
		    Return Localized_October
		  Case 11
		    Return Localized_November
		  Case 12
		    Return Localized_December
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fConvertMonthStringToMonthNumber(inMonth as String) As Integer
		  Select Case inMonth
		    
		  Case Localized_January
		    Return 1
		  Case Localized_February
		    Return 2
		  Case Localized_March
		    Return 3
		  Case Localized_April
		    Return 4
		  Case Localized_May
		    Return 5
		  Case Localized_June
		    Return 6
		  Case Localized_July
		    Return 7
		  Case Localized_August
		    Return 8
		  Case Localized_September
		    Return 9
		  Case Localized_October
		    Return 10
		  Case Localized_November
		    Return 11
		  Case Localized_December
		    Return 12
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetDayOfWeekString(inDayOfWeekNum as Integer) As String
		  Select Case inDayOfWeekNum
		  Case 0
		    Return Localized_Sunday
		  Case 1
		    Return Localized_Monday
		  Case 2
		    Return Localized_Tuesday
		  Case 3
		    Return Localized_Wednesday
		  Case 4
		    Return Localized_Thursday
		  Case 5
		    Return Localized_Friday
		  Case 6
		    Return Localized_Saturday
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetFirstDayOfWeekCalSlotNumber(inDayofWeekString as String, inCalMonFirstDayOfWeekBool as Boolean) As Integer
		  if inCalMonFirstDayOfWeekBool = False Then
		    // Sunday is the First Day of the Week Calendar Labeling Wise
		    Select Case FirstWeekDay
		    Case Localized_Sunday
		      Return 7 // 0 Based
		    Case Localized_Monday
		      Return 8
		    Case Localized_Tuesday
		      Return 9
		    Case Localized_Wednesday
		      Return 10
		    Case Localized_Thursday
		      Return 11
		    Case Localized_Friday
		      Return 12
		    Case Localized_Saturday
		      Return 13
		    End Select
		    
		  Elseif inCalMonFirstDayOfWeekBool = True Then
		    // Monday is the First Day of the Week Calendar Labeling Wise
		    Select Case FirstWeekDay
		    Case Localized_Monday
		      Return 7 // 0 Based
		    Case Localized_Tuesday
		      Return 8
		    Case Localized_Wednesday
		      Return 9
		    Case Localized_Thursday
		      Return 10
		    Case Localized_Friday
		      Return 11
		    Case Localized_Saturday
		      Return 12
		    Case Localized_Sunday
		      Return 13
		    End Select
		  End if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetNextMonthString(inSelectedMonth as String) As String
		  Select Case inSelectedMonth
		    
		  Case Localized_December
		    Return  Localized_January
		    
		  Case Localized_January
		    Return Localized_February
		    
		  Case Localized_February
		    Return Localized_March
		    
		  Case Localized_March
		    Return Localized_April
		    
		  Case  Localized_April
		    Return  Localized_May
		    
		  Case Localized_May
		    Return  Localized_June
		    
		  Case Localized_June
		    Return Localized_July
		    
		  Case Localized_July
		    Return Localized_August
		    
		  Case Localized_August
		    Return Localized_September
		    
		  Case Localized_September
		    Return Localized_October
		    
		  Case Localized_October
		    Return Localized_November
		    
		  Case Localized_November
		    Return Localized_December
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fGetPrevMonthString(inSelectedMonth as String) As String
		  Select Case inSelectedMonth
		    
		  Case Localized_January
		    Return Localized_December
		    
		  Case Localized_February
		    Return Localized_January
		    
		  Case Localized_March
		    Return Localized_February
		    
		  Case Localized_April
		    Return Localized_March
		    
		  Case Localized_May
		    Return  Localized_April
		    
		  Case Localized_June
		    Return Localized_May
		    
		  Case Localized_July
		    Return Localized_June
		    
		  Case Localized_August
		    Return Localized_July
		    
		  Case Localized_September
		    Return Localized_August
		    
		  Case Localized_October
		    Return Localized_September
		    
		  Case Localized_November
		    Return Localized_October
		    
		  Case Localized_December
		    Return Localized_November
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
		  Case Localized_January
		    Return 31
		    
		  Case Localized_February
		    if LeapYearBool = True Then
		      Return 29
		    Elseif LeapYearBool = False Then
		      Return 28
		    End if
		    
		  Case Localized_March
		    Return 31
		    
		  Case Localized_April
		    Return 30
		    
		  Case Localized_May
		    Return 31
		    
		  Case Localized_June
		    Return 30
		    
		  Case Localized_July
		    Return 31
		    
		  Case Localized_August
		    Return 31
		    
		  Case Localized_September
		    Return 30
		    
		  Case Localized_October
		    Return 31
		    
		  Case Localized_November
		    Return 30
		    
		  Case Localized_December
		    Return 31
		    
		  End Select
		  
		  
		  
		  
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mBuildLocalizedDayOfWeekList(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		    
		  Case 0
		    Localized_Monday = "Monday"
		    Localized_Tuesday = "Tuesday"
		    Localized_Wednesday = "Wednesday"
		    Localized_Thursday = "Thursday"
		    Localized_Friday = "Friday"
		    Localized_Saturday = "Saturday"
		    Localized_Sunday = "Sunday"
		    
		  Case 1  // French
		    Localized_Monday = "Lundi"
		    Localized_Tuesday = "Mardi"
		    Localized_Wednesday = "Mercredi"
		    Localized_Thursday = "Jeudi"
		    Localized_Friday = "Vendredi"
		    Localized_Saturday = "Samedi"
		    Localized_Sunday = "Dimanche"
		    
		  Case 2  // Swedish
		    Localized_Monday = "Måndag"
		    Localized_Tuesday = "Tisdag"
		    Localized_Wednesday = "Onsdag"
		    Localized_Thursday = "Torsdag"
		    Localized_Friday = "Fredag"
		    Localized_Saturday = "Lördag"
		    Localized_Sunday = "Söndag"
		    
		  Case 3 // Italian
		    Localized_Monday = "Lunedì"
		    Localized_Tuesday = "Martedì"
		    Localized_Wednesday = "Mercoledì"
		    Localized_Thursday = "Giovedì"
		    Localized_Friday = "Venerdì"
		    Localized_Saturday = "Sabato"
		    Localized_Sunday = "Domenica"
		    
		  Case 4 // Spanish
		    Localized_Monday = "Lunes"
		    Localized_Tuesday = "Martes"
		    Localized_Wednesday = "Miércoles"
		    Localized_Thursday = "Jueves"
		    Localized_Friday = "Viernes"
		    Localized_Saturday = "Sábado"
		    Localized_Sunday = "Domingo"
		    
		  Case 5 // Dutch
		    Localized_Monday = "Maandag"
		    Localized_Tuesday = "Dinsdag"
		    Localized_Wednesday = "Woensdag"
		    Localized_Thursday = "Donderdag"
		    Localized_Friday = "Vrijdag"
		    Localized_Saturday = "Zaterdag"
		    Localized_Sunday = "Zondag"
		    
		  Case 6 // German
		    Localized_Monday = "Montag"
		    Localized_Tuesday = "Dienstag"
		    Localized_Wednesday = "Mittwoch"
		    Localized_Thursday = "Donnerstag"
		    Localized_Friday = "Freitag"
		    Localized_Saturday = "Samstag"
		    Localized_Sunday = "Sonntag"
		    
		  Case 7 // Afrikaans
		    Localized_Monday = "Maandag"
		    Localized_Tuesday = "Dinsdag"
		    Localized_Wednesday = "Woensdag"
		    Localized_Thursday = "Donderdag"
		    Localized_Friday = "Vrydag"
		    Localized_Saturday = "Saterdag"
		    Localized_Sunday = "Sondag"
		    
		  Case 8 // Polish
		    Localized_Monday = "Poniedziałek"
		    Localized_Tuesday = "Wtorek"
		    Localized_Wednesday = "Środa"
		    Localized_Thursday = "Czwartek"
		    Localized_Friday = "Piątek"
		    Localized_Saturday = "Sobota"
		    Localized_Sunday = "Niedziela"
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mBuildLocalizedMonthList(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		    
		  Case 0
		    Localized_January = "January"
		    Localized_February = "February"
		    Localized_March = "March"
		    Localized_April = "April"
		    Localized_May = "May"
		    Localized_June = "June"
		    Localized_July = "July"
		    Localized_August = "August"
		    Localized_September = "September"
		    Localized_October = "October"
		    Localized_November = "November"
		    Localized_December = "December"
		    
		  Case 1  // French
		    Localized_January = "Janvier"
		    Localized_February = "Février"
		    Localized_March = "Mars"
		    Localized_April = "Avril"
		    Localized_May = "Mai"
		    Localized_June = "Juin"
		    Localized_July = "Juillet"
		    Localized_August = "Août"
		    Localized_September = "Septembre"
		    Localized_October = "Octobre"
		    Localized_November = "Novembre"
		    Localized_December = "Décembre"
		    
		  Case 2 // Swedish
		    Localized_January = "Januari"
		    Localized_February = "Februari"
		    Localized_March = "Mars"
		    Localized_April = "April"
		    Localized_May = "Maj"
		    Localized_June = "Juni"
		    Localized_July = "Juli"
		    Localized_August = "Augusti"
		    Localized_September = "September"
		    Localized_October = "Oktober"
		    Localized_November = "November"
		    Localized_December = "December"
		    
		  Case 3 // Italian
		    Localized_January = "Gennaio"
		    Localized_February = "Febbraio"
		    Localized_March = "Marzo"
		    Localized_April = "Aprile"
		    Localized_May = "Maggio"
		    Localized_June = "Giugno"
		    Localized_July = "Luglio"
		    Localized_August = "Agosto"
		    Localized_September = "Settembre"
		    Localized_October = "Ottobre"
		    Localized_November = "Novembre"
		    Localized_December = "Dicembre"
		    
		  Case 4 // Spanish
		    Localized_January = "Enero"
		    Localized_February = "Febrero"
		    Localized_March = "Marzo"
		    Localized_April = "Abril"
		    Localized_May = "Mayo"
		    Localized_June = "Junio"
		    Localized_July = "Julio"
		    Localized_August = "Agosto"
		    Localized_September = "Septiembre"
		    Localized_October = "Octubre"
		    Localized_November = "Noviembre"
		    Localized_December = "Diciembre"
		    
		  Case 5 // Dutch
		    Localized_January = "Januari"
		    Localized_February = "Februari"
		    Localized_March = "Maart"
		    Localized_April = "April"
		    Localized_May = "Mei"
		    Localized_June = "Juni"
		    Localized_July = "Juli"
		    Localized_August = "Augustus"
		    Localized_September = "September"
		    Localized_October = "Oktober"
		    Localized_November = "November"
		    Localized_December = "December"
		    
		  Case 6 // German
		    Localized_January = "Januar"
		    Localized_February = "Februar"
		    Localized_March = "März"
		    Localized_April = "April"
		    Localized_May = "Mai"
		    Localized_June = "Juni"
		    Localized_July = "Juli"
		    Localized_August = "August"
		    Localized_September = "September"
		    Localized_October = "Oktober"
		    Localized_November = "November"
		    Localized_December = "Dezember"
		    
		  Case 7 // Afrikaans
		    Localized_January = "Januarie"
		    Localized_February = "Februarie"
		    Localized_March = "Maart"
		    Localized_April = "April"
		    Localized_May = "Mei"
		    Localized_June = "Junie"
		    Localized_July = "Julie"
		    Localized_August = "Augustus"
		    Localized_September = "September"
		    Localized_October = "Oktober"
		    Localized_November = "November"
		    Localized_December = "Desember"
		    
		  Case 8 // Polish
		    Localized_January = "Styczeń"
		    Localized_February = "Luty"
		    Localized_March = "Marzec"
		    Localized_April = "Kwiecień"
		    Localized_May = "Maj"
		    Localized_June = "Czerwiec"
		    Localized_July = "Lipiec"
		    Localized_August = "Sierpień"
		    Localized_September = "Wrzesień"
		    Localized_October = "Październik"
		    Localized_November = "Listopad"
		    Localized_December = "Grudzień"
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mBuild_LocalizedDayOfWeek_Arrays(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		    
		  Case 0
		    ////////////////////////////
		    /////// English ///////
		    ///////////////////////////
		    //Sat - Sun
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Su"
		    DayOfWeekArray_SS.Append "Mo"
		    DayOfWeekArray_SS.Append "Tu"
		    DayOfWeekArray_SS.Append "We"
		    DayOfWeekArray_SS.Append "Th"
		    DayOfWeekArray_SS.Append "Fr"
		    DayOfWeekArray_SS.Append "Sa"
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Mo"
		    DayOfWeek_MS.Append "Tu"
		    DayOfWeek_MS.Append "We"
		    DayOfWeek_MS.Append "Th"
		    DayOfWeek_MS.Append "Fr"
		    DayOfWeek_MS.Append "Sa"
		    DayOfWeek_MS.Append "Su"
		    
		  Case 1 // French
		    //Sat - Sun
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Dim"
		    DayOfWeekArray_SS.Append "Lun"
		    DayOfWeekArray_SS.Append "Mar"
		    DayOfWeekArray_SS.Append "Mer"
		    DayOfWeekArray_SS.Append "Jeu"
		    DayOfWeekArray_SS.Append "Ven"
		    DayOfWeekArray_SS.Append "Sam"
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Lun"
		    DayOfWeek_MS.Append "Mar"
		    DayOfWeek_MS.Append "Mer"
		    DayOfWeek_MS.Append "Jeu"
		    DayOfWeek_MS.Append "Ven"
		    DayOfWeek_MS.Append "Sam"
		    DayOfWeek_MS.Append "Dim"
		    
		  Case 2 // Swedish
		    //Sat - Sun
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Sön"
		    DayOfWeekArray_SS.Append "Mån"
		    DayOfWeekArray_SS.Append "Tis"
		    DayOfWeekArray_SS.Append "Ons"
		    DayOfWeekArray_SS.Append "Tor"
		    DayOfWeekArray_SS.Append "Fre"
		    DayOfWeekArray_SS.Append "Lör"
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Mån"
		    DayOfWeek_MS.Append "Tis"
		    DayOfWeek_MS.Append "Ons"
		    DayOfWeek_MS.Append "Tor"
		    DayOfWeek_MS.Append "Fre"
		    DayOfWeek_MS.Append "Lör"
		    DayOfWeek_MS.Append "Sön"
		    
		  Case 3 // Italian
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Dom"
		    DayOfWeekArray_SS.Append "Mar"
		    DayOfWeekArray_SS.Append "Mer"
		    DayOfWeekArray_SS.Append "Gio"
		    DayOfWeekArray_SS.Append "Ven"
		    DayOfWeekArray_SS.Append "Sab"
		    DayOfWeekArray_SS.Append "Lör"
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Lun"
		    DayOfWeek_MS.Append "Mar"
		    DayOfWeek_MS.Append "Mer"
		    DayOfWeek_MS.Append "Gio"
		    DayOfWeek_MS.Append "Ven"
		    DayOfWeek_MS.Append "Sab"
		    DayOfWeek_MS.Append "Dom"
		    
		    
		  Case 4 // Spanish
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Do" // Sunday
		    DayOfWeekArray_SS.Append "Lu"
		    DayOfWeekArray_SS.Append "Ma"
		    DayOfWeekArray_SS.Append "Mi"
		    DayOfWeekArray_SS.Append "Ju"
		    DayOfWeekArray_SS.Append "Vi"
		    DayOfWeekArray_SS.Append "Sá" // Saturday
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Lu" // Monday
		    DayOfWeek_MS.Append "Ma"
		    DayOfWeek_MS.Append "Mi"
		    DayOfWeek_MS.Append "Ju"
		    DayOfWeek_MS.Append "Vi"
		    DayOfWeek_MS.Append "Sá"
		    DayOfWeek_MS.Append "Do" // Sunday
		    
		    
		  Case 5 // Dutch
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Zon" // Sunday
		    DayOfWeekArray_SS.Append "Maa"
		    DayOfWeekArray_SS.Append "Din"
		    DayOfWeekArray_SS.Append "Woe"
		    DayOfWeekArray_SS.Append "Don"
		    DayOfWeekArray_SS.Append "Vry"
		    DayOfWeekArray_SS.Append "Zat" // Saturday
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Maa" // Monday
		    DayOfWeek_MS.Append "Din"
		    DayOfWeek_MS.Append "Woe"
		    DayOfWeek_MS.Append "Don"
		    DayOfWeek_MS.Append "Vry"
		    DayOfWeek_MS.Append "Zat"
		    DayOfWeek_MS.Append "Zon" // Sunday
		    
		  Case 6 // German
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "So" // Sunday
		    DayOfWeekArray_SS.Append "Mo"
		    DayOfWeekArray_SS.Append "Di"
		    DayOfWeekArray_SS.Append "Mi"
		    DayOfWeekArray_SS.Append "Do"
		    DayOfWeekArray_SS.Append "Fr"
		    DayOfWeekArray_SS.Append "Sa" // Saturday
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Mo" // Monday
		    DayOfWeek_MS.Append "Di"
		    DayOfWeek_MS.Append "Mi"
		    DayOfWeek_MS.Append "Do"
		    DayOfWeek_MS.Append "Fr"
		    DayOfWeek_MS.Append "Sa"
		    DayOfWeek_MS.Append "So" // Sunday
		    
		  Case 7 // Africaans
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Son" // Sunday
		    DayOfWeekArray_SS.Append "Maa"
		    DayOfWeekArray_SS.Append "Din"
		    DayOfWeekArray_SS.Append "Woe"
		    DayOfWeekArray_SS.Append "Don"
		    DayOfWeekArray_SS.Append "Vry"
		    DayOfWeekArray_SS.Append "Sat" // Saturday
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Maa" // Monday
		    DayOfWeek_MS.Append "Din"
		    DayOfWeek_MS.Append "Woe"
		    DayOfWeek_MS.Append "Don"
		    DayOfWeek_MS.Append "Vry"
		    DayOfWeek_MS.Append "Sat"
		    DayOfWeek_MS.Append "Son" // Sunday
		    
		  Case 8 // Polish
		    Redim DayOfWeekArray_SS(-1)
		    DayOfWeekArray_SS.Append "Ni" // Sunday
		    DayOfWeekArray_SS.Append "Pn"
		    DayOfWeekArray_SS.Append "Wt"
		    DayOfWeekArray_SS.Append "Śr"
		    DayOfWeekArray_SS.Append "Czw"
		    DayOfWeekArray_SS.Append "Pt"
		    DayOfWeekArray_SS.Append "Sob" // Saturday
		    // Mon - Sun
		    Redim DayOfWeek_MS(-1)
		    DayOfWeek_MS.Append "Pn" // Monday
		    DayOfWeek_MS.Append "Wt"
		    DayOfWeek_MS.Append "Śr"
		    DayOfWeek_MS.Append "Czw"
		    DayOfWeek_MS.Append "Pt"
		    DayOfWeek_MS.Append "Sob"
		    DayOfWeek_MS.Append "Ni" // Sunday
		    
		  End Select
		  
		  
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

	#tag Method, Flags = &h0
		Sub mLoad_MonthList()
		  Calendar_Container(window).MonthPopup.DeleteAllRows
		  Calendar_Container(window).MonthPopup.AddRow Localized_January
		  Calendar_Container(window).MonthPopup.AddRow Localized_February
		  Calendar_Container(window).MonthPopup.AddRow Localized_March
		  Calendar_Container(window).MonthPopup.AddRow Localized_April
		  Calendar_Container(window).MonthPopup.AddRow Localized_May
		  Calendar_Container(window).MonthPopup.AddRow Localized_June
		  Calendar_Container(window).MonthPopup.AddRow Localized_July
		  Calendar_Container(window).MonthPopup.AddRow Localized_August
		  Calendar_Container(window).MonthPopup.AddRow Localized_September
		  Calendar_Container(window).MonthPopup.AddRow Localized_October
		  Calendar_Container(window).MonthPopup.AddRow Localized_November
		  Calendar_Container(window).MonthPopup.AddRow Localized_December
		  
		  // Default to Today's Month on Startup
		  Dim TodaysMonth as New Date
		  Dim TodaysMonthString as String = fConvertMonthIntToMonthString(TodaysMonth.Month)
		  
		  for i as integer = 0 to Calendar_Container(Window).MonthPopup.ListCount-1
		    if TodaysMonthString = Calendar_Container(Window).MonthPopup.List(i) Then
		      Calendar_Container(Window).MonthPopup.ListIndex = i
		    End if
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mLoad_YearList(inStartYear as integer, inEndYear as Integer)
		  // Load the Year Pop Up Menu on the Calendar Container
		  Calendar_Container(window).YearPopup.DeleteAllRows
		  for i as integer = inStartYear to inEndYear
		    Calendar_Container(window).YearPopup.AddRow Str(i)
		  next i
		  
		  // Load Curent Year
		  Dim TodaysYear as New Date
		  for i as integer = 0 to Calendar_Container(window).YearPopup.ListCount-1
		    if Str(TodaysYear.Year) = Calendar_Container(window).YearPopup.List(i) Then
		      Calendar_Container(window).YearPopup.ListIndex = i
		    End if
		  next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mRemapSelectedToSlot()
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    
		    if CalendarButtonClassArray(i).SelectedDate= CalendarButtonClassArray(i).MyDate Then
		      if CalendarButtonClassArray(i).Day = SelectedDate.Day Then
		        CalendarButtonClassArray(i).Selected = True
		      end if
		    End if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mSelectDayToHighlight(inDate as Date)
		  for i as integer = 0 to UBound(CalendarButtonClassArray)
		    
		    SelectedDate = New Date
		    // Set the correct month
		    SelectedDate = CurrentDate
		    CalendarButtonClassArray(i).SelectedDate = inDate
		    if CalendarButtonClassArray(i).MyDate = inDate Then
		      CalendarButtonClassArray(i).Selected = True
		    End if
		    Me.Invalidate(False)
		    
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mTakeUsToMonth(inMonth as String, inSelectedDate as Date)
		  Select Case inMonth
		  Case "Next"
		    // Need a Check to See about Incrementing Year or not
		    if NextMonth = Localized_January then
		      // Need to increment Year
		      NextYear = CDbl(Calendar_Container(Window).YearPopup.Text)+1
		      for i as integer = 0 to Calendar_Container(Window).YearPopup.ListCount-1
		        if Str(NextYear) = Calendar_Container(Window).YearPopup.List(i) Then
		          Calendar_Container(Window).YearPopup.ListIndex = i
		          exit
		        End if
		      next i
		    End if
		    for i as integer = 0 to Calendar_Container(Window).MonthPopup.ListCount-1
		      if NextMonth = Calendar_Container(Window).MonthPopup.List(i) Then
		        Calendar_Container(Window).MonthPopup.ListIndex = i
		        exit
		      End if
		    next i
		    
		  Case "Prev"
		    
		    if PreviousMonth = Calendar_Container(Window).Calendar1.Localized_December then
		      // Need to increment Year
		      PrevYear = CDbl(Calendar_Container(Window).YearPopup.Text)-1
		      for i as integer = 0 to Calendar_Container(Window).YearPopup.ListCount-1
		        if Str(PrevYear) = Calendar_Container(Window).YearPopup.List(i) Then
		          Calendar_Container(Window).YearPopup.ListIndex = i
		          exit
		        End if
		      next i
		    End if
		    
		    for i as integer = 0 to Calendar_Container(Window).MonthPopup.ListCount-1
		      if PreviousMonth = Calendar_Container(Window).MonthPopup.List(i) Then
		        Calendar_Container(Window).MonthPopup.ListIndex = i
		        exit
		      End if
		    next i
		    
		    
		  End Select
		  
		  
		  
		  
		  Me.Invalidate(False)
		  
		  
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
		    
		    // Set MYDate for Current Month
		    Dim TmpDate as New Date
		    TmpDate.Month = fConvertMonthStringToMonthNumber(SelectedMonth)
		    TmpDate.Day = DayCounter
		    TmpDate.Year = CDbl(SelectedYear)
		    CalendarButtonClassArray(i).MyDate = TmpDate
		    
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
		  
		  if Calendar_Container(window).Calendar1.IncludePrevNextMonthDaysBool = True Then
		    // Now Map the Previous Available Slots with the appropriate Previous Month's Ending Calendar Days
		    Dim PrevDayCounter as Integer  = PrevMonthNumOfDays
		    Dim ii as integer
		    for ii = FirstCalSlot-1 DownTo CalPrevMonthSpacesAvailable
		      CalendarButtonClassArray(ii).Day = PrevDayCounter
		      
		      Dim TmpDate as New Date
		      TmpDate.Year = CDbl(SelectedYear)
		      TmpDate.Month = fConvertMonthStringToMonthNumber(PreviousMonth)
		      TmpDate.Day = PrevDayCounter
		      CalendarButtonClassArray(ii).MyDate = TmpDate
		      
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
		      
		      Dim TmpDate as New Date
		      TmpDate.Year = CDbl(SelectedYear)
		      TmpDate.Month = fConvertMonthStringToMonthNumber(NextMonth)
		      TmpDate.Day = NextDayCounter
		      CalendarButtonClassArray(xx).MyDate = TmpDate
		      
		      CalendarButtonClassArray(xx).NextMonthMark = True
		      NextDayCounter = NextDayCounter + 1
		      Invalidate(False)
		    Next xx
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub UPDATE_MonthDays()
		  // This is the Day of Week the 1st day of the Selected Month is
		  Dim DayOfWeekFor1stDayOfMonth as String = fCalculate1stDayOfMonth
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		AllowMultipleSelections As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		CalendarButton As CalendarButtonClass
	#tag EndProperty

	#tag Property, Flags = &h0
		CalendarButtonClassArray() As CalendarButtonClass
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
		Private DayOfWeekArray_SS() As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private DayOfWeek_MS() As String
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return inEndYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  inEndYear = value
			  
			  mLoad_YearList(StartYear,inEndYear)
			End Set
		#tag EndSetter
		EndYear As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h0
		FirstWeekDay As String
	#tag EndProperty

	#tag Property, Flags = &h0
		IncludePrevNextMonthDaysBool As Boolean = True
	#tag EndProperty

	#tag Property, Flags = &h21
		Private inEndYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private inStartYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private LeapYearBool As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_April As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_August As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_December As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_February As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Friday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_January As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_July As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_June As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_March As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_May As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Monday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_November As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_October As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Saturday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_September As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Sunday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Thursday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Tuesday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		Localized_Wednesday As String
	#tag EndProperty

	#tag Property, Flags = &h0
		MonthNumber As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelectedYear As String
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

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mSelectedYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mSelectedYear = value
			  
			  if mSelectedYear = "" Then
			    mSelectedYear = "2014"
			  End if
			End Set
		#tag EndSetter
		SelectedYear As String
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private SelectTodayRunOnce As Boolean = False
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return inStartYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  inStartYear= value
			  
			  mLoad_YearList(inStartYear,2020)
			End Set
		#tag EndSetter
		StartYear As Integer
	#tag EndComputedProperty

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
			Name="AllowMultipleSelections"
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
			Name="EndYear"
			Group="Behavior"
			InitialValue="2050"
			Type="Integer"
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
			Name="IncludePrevNextMonthDaysBool"
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
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
			Name="Localized_April"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_August"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_December"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_February"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Friday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_January"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_July"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_June"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_March"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_May"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Monday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_November"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_October"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Saturday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_September"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Sunday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Thursday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Tuesday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Wednesday"
			Group="Behavior"
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="MonthNumber"
			Group="Behavior"
			Type="Integer"
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
			Name="StartYear"
			Group="Behavior"
			InitialValue="1904"
			Type="Integer"
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
