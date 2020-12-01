#tag Class
Protected Class TimePicker
Inherits Canvas
	#tag Event
		Function KeyDown(Key As String) As Boolean
		  // BLOCK DELETE KEY
		  If Asc(Key) = 8 Then
		    Return False
		  End If
		  
		  
		  Select Case Time_Container(window).TimeMode
		  Case 12
		    
		    if Key = Chr(9) Then 
		      // Tab Key Pressed
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = False
		        Draw_Minute_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_AMPM_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_Minute_Selected = False
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		      Else
		        Draw_Hour_Selected = True
		        Draw_Minute_Selected = False
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		        
		      end if
		    End if
		    
		    Select Case key
		    Case Chr(32) to Chr(47)
		      Return True
		      
		    Case Chr(48) to Chr(57) 
		      // User Enters Numbers
		      if Draw_AMPM_Selected = True then
		        // If the user is on the AM/PM Then Don't allow Number Entry
		        Return True
		      End if
		      // Need to only allow 2 digits
		      KeyBuffer = KeyBuffer + Key
		      
		      Var KeyBufferLen as Integer = KeyBuffer.Len
		      if KeyBufferLen > 2 Then
		        KeyBuffer = ""
		        Return True
		      end if
		      
		      manual12HourTimeEntry(KeyBuffer)
		      formatSingleDigits(KeyBuffer)
		      
		    Case Chr(58) to Chr(127)
		      Return True
		    End Select
		    
		    If Key = Chr(8) Then 
		      // Delete Key Pressed
		      manual12HourTimeEntry(Chr(8))
		    End if
		    
		    if Key = Chr(30)  Then 
		      // Arrow Key Up Pressed
		      if Draw_AMPM_Selected = True then
		        moveAMPM
		      Elseif Draw_Hour_Selected = True Then
		        move12HourUp
		      Elseif Draw_Minute_Selected = True Then
		        move12MinUp
		      End if
		      
		    Elseif Key = Chr(31) Then 
		      // Arrow Key Down Pressed
		      if Draw_AMPM_Selected = True then
		        moveAMPM
		      Elseif Draw_Hour_Selected = True Then
		        move12HourDown
		      Elseif Draw_Minute_Selected = True Then
		        move12MinDown
		      End if
		    End if
		    
		    if Key = Chr(28) then 
		      // Enable Left Arrow to Tab left
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = True
		        Draw_Minute_Selected = False
		        me.Invalidate(False)
		      Elseif Draw_AMPM_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_Minute_Selected = True
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = True
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		      end if
		      
		    Elseif Key = Chr(29) Then 
		      // Enable Right Arrow to Tab Right
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = False
		        Draw_Minute_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_AMPM_Selected = True Then
		        Draw_Hour_Selected = True
		        Draw_Minute_Selected = False
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		      end if
		    end if
		    
		  Case 24
		    if Key = Chr(9) Then 
		      // Tab Key Pressed
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = False
		        Draw_Minute_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = False
		        Draw_AMPM_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_AMPM_Selected = True Then
		        Draw_Hour_Selected = True
		        Draw_Minute_Selected = False
		        Draw_AMPM_Selected = False
		        me.Invalidate(False)
		      end if
		    End if
		    
		    Select Case key
		    Case Chr(32) to Chr(47)
		      Return True
		      
		    Case Chr(48) to Chr(57) 
		      // User Enters Numbers
		      if Draw_AMPM_Selected = True then
		        // If the user is on the AM/PM Then Don't allow Number Entry
		        Return True
		      End if
		      // Need to only allow 2 digits
		      KeyBuffer = KeyBuffer + Key
		      
		      Var KeyBufferLen as Integer = KeyBuffer.Len
		      if KeyBufferLen > 2 Then
		        Return True
		      end if
		      
		      manual24HourTimeEntry(KeyBuffer)
		      format24hrSingleDigits(KeyBuffer)
		      
		    Case Chr(58) to Chr(127)
		      Return True
		    End Select
		    
		    If Key = Chr(8) Then 
		      // Delete Key Pressed
		      manual24HourTimeEntry(Chr(8))
		    End if
		    
		    if Key = Chr(30)  Then  
		      // Arrow Key Up Pressed
		      if Draw_AMPM_Selected = True then
		        moveAMPM
		      Elseif Draw_Hour_Selected = True Then
		        move24HourUp
		      Elseif Draw_Minute_Selected = True Then
		        move24MinUp
		      End if
		      
		    Elseif Key = Chr(31) Then 
		      // Arrow Key Down Pressed
		      if Draw_AMPM_Selected = True then
		        moveAMPM
		      Elseif Draw_Hour_Selected = True Then
		        move24HourDown
		      Elseif Draw_Minute_Selected = True Then
		        move24MinDown
		      End if
		    End if
		    
		    if Key = Chr(28) then 
		      // Enable Left Arrow to Tab left
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_Minute_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = True
		        me.Invalidate(False)
		      end if
		      
		    Elseif Key = Chr(29) Then 
		      // Enable Right Arrow to Tab Right
		      KeyBuffer = ""
		      if Draw_Hour_Selected = True Then
		        Draw_Hour_Selected = False
		        Draw_Minute_Selected = True
		        me.Invalidate(False)
		      Elseif Draw_Minute_Selected = True Then
		        Draw_Minute_Selected = False
		        Draw_Hour_Selected = True
		        me.Invalidate(False)
		      end if
		    end if
		    
		  END Select
		  
		  Time_Container(Window).raiseEventSelectedTime()
		  
		  
		  Return True
		End Function
	#tag EndEvent

	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  #Pragma Unused x
		  #Pragma Unused y
		  
		  Me.SetFocus()
		  KeyBuffer = ""
		  
		  Var osPadInt as Integer
		  #If TargetMacos Then
		    osPadInt = 4
		  #Elseif TargetWindows Then
		    osPadInt = -2
		  #endif
		  
		  Var extra24space as Integer
		  If Time_Container(window).TimeMode = 24 Then
		    extra24space = 6
		  End If
		  
		  if x >= Indent + extra24space  AND x <=Indent+Time_Container(window).Time_Hour_Len + 2 + milTimeSpacer Then
		    Draw_Hour_Selected = True
		    Draw_Minute_Selected = False
		    Draw_AMPM_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  if x >= Indent + extra24space + Time_Container(window).Time_Hour_Len + Colon_Width AND x <= Indent+Time_Container(window).Time_Hour_Len+ Colon_Width + Time_Container(window).Time_Minute_Len + 8 + milTimeSpacer Then
		    Draw_Minute_Selected = True 
		    Draw_Hour_Selected = False
		    Draw_AMPM_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  if x >= Indent + extra24space +Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM + osPadInt AND x <= Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM+Time_Container(window).Time_AMPM_Len  + 16 Then
		    Draw_AMPM_Selected = True
		    Draw_Minute_Selected = False
		    Draw_Hour_Selected = False
		    me.Invalidate(False)
		  End if
		  
		  
		  
		End Function
	#tag EndEvent

	#tag Event
		Sub MouseExit()
		  Me.MouseCursor = System.Cursors.StandardPointer
		End Sub
	#tag EndEvent

	#tag Event
		Sub MouseMove(X As Integer, Y As Integer)
		  if x >= 0 AND x <= me.Width AND Y >= 0 AND y<=me.Height Then
		    Me.MouseCursor = System.Cursors.FingerPointer
		  end if
		  
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Open()
		  #If TargetWindows Then
		    me.Height = me.Height + 6
		    me.top = me.top - 5
		    
		  #endif
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  g.AntiAliasMode = Global.Graphics.AntiAliasModes.HighQuality
		  g.AntiAlias = True
		  
		  // Draw Shape of Control
		  g.ForeColor = &cFFFFFF
		  g.FillRect (0,0,me.Width,me.Height)
		  
		  
		  g.TextSize = 14
		  g.TextFont = "System"
		  
		  // SET POS FOR DIGIT POSITIONING
		  Var timeXpos, timeYpos as Integer
		  if Time_Container(window).TimeMode = 12 Then
		    timeXpos = 10
		    Indent = timeXpos
		    timeYpos = 16
		  Elseif Time_Container(window).TimeMode = 24 Then
		    timeXpos = 18
		    timeYpos = 16
		  end if
		  
		  // DRAW HOUR AND HIGHLIGHT
		  Var hourStr as String = Time_Container(window).Time_Hour
		  Time_Container(window).Time_Hour_Len = g.TextWidth(hourStr)
		  if Draw_Hour_Selected = True Then
		    drawSelectHour(g, Time_Container(window).Time_Hour_Len)
		  end if
		  
		  // DRAW MINUTE AND HIGHLIGHT
		  Var minuteStr as String = Time_Container(window).Time_Minute
		  Time_Container(window).Time_Minute_Len =  g.TextWidth(minuteStr)
		  if Draw_Minute_Selected = True Then
		    drawSelectMinute(g, Time_Container(window).Time_Minute_Len)
		  end if
		  
		  // DRAW AM/PM ONLY 12 HOUR TIME MODE
		  Var AmPmStr as String = Time_Container(window).Time_AMPM
		  Time_Container(window).Time_AMPM_Len =  g.TextWidth(AmPmStr)
		  Var DrawStringValue as String
		  if Time_Container(window).TimeMode = 12 Then
		    if Draw_AMPM_Selected = True Then
		      drawAMPM(g, Time_Container(window).Time_AMPM_Len)
		    End if
		  End if
		  
		  // DRAW THE TIME
		  DrawStringValue = createTimeString()
		  g.Transparency = 0
		  g.ForeColor = RGB(0,0,0)
		  
		  #If TargetWindows Then
		    Var winTopAdj as Integer = 2 + timeYpos
		    g.DrawString(DrawStringValue,timeXpos,winTopAdj)
		  #ELSE
		    g.DrawString(DrawStringValue,timeXpos,timeYpos)
		  #endif
		  
		  
		  g.PenWidth=1
		  g.PenHeight=1
		  g.ForeColor = &cB0B0B0
		  g.DrawRect(0,0,me.Width,me.Height)
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function autoAdvanceHourHand_Backwards(inTime_Hour as Integer) As Integer
		  Var TmpTimeHourInt as Integer
		  
		  Select Case inTime_Hour
		  Case 1
		    TmpTimeHourInt = 12
		  Case 12
		    flipAMPM()
		    TmpTimeHourInt = inTime_Hour - 1
		  Else
		    TmpTimeHourInt = inTime_Hour - 1
		  End select
		  
		  Return TmpTimeHourInt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function autoAdvanceHourHand_Forward(inTime_Hour as Integer) As Integer
		  Var TmpTimeHourInt as Integer
		  
		  Select Case inTime_Hour
		  Case 12
		    TmpTimeHourInt = 1
		  Case 11
		    flipAMPM()
		    TmpTimeHourInt = inTime_Hour +1
		  Else
		    TmpTimeHourInt = inTime_Hour +1
		  End select
		  
		  Return TmpTimeHourInt
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function convertHour_12to24TimeFormat(inHour12HourTime as Integer, inAMPM as String) As String
		  Var Results as String
		  
		  if  inHour12HourTime >= 1 AND inHour12HourTime <= 11 AND inAMPM = "AM" Then
		    // No need to convert
		    Results = inHour12HourTime.ToString
		  Elseif  inHour12HourTime = 1 AND inAMPM = "PM" Then
		    Results = "13"
		  Elseif  inHour12HourTime = 2 AND inAMPM = "PM" Then
		    Results = "14"
		  Elseif  inHour12HourTime = 3 AND inAMPM = "PM" Then
		    Results = "15"
		  Elseif  inHour12HourTime = 4 AND inAMPM = "PM" Then
		    Results = "16"
		  Elseif  inHour12HourTime = 5 AND inAMPM = "PM" Then
		    Results = "17"
		  Elseif  inHour12HourTime = 6 AND inAMPM = "PM" Then
		    Results = "18"
		  Elseif  inHour12HourTime = 7 AND inAMPM = "PM" Then
		    Results = "19"
		  Elseif  inHour12HourTime = 8 AND inAMPM = "PM" Then
		    Results = "20"
		  Elseif  inHour12HourTime = 9 AND inAMPM = "PM" Then
		    Results = "21"
		  Elseif  inHour12HourTime = 10 AND inAMPM = "PM" Then
		    Results = "22"
		  Elseif  inHour12HourTime = 11 AND inAMPM = "PM" Then
		    Results = "23"
		  Elseif  inHour12HourTime = 12 AND inAMPM = "AM" Then
		    Results = "00"
		  end if
		  
		  Return Results
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function convertHour_24to12TimeFormat(inHour24HourTime as Integer) As String
		  Var Results as String
		  
		  if  inHour24HourTime = 23 Then
		    Results = "11"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 22 Then
		    Results = "10"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 21 Then
		    Results = "9"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 20 Then
		    Results = "8"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 19 Then
		    Results = "7"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 18 Then
		    Results = "6"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 17 Then
		    Results = "5"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 16 Then
		    Results = "4"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 15 Then
		    Results = "3"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 14 Then
		    Results = "2"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime = 13 Then
		    Results = "1"
		    Time_Container(Window).Time_AMPM = "PM"
		    
		  Elseif  inHour24HourTime <= 12 AND inHour24HourTime > 0 Then
		    Results = inHour24HourTime.ToString
		    Time_Container(Window).Time_AMPM = "AM"
		    
		  Elseif inHour24HourTime = 0 Then
		    Results = "12"
		    Time_Container(Window).Time_AMPM = "AM"
		  end if
		  
		  Return Results
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function createTimeString() As string
		  Var ret as string
		  
		  Var thisHour as String = Time_Container(window).Time_Hour
		  Var thisMin as String = Time_Container(window).Time_Minute
		  Var spacer as String =  " "
		  Var thisAMPM as String = Time_Container(window).Time_AMPM
		  Var thisTimeMode as Integer = Time_Container(window).TimeMode
		  
		  If thisTimeMode = 12 Then
		    ret = thisHour + colonVar + thisMin + spacer + thisAMPM
		    
		  Elseif thisTimeMode = 24 Then
		    ret = thisHour + colonVar + thisMin
		  End If
		  
		  
		  Return ret
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawAMPM(g as Graphics, inTimeAMPMLen as Integer)
		  g.ForeColor = &c99ccff
		  
		  Var xPOS as Integer
		  Var yPOS as Integer = 1
		  Var osPaddingInt as Integer
		  Var winPadInt as Integer
		  Var thisWidth as Integer
		  #If TargetMacOS Then
		    osPaddingInt = 4
		    xPOS  = Indent + Time_Container(window).Time_Hour_Len + Colon_Width + Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM + 2
		    thisWidth = inTimeAMPMLen + 6
		    
		  #ElseIf TargetWindows Then
		    osPaddingInt = 5
		    winPadInt = 1
		    xPOS  = Indent+Time_Container(window).Time_Hour_Len+Colon_Width+Time_Container(window).Time_Minute_Len+SpaceBetweenMinAndAMPM
		    thisWidth = inTimeAMPMLen + 5
		  #endif
		  
		  Var thisHeight as Integer = me.Height-1
		  
		  
		  g.FillRect(xPOS, yPOS, thisWidth, thisHeight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawGradientBackfill(g as graphics)
		  // Awesome Gradient Fill
		  Var i as integer, ratio, endratio as Double
		  Var StartColor, EndColor as Color
		  
		  // Gradient
		  StartColor = RGB(235, 239, 242)
		  EndColor = RGB(100,100,100)
		  
		  // Draw The Gradient
		  for i = g.Height DownTo 0
		    // Need our ratios of start / end
		    ratio = (i/g.Height)
		    endratio = ((g.Height-i)/g.Height)
		    // Determine the Color
		    g.ForeColor = RGB(StartColor.Red * endratio + EndColor.Red * ratio, StartColor.Green * endratio + EndColor.Green * ratio, StartColor.Blue * endratio + EndColor.Blue * ratio)
		    // Draw the current line
		    g.DrawLine 0, i, g.Width, i
		  next
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawSelectHour(g as Graphics, inTimeHourLen as Integer)
		  g.ForeColor = &c99ccff
		  
		  Var xPOS as Integer = 9
		  Var yPOS as Integer = 1
		  Var osPaddingInt as Integer
		  #If TargetMacOS Then
		    osPaddingInt = 3 
		    
		  #ElseIf TargetWindows Then
		    osPaddingInt = 2
		  #endif
		  
		  Var thisWidth as Integer = inTimeHourLen  + osPaddingInt
		  Var thisHeight as Integer = me.Height-1
		  
		  If Time_Container(window).TimeMode = 24 Then
		    xPOS = xPOS + 2 + milTimeSpacer
		  End If
		  
		  g.FillRect(xPOS, yPOS, thisWidth, thisHeight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawSelectMinute(g as Graphics, inTimeMinuteLen as Integer)
		  g.ForeColor = &c99ccff
		  
		  
		  Var xPOS as Integer = 0
		  Var yPOS as Integer = 1
		  Var osPaddingInt as Integer
		  Var winPadInt as Integer
		  
		  #If TargetMacOS Then
		    osPaddingInt = 4
		    xPOS = Indent+Time_Container(window).Time_Hour_Len + 4
		    
		  #ElseIf TargetWindows Then
		    osPaddingInt = 5
		    winPadInt = 1
		    xPOS = Indent + Time_Container(window).Time_Hour_Len +  3
		  #endif
		  
		  Var thisWidth as Integer = inTimeMinuteLen + 2 - (winPadInt*3)
		  Var thisHeight as Integer = me.Height-1
		  
		  If Time_Container(window).TimeMode = 24 Then
		    thisWidth = thisWidth + 2
		    xPOS = xPOS + 1 + milTimeSpacer + winPadInt
		  End If
		  
		  g.FillRect(xPOS, yPOS, thisWidth, thisHeight)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub flipAMPM()
		  if Time_Container(window).Time_AMPM = "AM" Then
		    Time_Container(window).Time_AMPM = "PM"
		  Elseif Time_Container(window).Time_AMPM = "PM" Then
		    Time_Container(window).Time_AMPM = "AM"
		  End if
		  
		  me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub format24hrSingleDigits(inKeyValue as String)
		  if Draw_Hour_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Hour = inKeyValue
		    elseif inKeyValue.ToDouble >=1 AND inKeyValue.ToDouble <= 9 Then
		      Time_Container(window).Time_Hour = "0"+Time_Container(window).Time_Hour
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Hour = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Hour = "12"
		    end if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Minute = inKeyValue
		    Elseif inKeyValue.ToDouble >=1 AND inKeyValue.ToDouble <= 9 Then
		      Time_Container(window).Time_Minute = "0"+Time_Container(window).Time_Minute
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Minute = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    end if
		    
		  End if
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub formatSingleDigits(inKeyValue as String)
		  if Draw_Hour_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Hour = inKeyValue
		    elseif inKeyValue.ToDouble >=1 AND inKeyValue.ToDouble <= 9 Then
		      Time_Container(window).Time_Hour = "0"+Time_Container(window).Time_Hour
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Hour = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Hour = "12"
		    end if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if inKeyValue = "01" or inKeyValue = "02" or inKeyValue = "03" or inKeyValue = "04" or inKeyValue = "05"or inKeyValue ="06" or inKeyValue ="07" or inKeyValue ="08" or inKeyValue ="09" Then
		      Time_Container(window).Time_Minute = inKeyValue
		    Elseif inKeyValue.ToDouble >=1 AND inKeyValue.ToDouble <= 9 Then
		      Time_Container(window).Time_Minute = "0"+Time_Container(window).Time_Minute
		    Elseif inKeyValue = "0" Then
		      Time_Container(window).Time_Minute = "0"
		    Elseif inKeyValue = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    end if
		    
		  End if
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub manual12HourTimeEntry(inKeyBuffer as String)
		  // Figure out Which Field the User is in to change
		  
		  if Draw_Hour_Selected = True then
		    if inKeyBuffer.ToDouble >= 1 AND inKeyBuffer.ToDouble <= 12 Then
		      Time_Container(window).Time_Hour = inKeyBuffer
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Hour = "00"
		      
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Hour = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if inKeyBuffer.ToDouble >= 1 AND inKeyBuffer.ToDouble <= 59 Then
		      Time_Container(window).Time_Minute = inKeyBuffer
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Minute = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  End if
		  Time_Container(window).Clock1.Invalidate
		  Me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub manual24HourTimeEntry(inKeyBuffer as String)
		  // Figure out Which Field the User is in to change
		  
		  if Draw_Hour_Selected = True then
		    if inKeyBuffer.ToDouble >= 1 AND inKeyBuffer.ToDouble <= 23 Then
		      Time_Container(window).Time_Hour = inKeyBuffer
		    Elseif inKeyBuffer.ToDouble = 24 then
		      Time_Container(window).Time_Hour = "00"
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Hour = "00"
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Hour = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  Elseif Draw_Minute_Selected = True Then
		    if inKeyBuffer.ToDouble >= 1 AND inKeyBuffer.ToDouble <= 59 Then
		      Time_Container(window).Time_Minute = inKeyBuffer
		    Elseif inKeyBuffer = "00" Then
		      Time_Container(window).Time_Minute = "00"
		    elseif inKeyBuffer = Chr(8) Then
		      Time_Container(window).Time_Minute = " "
		      KeyBuffer = ""
		    Else
		      Return
		    End if
		    
		  End if
		  Time_Container(window).Clock1.Invalidate
		  Me.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move12HourDown()
		  // Hour is Selected so lets Move it down
		  Var TmpHour as Integer = Time_Container(window).Time_Hour.ToDouble
		  // If the hour rolls past the AM/PM bounds we'll flip it
		  if TmpHour = 12 then
		    flipAMPM()
		  end if
		  TmpHour = TmpHour - 1
		  // Keep within the Time Constaints (12 HourTime)
		  if TmpHour = 0 Then
		    TmpHour = 12
		  End if
		  
		  Time_Container(window).Time_Hour = TmpHour.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue - .522
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move12HourUp()
		  // Hour is Selected so lets Move it down
		  Var TmpHour as Integer = Time_Container(window).Time_Hour.ToDouble
		  
		  if TmpHour = 11 then
		    flipAMPM()
		  end if
		  
		  TmpHour = TmpHour +1
		  // Keep within the Time Constaints (12 HourTime)
		  if TmpHour = 13 Then
		    TmpHour = 1
		  End if
		  
		  Time_Container(window).Time_Hour = TmpHour.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue + .522
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move12MinDown()
		  // Hour is Selected so lets Move it down
		  Var TmpMin as Integer = Time_Container(window).Time_Minute.ToDouble
		  Var TmpZeroPad as String
		  TmpMin = TmpMin - 1
		  if TmpMin = -1 Then
		    TmpMin = 59
		    TmpZeroPad = ""
		    move12HourDown()
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  
		  // Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad + TmpMin.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue =Time_Container(window).Clock1.ClockMinuteValue - .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move12MinUp()
		  // Hour is Selected so lets Move it Up
		  Var TmpMin as Integer = Time_Container(window).Time_Minute.ToDouble
		  Var TmpZeroPad as String
		  TmpMin = TmpMin + 1
		  if TmpMin = 60 Then
		    TmpMin = 00
		    TmpZeroPad = ""
		    move12HourUp()
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  
		  // Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad + TmpMin.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue = Time_Container(window).Clock1.ClockMinuteValue + .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move24HourDown()
		  // Hour is Selected so lets Move it down
		  Var TmpHour as Integer = Time_Container(window).Time_Hour.ToDouble
		  Var TmpZeroPad as String
		  
		  TmpHour = TmpHour -1
		  
		  // Keep within the 24 hour Time Constaints
		  if TmpHour = -1 Then
		    TmpHour = 23
		    flipAMPM()
		  End if
		  
		  if Tmphour >= 1 AND Tmphour <=9 Then
		    TmpZeroPad = "0"
		  Else
		    TmpZeroPad = ""
		  End if
		  
		  if TmpHour = 0 then
		    Time_Container(window).Time_Hour = "00"
		  Else
		    Time_Container(window).Time_Hour = TmpZeroPad + TmpHour.ToString
		  End if
		  
		  
		  Time_Container(window).TimePicker1.Invalidate(False)
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue + .522
		  Time_Container(window).Clock1.Invalidate(False)
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move24HourUp()
		  // Hour is Selected so lets Move it down
		  Var TmpHour as Integer = Time_Container(window).Time_Hour.ToDouble
		  Var TmpZeroPad as String
		  TmpHour = TmpHour +1
		  
		  // Keep within the 24 hour Time Constaints
		  if TmpHour = 24 Then
		    TmpHour = 0
		    flipAMPM()
		  End if
		  
		  
		  if Tmphour >= 1 AND Tmphour <=9 Then
		    TmpZeroPad = "0"
		  Else
		    TmpZeroPad = ""
		  End if
		  
		  if TmpHour = 0 then
		    Time_Container(window).Time_Hour = "00"
		  Else
		    Time_Container(window).Time_Hour = TmpZeroPad + TmpHour.ToString
		  End if
		  
		  
		  Time_Container(window).TimePicker1.Invalidate(False)
		  Time_Container(window).Clock1.ClockHourValue = Time_Container(window).Clock1.ClockHourValue + .522
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move24MinDown()
		  // Hour is Selected so lets Move it down
		  Var TmpMin as Integer = Time_Container(window).Time_Minute.ToDouble
		  Var TmpZeroPad as String
		  TmpMin = TmpMin - 1
		  if TmpMin = -1 Then
		    TmpMin = 59
		    TmpZeroPad = ""
		    move24HourDown()
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  
		  
		  /// Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad + TmpMin.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue =Time_Container(window).Clock1.ClockMinuteValue - .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub move24MinUp()
		  // Hour is Selected so lets Move it Up
		  Var TmpMin as Integer = Time_Container(window).Time_Minute.ToDouble
		  Var TmpZeroPad as String
		  TmpMin = TmpMin + 1
		  if TmpMin = 60 Then
		    TmpMin = 00
		    TmpZeroPad = ""
		    move24HourUp()
		  End if
		  if TmpMin <=59 AND TmpMin >=10 Then
		    TmpZeroPad = ""
		  Else
		    TmpZeroPad = "0"
		  End if
		  
		  // Keep within the Time Constaints (12 HourTime)
		  Time_Container(window).Time_Minute = TmpZeroPad + TmpMin.ToString
		  Time_Container(window).TimePicker1.Invalidate(False)
		  
		  Time_Container(window).Clock1.ClockMinuteValue = Time_Container(window).Clock1.ClockMinuteValue + .1046
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub moveAMPM()
		  // Switch AM/PM
		  if Time_Container(window).Time_AMPM = "AM" Then
		    Time_Container(window).Time_AMPM = "PM"
		  Elseif Time_Container(window).Time_AMPM = "PM" Then
		    Time_Container(window).Time_AMPM = "AM"
		  End if
		  
		  Time_Container(window).TimePicker1.Invalidate(False)
		  Time_Container(window).Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub oneTimeConversion12to24()
		  // Do a one time conversion from 12 hour to 24 hour for the current time
		  Var thisTwelveHourTime as Integer = Time_Container(Window).Time_Hour.ToDouble
		  Var thisAMPM as String = Time_Container(Window).Time_AMPM
		  Time_Container(Window).Time_Hour =  convertHour_12to24TimeFormat(thisTwelveHourTime,thisAMPM)
		  Time_Container(Window).TimePicker1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub oneTimeConversion24to12()
		  // Do a one time conversion from 12 hour to 24 hour for the current time
		  Var thisTwentyFourHourTime as Integer = Time_Container(Window).Time_Hour.ToDouble
		  Time_Container(Window).Time_Hour =  convertHour_24to12TimeFormat(thisTwentyFourHourTime)
		  Time_Container(Window).TimePicker1.Invalidate(False)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		colonVar As String = ":"
	#tag EndProperty

	#tag Property, Flags = &h21
		Private Colon_Width As Integer = 3
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_AMPM_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_Hour_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Draw_Minute_Selected As Boolean = False
	#tag EndProperty

	#tag Property, Flags = &h0
		Indent As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		KeyBuffer As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private milTimeSpacer As Integer = 6
	#tag EndProperty

	#tag Property, Flags = &h21
		Private SpaceBetweenMinAndAMPM As Integer = 2
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
			Name="Backdrop"
			Visible=true
			Group="Appearance"
			InitialValue=""
			Type="Picture"
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
			Name="Draw_AMPM_Selected"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Draw_Hour_Selected"
			Visible=false
			Group="Behavior"
			InitialValue="False"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Draw_Minute_Selected"
			Visible=false
			Group="Behavior"
			InitialValue="False"
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
			Name="Height"
			Visible=true
			Group="Position"
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Indent"
			Visible=false
			Group="Behavior"
			InitialValue="9"
			Type="Integer"
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
			Group="Position"
			InitialValue=""
			Type="String"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="KeyBuffer"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="String"
			EditorType="MultiLineEditor"
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
			InitialValue="100"
			Type="Integer"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="colonVar"
			Visible=false
			Group="Behavior"
			InitialValue=":"
			Type="String"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
	#tag EndViewBehavior
End Class
#tag EndClass
