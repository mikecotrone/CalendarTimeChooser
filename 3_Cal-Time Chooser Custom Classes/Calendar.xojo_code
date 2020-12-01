#tag Class
Protected Class Calendar
Inherits Canvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  Return True
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  Var i as integer
		  for i = 0 to lr
		    CalendarButtonClassArray(i).mouseOver = False
		  next
		  
		  Me.Invalidate(False)
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  Var i as integer
		  for i = 0 to lr
		    if i > 6  Then
		      if  X > CalendarButtonClassArray(i).LeftX AND X < CalendarButtonClassArray(i).RightX AND Y > CalendarButtonClassArray(i).TopY AND Y < CalendarButtonClassArray(i).BottomY Then
		        CalendarButtonClassArray(i).mouseOver = True
		        
		      Else
		        CalendarButtonClassArray(i).mouseOver = False
		        
		      end if
		    end if
		    
		    Me.Invalidate(False)
		  next
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseUp(X As Integer, Y As Integer)
		  Var lr As Integer = CalendarButtonClassArray.LastIndex
		  Var i As Integer
		  For i = 0 To lr
		    
		    If Keyboard.ShiftKey = True Then // Multi Selection
		      If AllowMultipleSelections = True Then
		        If X > CalendarButtonClassArray(i).LeftX And X < CalendarButtonClassArray(i).RightX And Y > CalendarButtonClassArray(i).TopY And Y < CalendarButtonClassArray(i).BottomY Then
		          CalendarButtonClassArray(i).Selected = True
		          SelectedDate = New Date
		          // Set the correct month
		          If CalendarButtonClassArray(i).NextMonthMark = True Then
		            SelectedDate.Month = convertMonthStringToMonthNumber(NextMonth)
		          Elseif CalendarButtonClassArray(i).PrevMonthMark = True Then
		            SelectedDate.Month = convertMonthStringToMonthNumber(PreviousMonth)
		          End If
		          SelectedDate.Month = convertMonthStringToMonthNumber(SelectedMonth)
		          SelectedDate.Year = SelectedYear.ToDouble
		          SelectedDate.Day = CalendarButtonClassArray(i).Day
		          CalendarButtonClassArray(i).SelectedDate = SelectedDate
		          Calendar_Container(Window).raiseThisEvent(CalendarButtonClassArray(i).SelectedDate)
		          Me.Invalidate(False)
		        End If
		      End If
		      
		    Elseif Keyboard.ShiftKey = False Then 
		      // SINGLE SELECTION
		      
		      If i > 6 Then
		        If X > CalendarButtonClassArray(i).LeftX And X < CalendarButtonClassArray(i).RightX And Y > CalendarButtonClassArray(i).TopY And Y < CalendarButtonClassArray(i).BottomY Then
		          deselectAll()  
		          CalendarButtonClassArray(i).Selected = True
		          SelectedDate = New Date
		          Var MonthToAdvance As String
		          
		          If CalendarButtonClassArray(i).NextMonthMark = True Then
		            // DO NOT DRAW SLOT IF DO NOT SHOW NEXT MONTH IS SET TRUE
		            If  IncludePrevNextMonthDaysBool = False Then 
		              Return
		            End If
		            
		            SelectedDate.Month = convertMonthStringToMonthNumber(NextMonth)
		            SelectedDate.Day = CalendarButtonClassArray(i).Day
		            MonthToAdvance = "Next"
		            
		          Elseif CalendarButtonClassArray(i).PrevMonthMark = True Then
		            // DO NOT DRAW SLOT IF DO NOT SHOW NEXT MONTH IS SET TRUE
		            If  IncludePrevNextMonthDaysBool = False Then 
		              Return
		            End If
		            
		            SelectedDate.Month = convertMonthStringToMonthNumber(PreviousMonth)
		            SelectedDate.Day = CalendarButtonClassArray(i).Day
		            MonthToAdvance = "Prev"
		            
		          End If
		          
		          SelectedDate.Year = SelectedYear.ToDouble
		          CalendarButtonClassArray(i).SelectedDate = SelectedDate
		          
		          
		          If MonthToAdvance = "Next" Or MonthToAdvance = "Prev" Then
		            deselectAll()
		            takeUsToMonth(MonthToAdvance, SelectedDate)
		            Calendar_Container(Window).raiseThisEvent(SelectedDate)
		            Var lr2 As Integer = CalendarButtonClassArray.LastIndex
		            
		            For ii As Integer = 0 To lr2
		              If CalendarButtonClassArray(ii).Day = SelectedDate.Day Then
		                CalendarButtonClassArray(ii).TransMark = True
		                CalendarButtonClassArray(ii).SelectedDate = SelectedDate
		                
		              Else
		                CalendarButtonClassArray(ii).TransMark = False
		                
		              End If
		              
		            Next ii
		            remapSelectedToSlot()
		            
		          Else
		            SelectedDate.Month = convertMonthStringToMonthNumber(SelectedMonth)
		            SelectedDate.Day = CalendarButtonClassArray(i).Day
		            
		            // SEND SELECTED DATE TO SELECTED-DATE EVENT
		            Calendar_Container(Window).raiseThisEvent(SelectedDate)
		            
		          End If
		          Me.Invalidate(False)
		          
		        End If
		        
		      End If
		    End If
		  Next i
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #If TargetWindows Then
		    DoubleBuffer = True
		    Transparent = True
		    EraseBackground = False
		  #endif
		  
		  
		  // Set Initially the Selected Date for Today's Date
		  Var TodayIsTheDay as new Date
		  SelectedDate = TodayIsTheDay
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  g.AntiAlias = True
		  
		  
		  // FILL BACKGROUND COLOR
		  g.ForeColor =  &cFFFFFF
		  g.FillRect (1,1,Me.Width-2,Me.Height-2)
		  
		  // DRAW CANVAS BORDER OUTLINE 
		  g.ForeColor = RGB(170,170,170)
		  g.PenHeight = .5
		  g.PenWidth = .5
		  g.DrawRect(0,0,g.Width,g.Height)
		  
		  // DRAW GRIDLINES FOR DEBUGGING
		  'For q As Integer = 0 To CalendarButtonClassArray.Ubound
		  'g.ForeColor = &cff0000
		  'g.DrawLine(CalendarButtonClassArray(q).LeftX, CalendarButtonClassArray(q).TopY,CalendarButtonClassArray(q).RightX, CalendarButtonClassArray(q).TopY)
		  'g.DrawLine(CalendarButtonClassArray(q).LeftX, CalendarButtonClassArray(q).TopY, CalendarButtonClassArray(q).LeftX, CalendarButtonClassArray(q).BottomY)
		  'Next q
		  
		  // DRAW COLUMN LINE: USER OPTION
		  If drawColumnLines = True Then
		    g.PenHeight = .5
		    g.PenWidth = .5
		    Var lineWidth As Integer = 1
		    Var colLineX1POS As Integer = 30
		    Var colLineY1POS As Integer = 8
		    Var colLineX2POS As Integer = 30
		    Var colLineY2POS As Integer = 160
		    g.PenHeight = lineWidth
		    g.PenWidth = lineWidth
		    
		    For i As Integer = 1 To 6
		      g.DrawLine(colLineX1POS, colLineY1POS, colLineX2POS, colLineY2POS)
		      colLineX1POS = colLineX1POS + 30
		      colLineX2POS = colLineX1POS
		    Next i
		  End If
		  
		  // HIGHLIGHT AND SET TODAY'S DATE
		  Var lr As Integer = CalendarButtonClassArray.LastIndex
		  If SelectTodayRunOnce = False Then
		    For i As Integer = 7 To lr
		      Var calBtnClsMyDate as Date = CalendarButtonClassArray(i).MyDate
		      If calBtnClsMyDate.Month = CurrentDate.Month AND calBtnClsMyDate.Day = CurrentDate.Day AND calBtnClsMyDate.Year = CurrentDate.Year Then
		        CalendarButtonClassArray(i).Selected = True
		        CalendarButtonClassArray(i).SelectedDate = CurrentDate
		      End If
		    Next
		    SelectTodayRunOnce = True
		  End If
		  
		  
		  // HIGHLIGHT CALENDAR DAY SLOT WHEN SELECTED
		  Var lr2 As Integer = CalendarButtonClassArray.LastIndex
		  For i As Integer = 0 To lr2
		    If CalendarButtonClassArray(i).Selected = True Then
		      If CalendarButtonClassArray(i).Day <> 0 Then
		        g.ForeColor = &c1261A0 
		        Var theLeft As Integer = CalendarButtonClassArray(i).LeftX
		        Var theTop As Integer = CalendarButtonClassArray(i).TopY
		        Var theWidth As Integer = CalendarButtonClassArray(i).Width
		        Var theHeight As Integer = (CalendarButtonClassArray(i).Height)
		        g.FillroundRect(theLeft, theTop,theWidth,theHeight,4,4)
		      End If
		    End If
		  Next i
		  
		  
		  // MOUSE OVER HIGHLIGHT SLOT
		  Var lr3 As Integer = CalendarButtonClassArray.LastIndex
		  For i As Integer = 0 To lr3
		    If CalendarButtonClassArray(i).mouseOver = True Then
		      If CalendarButtonClassArray(i).Day <> 0 Then
		        g.ForeColor = &c1261A0 
		        Var theLeft As Integer = CalendarButtonClassArray(i).LeftX
		        Var theTop As Integer = CalendarButtonClassArray(i).TopY
		        Var theWidth As Integer = CalendarButtonClassArray(i).Width
		        Var theHeight As Integer = (CalendarButtonClassArray(i).Height)
		        g.DrawroundRect(theLeft, theTop,theWidth,theHeight,4,4)
		      End If
		    End If
		  Next i
		  
		  
		  // DRAW DAYS OF WEEK ABBREVIATION WORK
		  g.ForeColor = &c595959
		  g.TextFont = "System"
		  g.Bold = False
		  g.TextSize = 12
		  
		  Var thisPosX, thisPosY As Integer
		  Var nextPosX As Integer
		  For p As Integer = 0 To 6
		    
		    If CalMonFirstDayOfWeekBool = False Then
		      // CALCULATE SPACING FOR VARIABLE ABBR NAMES --> SUN - SAT
		      Var thisAbbrvStrW As Double = g.StringWidth(DayOfWeekArray_SS(p))
		      Var thisAbbrvStrH As Double = g.StringHeight(DayOfWeekArray_SS(p), 500)
		      Var thisSlotW As Double = CalendarButtonClassArray(p).Width
		      Var thisSlotH As Double = CalendarButtonClassArray(p).Height
		      thisPosX =  thisPosX + (thisSlotW/2) - (thisAbbrvStrW/2)
		      thisPosY =  (thisSlotH/2) + (thisAbbrvStrH/2)-2
		      g.DrawString(DayOfWeekArray_SS(p), thisPosX, thisPosY)
		      // NEXT LEFT BORDER STARTING POINT
		      nextPosX  = nextPosX + CalendarButtonClassArray(p).RightX
		      thisPosX = nextPosX
		      
		    Elseif CalMonFirstDayOfWeekBool = True Then
		      // CALCULATE SPACING FOR VARIABLE ABBR NAMES - MON - SUN
		      Var thisAbbrvStrW As Double = g.StringWidth(DayOfWeek_MS(p))
		      Var thisAbbrvStrH As Double = g.StringHeight(DayOfWeek_MS(p), 500)
		      Var thisSlotW As Double = CalendarButtonClassArray(p).Width
		      Var thisSlotH As Double = CalendarButtonClassArray(p).Height
		      thisPosX =  thisPosX + (thisSlotW/2) - (thisAbbrvStrW/2)
		      thisPosY =  (thisSlotH/2) + (thisAbbrvStrH/2)-2
		      g.DrawString(DayOfWeek_MS(p), thisPosX, thisPosY)
		      // NEXT LEFT BORDER STARTING POINT
		      nextPosX  = nextPosX + CalendarButtonClassArray(p).RightX
		      thisPosX = nextPosX
		      
		    End If
		    
		  Next p
		  
		  // SET CALENDAR SLOT STRING VISUAL CHANGES
		  Var SelectMonthInt As Integer = convertMonthStringToMonthNumber(SelectedMonth)
		  Var lr4 As Integer = CalendarButtonClassArray.LastIndex
		  For i As Integer = 7 To lr4
		    If CalendarButtonClassArray(i).Selected = True Then
		      If SelectedYear.ToDouble = CurrentDate.Year And SelectMonthInt = CurrentDate.Month And CalendarButtonClassArray(i).Day = CurrentDate.Day Then
		        g.bold = False
		        g.ForeColor = &cFFFFFF
		      Else
		        g.bold = False
		        g.ForeColor = &cFFFFFF
		      End If
		      
		    Elseif CalendarButtonClassArray(i).NextMonthMark = True Or  CalendarButtonClassArray(i).PrevMonthMark = True Then
		      g.bold = False
		      g.ForeColor= RGB(170,170,170)
		      
		    Elseif SelectedYear.ToDouble = CurrentDate.Year And SelectMonthInt = CurrentDate.Month And CalendarButtonClassArray(i).Day = CurrentDate.Day Then
		      g.bold = True
		      g.ForeColor = &c1261A
		      
		    Else
		      g.bold = False
		      g.ForeColor = &c333333
		    End If
		    
		    // DRAW CALENDAR DAY DIGIT STRING
		    Var leftX As Double = CalendarButtonClassArray(i).LeftX
		    Var topY As Double = CalendarButtonClassArray(i).TopY
		    Var calDayStr As String =  CalendarButtonClassArray(i).day.ToString  'CalendarButtonClassArray(i).ID.ToString
		    Var calDayStrW As Double = g.TextWidth(calDayStr)
		    Var calDayStrH As Double = g.TextHeight(calDayStr, 80)
		    
		    If CalendarButtonClassArray(i).Day = 0 Then
		      // DON'T DRAW ANYTHING FOR THIS
		      
		    ElseIf CalendarButtonClassArray(i).Day > 0 And CalendarButtonClassArray(i).Day < 10 Then
		      // SINGLE DIGIT DATES
		      Var calDayXpos As Double = CalendarButtonClassArray(i).LeftX + 12
		      Var calDayYpos As Double = CalendarButtonClassArray(i).TopY + 17
		      g.DrawString(calDayStr, calDayXpos, calDayYpos)
		      
		    Else
		      // DOUBLE DIGIT DATES
		      Var calDayXpos As Double = CalendarButtonClassArray(i).LeftX + 8
		      Var calDayYpos As Double = CalendarButtonClassArray(i).TopY + 17
		      g.DrawString(calDayStr, calDayXpos, calDayYpos)
		      
		      
		    End If
		  Next i
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub buildLocalizedDayOfWeekList(inLocalizationInt as Integer)
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
		    
		  Case 9 // Portuguese
		    Localized_Monday = "Segunda-feira"
		    Localized_Tuesday = "Terça-feira"
		    Localized_Wednesday = "Quarta-feira"
		    Localized_Thursday = "Quinta-feira"
		    Localized_Friday = "Sexta-feira"
		    Localized_Saturday = "Sábado"
		    Localized_Sunday = "Domingo"
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub buildLocalizedDayOfWeek_Arrays(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		    
		  Case 0
		    ////////////////////////////
		    /////// English ///////
		    ///////////////////////////
		    //Sat - Sun
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Su"
		    DayOfWeekArray_SS.Append "Mo"
		    DayOfWeekArray_SS.Append "Tu"
		    DayOfWeekArray_SS.Append "We"
		    DayOfWeekArray_SS.Append "Th"
		    DayOfWeekArray_SS.Append "Fr"
		    DayOfWeekArray_SS.Append "Sa"
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Mo"
		    DayOfWeek_MS.Append "Tu"
		    DayOfWeek_MS.Append "We"
		    DayOfWeek_MS.Append "Th"
		    DayOfWeek_MS.Append "Fr"
		    DayOfWeek_MS.Append "Sa"
		    DayOfWeek_MS.Append "Su"
		    
		  Case 1 // French
		    //Sat - Sun
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Dim"
		    DayOfWeekArray_SS.Append "Lun"
		    DayOfWeekArray_SS.Append "Mar"
		    DayOfWeekArray_SS.Append "Mer"
		    DayOfWeekArray_SS.Append "Jeu"
		    DayOfWeekArray_SS.Append "Ven"
		    DayOfWeekArray_SS.Append "Sam"
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Lun"
		    DayOfWeek_MS.Append "Mar"
		    DayOfWeek_MS.Append "Mer"
		    DayOfWeek_MS.Append "Jeu"
		    DayOfWeek_MS.Append "Ven"
		    DayOfWeek_MS.Append "Sam"
		    DayOfWeek_MS.Append "Dim"
		    
		  Case 2 // Swedish
		    //Sat - Sun
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Sön"
		    DayOfWeekArray_SS.Append "Mån"
		    DayOfWeekArray_SS.Append "Tis"
		    DayOfWeekArray_SS.Append "Ons"
		    DayOfWeekArray_SS.Append "Tor"
		    DayOfWeekArray_SS.Append "Fre"
		    DayOfWeekArray_SS.Append "Lör"
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Mån"
		    DayOfWeek_MS.Append "Tis"
		    DayOfWeek_MS.Append "Ons"
		    DayOfWeek_MS.Append "Tor"
		    DayOfWeek_MS.Append "Fre"
		    DayOfWeek_MS.Append "Lör"
		    DayOfWeek_MS.Append "Sön"
		    
		  Case 3 // Italian
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Dom"
		    DayOfWeekArray_SS.Append "Mar"
		    DayOfWeekArray_SS.Append "Mer"
		    DayOfWeekArray_SS.Append "Gio"
		    DayOfWeekArray_SS.Append "Ven"
		    DayOfWeekArray_SS.Append "Sab"
		    DayOfWeekArray_SS.Append "Lör"
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Lun"
		    DayOfWeek_MS.Append "Mar"
		    DayOfWeek_MS.Append "Mer"
		    DayOfWeek_MS.Append "Gio"
		    DayOfWeek_MS.Append "Ven"
		    DayOfWeek_MS.Append "Sab"
		    DayOfWeek_MS.Append "Dom"
		    
		    
		  Case 4 // Spanish
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Do" // Sunday
		    DayOfWeekArray_SS.Append "Lu"
		    DayOfWeekArray_SS.Append "Ma"
		    DayOfWeekArray_SS.Append "Mi"
		    DayOfWeekArray_SS.Append "Ju"
		    DayOfWeekArray_SS.Append "Vi"
		    DayOfWeekArray_SS.Append "Sá" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Lu" // Monday
		    DayOfWeek_MS.Append "Ma"
		    DayOfWeek_MS.Append "Mi"
		    DayOfWeek_MS.Append "Ju"
		    DayOfWeek_MS.Append "Vi"
		    DayOfWeek_MS.Append "Sá"
		    DayOfWeek_MS.Append "Do" // Sunday
		    
		    
		  Case 5 // Dutch  
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Zon" // Sunday
		    DayOfWeekArray_SS.Append "Maa"
		    DayOfWeekArray_SS.Append "Din"
		    DayOfWeekArray_SS.Append "Woe"
		    DayOfWeekArray_SS.Append "Don"
		    DayOfWeekArray_SS.Append "Vry"
		    DayOfWeekArray_SS.Append "Zat" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Maa" // Monday
		    DayOfWeek_MS.Append "Din"
		    DayOfWeek_MS.Append "Woe"
		    DayOfWeek_MS.Append "Don"
		    DayOfWeek_MS.Append "Vry"
		    DayOfWeek_MS.Append "Zat"
		    DayOfWeek_MS.Append "Zon" // Sunday
		    
		  Case 6 // German
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "So" // Sunday
		    DayOfWeekArray_SS.Append "Mo"
		    DayOfWeekArray_SS.Append "Di"
		    DayOfWeekArray_SS.Append "Mi"
		    DayOfWeekArray_SS.Append "Do"
		    DayOfWeekArray_SS.Append "Fr"
		    DayOfWeekArray_SS.Append "Sa" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Mo" // Monday
		    DayOfWeek_MS.Append "Di"
		    DayOfWeek_MS.Append "Mi"
		    DayOfWeek_MS.Append "Do"
		    DayOfWeek_MS.Append "Fr"
		    DayOfWeek_MS.Append "Sa"
		    DayOfWeek_MS.Append "So" // Sunday
		    
		  Case 7 // Africaans
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Son" // Sunday
		    DayOfWeekArray_SS.Append "Maa"
		    DayOfWeekArray_SS.Append "Din"
		    DayOfWeekArray_SS.Append "Woe"
		    DayOfWeekArray_SS.Append "Don"
		    DayOfWeekArray_SS.Append "Vry"
		    DayOfWeekArray_SS.Append "Sat" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Maa" // Monday
		    DayOfWeek_MS.Append "Din"
		    DayOfWeek_MS.Append "Woe"
		    DayOfWeek_MS.Append "Don"
		    DayOfWeek_MS.Append "Vry"
		    DayOfWeek_MS.Append "Sat"
		    DayOfWeek_MS.Append "Son" // Sunday
		    
		  Case 8 // Polish
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Ni" // Sunday
		    DayOfWeekArray_SS.Append "Pn"
		    DayOfWeekArray_SS.Append "Wt"
		    DayOfWeekArray_SS.Append "Śr"
		    DayOfWeekArray_SS.Append "Czw"
		    DayOfWeekArray_SS.Append "Pt"
		    DayOfWeekArray_SS.Append "Sob" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Pn" // Monday
		    DayOfWeek_MS.Append "Wt"
		    DayOfWeek_MS.Append "Śr"
		    DayOfWeek_MS.Append "Czw"
		    DayOfWeek_MS.Append "Pt"
		    DayOfWeek_MS.Append "Sob"
		    DayOfWeek_MS.Append "Ni" // Sunday
		    
		  Case 9 // Portuguese
		    DayOfWeekArray_SS.ResizeTo(-1)
		    DayOfWeekArray_SS.Append "Dom" // Sunday
		    DayOfWeekArray_SS.Append "Seg"
		    DayOfWeekArray_SS.Append "Ter"
		    DayOfWeekArray_SS.Append "Qua"
		    DayOfWeekArray_SS.Append "Qui"
		    DayOfWeekArray_SS.Append "Sex"
		    DayOfWeekArray_SS.Append "Sab" // Saturday
		    // Mon - Sun
		    DayOfWeek_MS.ResizeTo(-1)
		    DayOfWeek_MS.Append "Seg" // Monday
		    DayOfWeek_MS.Append "Ter"
		    DayOfWeek_MS.Append "Qua"
		    DayOfWeek_MS.Append "Qui"
		    DayOfWeek_MS.Append "Sex"
		    DayOfWeek_MS.Append "Sab"
		    DayOfWeek_MS.Append "Dom" // Sunday
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub buildLocalizedMonthList(inLocalizationInt as Integer)
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
		    
		  Case 9 // Portuguese
		    Localized_January = "Janeiro"
		    Localized_February = "Fevereiro"
		    Localized_March = "Março"
		    Localized_April = "Abril"
		    Localized_May = "Maio"
		    Localized_June = "Junho"
		    Localized_July = "Julho"
		    Localized_August = "Agosto"
		    Localized_September = "Setembro"
		    Localized_October = "Outubro"
		    Localized_November = "Novembro"
		    Localized_December = "Dezembro"
		    
		  End Select
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function calcCenturyNumber(inYear as Integer) As Integer
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
		Private Function calcHowManyCalSlotsAvailable(inStartingSlot as Integer, inEndingSlot as Integer, inSpacesAvailable as Integer) As Integer
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
		Function calcLeapYear(inYear as Integer) As boolean
		  Return (((inYear MOD 4)=0) AND ((inYear MOD 100)<>0)) OR (inYear MOD 400)=0
		  
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function calcMonthNumber(inMonth as String) As Integer
		  // FIX FROM JON OGEN
		  If inMonth = Localized_February AND LeapYearBool = True  OR inMonth = Localized_August Then
		    Return 0
		  Elseif (inMonth = Localized_February AND Not LeapYearBool) OR inMonth = Localized_November OR inMonth = Localized_March Then
		    Return 1
		  Elseif inMonth = Localized_June Then
		    Return 2
		  ElseIf inMonth = Localized_September OR inMonth = Localized_December Then
		    Return 3
		  ElseIf inMonth = Localized_January AND LeapYearBool = True OR inMonth = Localized_April OR inMonth = Localized_July Then
		    Return 4
		  Elseif inMonth = Localized_January AND LeapYearBool = False OR inMonth = Localized_October Then
		    Return 5
		  Elseif inMonth = Localized_May Then
		    Return 6
		  End if
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function calculate1stDayOfMonth() As String
		  // Need to Find out which Day of the Week this Month's 1st Day starts on
		  Var thisYear as Integer = SelectedYear.ToDouble
		  LeapYearBool = calcLeapYear(thisYear)
		  
		  // Calculate to get Weekday Number
		  Var WeekdayNum as integer = (CenturyNumber + YearNumber + MonthNumber)
		  
		  Var CalcWeekDayNum as Integer = WeekdayNum Mod 7
		  
		  // Map Weekday Number to Weekday String
		  FirstWeekday = getDayOfWeekString(CalcWeekDayNum)
		  
		  Return FirstWeekday
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub calculateMonth(inMonth as String)
		  // Get Month Number
		  MonthNumber = calcMonthNumber(inMonth)
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function calculateYear(inYear as String) As Integer
		  // Expect String from PopUp Menu but needs to convert to Integer
		  Var InYearInt as Integer = inYear.ToDouble
		  LeapYearBool = calcLeapYear(InYearInt)
		  
		  // Year Number
		  YearNumber = calcYearNumber(inYear)
		  If YearNumber = -1 Then
		    // NOT A VALID YEAR
		    Return -1
		  End If
		  
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function calcYearNumber(inYear as String) As Integer
		  // PUT BOUNDS AROUND YEAR SELECTION
		  Var CalcYearFinal, theYear as integer
		  
		  theYear = inYear.ToDouble
		  If theYear < StartYear OR theYear > EndYear Then
		    Return -1
		  End If
		  
		  Var TrimFirstTwoDigits as String = inYear.Right(2)
		  Var Year as Integer = TrimFirstTwoDigits.ToDouble
		  Var CalcYearNum as Integer
		  CalcYearNum  = Year + Year / 4
		  
		  
		  CalcYearFinal = CalcYearNum mod 7
		  
		  Return CalcYearFinal
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub clearDays()
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  for i as integer = 0 to lr
		    CalendarButtonClassArray(i).Day = 0
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1000
		Sub Constructor()
		  // Calling the overridden superclass constructor.
		  Super.Constructor
		  
		  // Assign Calendar Spaces
		  initialAssignmentCalendarButtons(36)
		  
		  // Date Instantiations
		  CurrentDate = new Date
		  
		  // ------- SetCustomCalendarStartDate() ACCEPTS THE FOLLOWING OPTIONAL PARAMETERS BELOW (NOTE: IF YOU DON'T PASS ANY PARAMETERS THE CALENDAR USES TODAYS DATE AND YEAR
		  // ------- (optional inPassedDate as Date, optional inPassedStartYear as Integer, optional inPassedEndYear as Integer)
		  SetCustomCalendarStartDate()
		  
		  // LOAD THE YEAR POP UP MENU WITH THE PROPER SELECTION
		  loadYearList(UserSelectedStartYear,UserSelectedEndYear,CurrentDate.Year)
		  
		  // Load the Localized Day of the Week Abbreviation List to the Calendar
		  buildLocalizedDayOfWeek_Arrays(0)
		  
		  // Figure out Century Number
		  CenturyNumber = calcCenturyNumber(YearNumber)
		  
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Function convertMonthIntToMonthString(inMonthInt as Integer) As String
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
		Private Function convertMonthStringToMonthNumber(inMonth as String) As Integer
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

	#tag Method, Flags = &h0
		Sub deselectAll()
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  for i as integer = 0 to lr
		    CalendarButtonClassArray(i).Selected = False
		    CalendarButtonClassArray(i).mouseOver = False
		  next i
		  
		  Me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getDayOfWeekString(inDayOfWeekNum as Integer) As String
		  Select Case inDayOfWeekNum
		  Case 6
		    Return Localized_Sunday
		  Case 0
		    Return Localized_Monday
		  Case 1
		    Return Localized_Tuesday
		  Case 2
		    Return Localized_Wednesday
		  Case 3
		    Return Localized_Thursday
		  Case 4
		    Return Localized_Friday
		  Case 5
		    Return Localized_Saturday
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function getFirstDayOfWeekCalSlotNumber(inDayofWeekString as String, inCalMonFirstDayOfWeekBool as Boolean) As Integer
		  #Pragma Unused inDayofWeekString
		  
		  If inCalMonFirstDayOfWeekBool = False Then
		    // Sunday is the First Day of the Week Calendar Labeling Wise
		    Select Case FirstWeekDay
		    Case Localized_Sunday
		      Return 7
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
		      Return 7
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
		Private Function getNextMonthString(inSelectedMonth as String) As String
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
		Private Function getPrevMonthString(inSelectedMonth as String) As String
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
		Private Sub initialAssignmentCalendarButtons(inNumOfSpaces as Integer)
		  // CREATE EACH CALENDAR TIME SLOT
		  Var row As Integer
		  
		  for y as integer = 1 to 49
		    Select Case y
		    Case 1 to 7 // Row 1
		      row =  1
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.Row = row
		      CalendarButton.RightX = (30) + 1
		      CalendarButton.BottomY = (24 ) + 1
		      
		    Case 8 to 14 // Row 2
		      row =  2
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-7) * 30) + 1
		      CalendarButton.BottomY = (row  * 24) + 1
		      CalendarButton.Row = row
		      
		    Case 15 to 21 // Row 3
		      row =  3
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-14) * 30) +1
		      CalendarButton.BottomY = (row  * 24) + 1
		      CalendarButton.Row = row
		      
		    Case 22 to 28 // Row 4
		      row =  4
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-21) * 30) + 1
		      CalendarButton.BottomY = (row  * 24) + 1
		      CalendarButton.Row = row
		      
		    Case 29 to 35 // Row 5
		      row =  5
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-28) * 30) + 1
		      CalendarButton.BottomY =( row  * 24) + 1
		      CalendarButton.Row = row
		      
		    Case 36 to 42 // Row 6
		      row =  6
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-35) * 30) + 1
		      CalendarButton.BottomY = (row  * 24) + 1
		      CalendarButton.Row = row
		      
		    Case 43 to 50 // Row 7
		      row =  7
		      CalendarButton = New CalendarButtonClass
		      CalendarButton.ID = y
		      CalendarButton.RightX = ((y-42) * 30) + 1
		      CalendarButton.BottomY = (row  * 24) + 1
		      CalendarButton.Row = row
		      
		    End Select
		    CalendarButtonClassArray.Add (CalendarButton)
		  Next y
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadMonthList()
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
		  
		  Var TodaysMonth as New Date
		  Var TodaysMonthString as String
		  
		  TodaysMonthString  = convertMonthIntToMonthString(TodaysMonth.Month)
		  
		  for i as integer = 0 to Calendar_Container(Window).MonthPopup.ListCount-1
		    if TodaysMonthString = Calendar_Container(Window).MonthPopup.List(i) Then
		      Calendar_Container(Window).MonthPopup.ListIndex = i
		    End if
		  next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub loadYearList(inStartYear as integer, inEndYear as Integer, optional inSelectedYear as Integer)
		  // Load the Year Pop Up Menu on the Calendar Container
		  
		  
		  if inStartYear = 0 OR inEndYear = 0 Then
		    // IF NO RANGE IS USER SELECTED
		    Calendar_Container(window).YearPopup.DeleteAllRows
		    for i as integer = 1905 to 2060
		      Calendar_Container(window).YearPopup.AddRow (i.ToString)
		    next i
		  Else
		    // USER SELECTED YEAR RANGE
		    Calendar_Container(window).YearPopup.DeleteAllRows
		    for i as integer = inStartYear to inEndYear
		      Calendar_Container(window).YearPopup.AddRow (i.ToString)
		    next i
		  end if
		  
		  // Load Curent Year if inSelectedYear = 0
		  Var TodaysYear as New Date
		  
		  if inSelectedYear = 0 Then
		    for i as integer = 0 to Calendar_Container(window).YearPopup.ListCount-1
		      if TodaysYear.Year.ToString = Calendar_Container(window).YearPopup.List(i) Then
		        Calendar_Container(window).YearPopup.ListIndex = i
		      End if
		    next i
		    
		  Elseif inSelectedYear <> 0 Then
		    
		    for j as integer = 0 to Calendar_Container(window).YearPopup.ListCount-1
		      if inSelectedYear.ToString = Calendar_Container(window).YearPopup.List(j) Then
		        Calendar_Container(window).YearPopup.ListIndex = j
		      End if
		    next j
		    
		    
		  end if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function numOfDaysInMonth(inMonth as String) As Integer
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
		  
		  //// NEED TO TAKE YEAR INTO CONSIDERATION AND CALCULATE IN THIS FUNCTION IF LEAP YEAR
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

	#tag Method, Flags = &h21
		Private Sub remapSelectedToSlot()
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  for i as integer = 0 to lr
		    if CalendarButtonClassArray(i).SelectedDate = CalendarButtonClassArray(i).MyDate Then
		      Var theMatchedDate as Date = CalendarButtonClassArray(i).SelectedDate
		      if CalendarButtonClassArray(i).Day = SelectedDate.Day Then
		        CalendarButtonClassArray(i).Selected = True
		      end if
		    End if
		    
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub selectDayToHighlight(inDate as Date)
		  Var lr as Integer = CalendarButtonClassArray.LastIndex
		  for i as integer = 0 to lr
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

	#tag Method, Flags = &h0
		Sub SetCustomCalendarStartDate(optional inPassedDate as Date, optional inPassedStartYear as Integer, optional inPassedEndYear as Integer)
		  // ------- SET THESE VALUES IF YOU WOULD LIKE A CUSTOM CALENDAR START DATE
		  
		  // USE PASSED PARAMETERS TO SET DATE/TIME PROGRAMATICALLY
		  If inPassedDate <> NIL THEN
		    CurrentDate.Month = inPassedDate.Month
		    CurrentDate.Day = inPassedDate.Day
		    CurrentDate.Year= inPassedDate.Year
		  End If
		  
		  
		  // THE START AND END YEAR VALUES ARE THE YEAR BOUNDARY WITHIN YOUR CALENDAR YEAR POP UP MENU
		  // IF THESE USER VALUES ARE NOT PRESENT WE WILL DEFAULT TO StartYear: 1905 EndYear: 2061
		  // USE PROGRAMATICALLY
		  IF inPassedStartYear <> 0 OR inPassedDate <> NIL THEN
		    UserSelectedStartYear = inPassedStartYear
		    UserSelectedEndYear = inPassedEndYear
		    // LOAD THE YEAR POP UP MENU WITH THE PROPER SELECTION
		    loadYearList(UserSelectedStartYear,UserSelectedEndYear,CurrentDate.Year)
		    Calendar_Container(Window).takeMeToTodaysDate()
		  END IF
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub takeUsToMonth(inMonth as String, inSelectedDate as Date)
		  #Pragma Unused inSelectedDate
		  
		  Select Case inMonth
		  Case "Next"
		    // Need a Check to See about Incrementing Year or not
		    if NextMonth = Localized_January then
		      // Need to increment Year
		      Var nextYearDbl as Double = Calendar_Container(Window).YearPopup.Text.ToDouble + 1
		      NextYear = nextYearDbl
		      for i as integer = 0 to Calendar_Container(Window).YearPopup.ListCount-1
		        if NextYear.ToString = Calendar_Container(Window).YearPopup.List(i) Then
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
		      Var nextYearDbl as Double = Calendar_Container(Window).YearPopup.Text.ToDouble -1 
		      PrevYear = nextYearDbl
		      for i as integer = 0 to Calendar_Container(Window).YearPopup.ListCount-1
		        if PrevYear.ToString = Calendar_Container(Window).YearPopup.List(i) Then
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
		  // SELECTED MONTH IS NOT WORKING PAST THE FIRST RUN
		  
		  
		  Var NumOfDaysInMonth as Integer  = numOfDaysInMonth(SelectedMonth)
		  Var FirstCalSlot as Integer
		  FirstCalSlot = getFirstDayOfWeekCalSlotNumber(FirstWeekDay,CalMonFirstDayOfWeekBool) 
		  
		  // Clear the Class' day values
		  clearDays()
		  
		  // Map the Calendar Slots to Correct Month Days
		  Var DayCounter as Integer  = 0
		  Var i  as Integer
		  
		  Var theEndCalc as Integer = NumOfDaysInMonth + FirstCalSlot 
		  
		  for i = FirstCalSlot to theEndCalc
		    // Erase Other Marks
		    CalendarButtonClassArray(i).PrevMonthMark = False
		    CalendarButtonClassArray(i).NextMonthMark = False
		    
		    // Process Selected Month Day
		    CalendarButtonClassArray(i).Day = DayCounter
		    
		    // Set MYDate for Current Month
		    Var TmpDate as New Date
		    TmpDate.Month = (convertMonthStringToMonthNumber(SelectedMonth))
		    TmpDate.Day = DayCounter
		    TmpDate.Year = SelectedYear.ToDouble
		    CalendarButtonClassArray(i).MyDate = TmpDate
		    
		    DayCounter = DayCounter + 1
		    Invalidate(False)
		  Next i
		  
		  // Need to Calculate How many Available Spaces for the previous month's worth of Calendar Days
		  Var CalPrevMonthSpacesAvailable as Integer = calcHowManyCalSlotsAvailable(7,13,1)
		  PreviousMonth = getPrevMonthString(SelectedMonth)
		  NextMonth = getNextMonthString(SelectedMonth)
		  
		  // Figure Out How Many Days are in the Previous and Next Month
		  Var PrevMonthNumOfDays as Integer = numOfDaysInMonth(PreviousMonth)
		  
		  if Calendar_Container(window).Calendar1.IncludePrevNextMonthDaysBool = True Then
		    Var PrevDayCounter as Integer  = PrevMonthNumOfDays
		    Var ii as integer
		    for ii = FirstCalSlot DownTo CalPrevMonthSpacesAvailable
		      CalendarButtonClassArray(ii).Day = PrevDayCounter
		      
		      Var TmpDate as New Date
		      TmpDate.Year = SelectedYear.ToDouble
		      TmpDate.Month = convertMonthStringToMonthNumber(PreviousMonth)
		      TmpDate.Day = PrevDayCounter
		      CalendarButtonClassArray(ii).MyDate = TmpDate
		      
		      CalendarButtonClassArray(ii).PrevMonthMark = True
		      PrevDayCounter = PrevDayCounter - 1
		      Invalidate(False)
		    Next ii
		    
		    Var NextDayCounter as Integer  = 1
		    Var xx as integer
		    Var LastCalSlot as Integer = FirstCalSlot + NumOfDaysInMonth+1
		    for xx = LastCalSlot to 48 // 48 is the Last Calendar Slot
		      CalendarButtonClassArray(xx).Day = NextDayCounter
		      Var TmpDate as New Date
		      TmpDate.Year = SelectedYear.ToDouble
		      TmpDate.Month = convertMonthStringToMonthNumber(NextMonth)
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
		  'Var DayOfWeekFor1stDayOfMonth as String
		  FirstWeekDay = calculate1stDayOfMonth
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

	#tag Property, Flags = &h0
		drawColumnLines As Boolean
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
			  
			  loadYearList(inStartYear, inEndYear)
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
		#tag Note
			c
		#tag EndNote
		UserSelectedEndYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		UserSelectedStartYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		YearNumber As Integer
	#tag EndProperty


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
			InitialValue="True"
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
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="AllowMultipleSelections"
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
			Name="CalMonFirstDayOfWeekBool"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="DoubleBuffer"
			Visible=true
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="drawColumnLines"
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
			Name="EndYear"
			Visible=false
			Group="Behavior"
			InitialValue="2050"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="FirstWeekDay"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="IncludePrevNextMonthDaysBool"
			Visible=false
			Group="Behavior"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Index"
			Visible=true
			Group="ID"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="InitialParent"
			Visible=false
			Group=""
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
			Name="Localized_April"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_August"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_December"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_February"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Friday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_January"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_July"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_June"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_March"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_May"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Monday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_November"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_October"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Saturday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_September"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Sunday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Thursday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Tuesday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Localized_Wednesday"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			Name="MonthNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			Name="NextMonth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="NextYear"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="PreviousMonth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="PrevYear"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedMonth"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedX"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedY"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="SelectedYear"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="StartYear"
			Visible=false
			Group="Behavior"
			InitialValue="1904"
			Type="Integer"
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
			Name="TodaysDate_NotSelected"
			Visible=false
			Group="Behavior"
			InitialValue="&c0000FF"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="TodaysDate_Selected"
			Visible=false
			Group="Behavior"
			InitialValue="&cFFFF00"
			Type="Color"
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
			Name="UserSelectedEndYear"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UserSelectedStartYear"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
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
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="YearNumber"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
