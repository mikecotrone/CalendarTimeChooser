#tag Class
Protected Class Clock
Inherits Canvas
	#tag Event
		Sub Open()
		  // ------- SET THESE VALUES IF YOU WOULD LIKE A CUSTOM TIME ON START
		  // ------- 24 HOUR OR 12 HOUR SUPPORTED
		  
		  // DEFAULT: USE THE CURRENT TIME
		  SetCustomTime()
		  
		  // EXAMPLE: SET 24 HOUR TIME TO 22:30
		  ' SetCustomTime(22,30)
		  
		  // EXAMPLE: SET 12 HOUR TIME TO 6:40 AM'
		  ' SetCustomTime(6,40, "am")
		  
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  #Pragma Unused areas
		  
		  g.AntiAlias = True
		  
		  // Draw Clock Image
		  Select Case Date_Time_Container(Time_Container(window).window).ClockFaceType
		  Case Date_Time_Container.ClockFaceType_Chrome
		    g.DrawPicture(ClockFace_Chrome130x130,0,0)
		  Case Date_Time_Container.ClockFaceType_Roman
		    g.DrawPicture(ClockFace_Roman130x130,0,0)
		  Case Date_Time_Container.ClockFaceType_Standard
		    g.DrawPicture(clock_dial130x130,0,0)
		  Case Date_Time_Container.ClockFaceType_GoogleStyle
		    g.DrawPicture(ClockFaceGoogle130x130,0,0)
		  Case Date_Time_Container.ClockFaceType_Modern
		    g.DrawPicture(Clock_Retro130x130,0,0)
		  Case Date_Time_Container.ClockFaceType_Dynamic_12hr
		    drawClockFace (g)
		  Case Date_Time_Container.ClockFaceType_Dynamic_24hr
		    drawClockFace (g)
		  Case Date_Time_Container.ClockFaceType_Antique
		    g.DrawPicture(Antique130x130,0,0)
		  End Select
		  
		  Var buffer As new Picture(g.Width*2,g.Height*2)
		  // Minute Hand
		  drawClockMinuteHand (buffer.Graphics)
		  // Hour Hand
		  drawClockHourHand (buffer.Graphics)
		  // Draw Second hand
		  drawClockSecondHand (buffer.Graphics)
		  
		  
		  // Draw Center Dot on the Clock Image
		  if not UseGraphicalClockHands then
		    buffer.Graphics.ForeColor = RGB(0,0,0)
		    buffer.Graphics.FillOval(buffer.Width/2-4,buffer.Height/2-4,9,9)
		  end if
		  
		  if Time_Container(window).HideAMPM = False Then
		    Var AMPM As new StringShape
		    AMPM.FillColor=TextColor
		    AMPM.TextFont=Font
		    AMPM.TextSize= 26
		    AMPM.VerticalAlignment=StringShape.Alignment.Bottom
		    AMPM.HorizontalAlignment=StringShape.Alignment.Center
		    AMPM.Text=Time_Container(window).Time_AMPM
		    // Draw String AM/PM ONLY for 12 Hour Time Format
		    if Time_Container(window).TimeMode = 12 Then
		      buffer.Graphics.DrawObject AMPM,buffer.Width/2,buffer.Height/2+48
		    End if
		  End if
		  g.drawpicture (buffer,0,0,g.width,g.height,0,0,buffer.Width,buffer.Height)
		  
		  
		  
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Sub drawAMPM_OnClock(g as Graphics, inTextSize as Integer, inTextFont as String, inForecolor as color, inString as String)
		  #Pragma Unused g
		  #Pragma Unused inTextSize
		  #Pragma Unused inTextFont
		  #Pragma Unused inForecolor
		  #Pragma Unused inString
		  
		  'g.TextSize = inTextSize
		  'g.TextFont = inTextFont
		  'g.ForeColor = inForecolor
		  'g.DrawString(inString,Me.Width/2-8,Me.Height/2+18,me.Width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawClockFace(g As Graphics)
		  static buffer As picture= new Picture(g.Width*4,g.Height*4)
		  buffer.Graphics.ClearRect(0,0,buffer.Width,buffer.Height)
		  Var hr,sec,x,y,radius,tickInset As integer
		  Var angle As Double
		  Var hourTick As new CurveShape
		  hourTick.x=0
		  hourTick.x2=-20
		  hourTick.y=0
		  hourTick.y2=0
		  hourTick.BorderColor=TextColor
		  hourTick.BorderWidth=4
		  Var secondTick as new CurveShape
		  secondTick.x=0
		  secondTick.y=0
		  secondTick.x2=-10
		  secondTick.y2=0
		  secondTick.BorderColor=TextColor
		  secondTick.BorderWidth=4
		  radius=buffer.Width/2
		  Var numeral As new StringShape //for drawing the numbers
		  if HourCount=12 then
		    numeral.TextSize=52
		  else
		    numeral.TextSize=40
		  end if
		  numeral.TextFont=me.font
		  numeral.FillColor=TextColor
		  numeral.VerticalAlignment=StringShape.Alignment.Center
		  numeral.HorizontalAlignment=StringShape.Alignment.Center
		  Var face As new OvalShape
		  #IF TargetMacOS OR TargetLinux Then
		    face.Width=buffer.Width-16
		    face.Height=buffer.width-16
		  #Elseif TargetWin32 Then
		    face.Width=buffer.Width-32
		    face.Height=buffer.width-32
		  #endif
		  
		  face.Border=100
		  face.BorderWidth=16
		  face.BorderColor=BorderColor
		  face.fill=100
		  face.FillColor= ClockFaceColor
		  buffer.Graphics.DrawObject face,radius,radius
		  buffer.Graphics.ForeColor=TextColor
		  
		  for hr=1 to HourCount
		    numeral.Text = hr.ToString
		    angle=pi*2*(hr/HourCount)-pi/2 //hour angle as radians
		    //calc the hour hashmark
		    if HourCount=12 then
		      // calc the numeral location
		      if Time_Container(window).TimeMode=24 then//24 hour mode
		        
		        tickInset=80
		        numeral.TextSize=48
		        x = Cos(angle)*(radius-46)
		        y= Sin(angle)*(radius-46)
		        buffer.Graphics.DrawObject numeral,x+radius+1,y+radius+2 //draw numeral
		        
		        Var hr12Int as Integer = hr + 12
		        numeral.Text = hr12Int.ToString
		        numeral.TextSize=36
		        x = Cos(angle)*(radius-130)
		        y= Sin(angle)*(radius-130)
		        buffer.Graphics.DrawObject numeral,x+radius+1,y+radius+2 //draw inner numeral
		        
		      elseif  Time_Container(window).TimeMode=12 Then //12 hour mode
		        x = Cos(angle)*(radius-80)
		        y= Sin(angle)*(radius-80)
		        buffer.Graphics.DrawObject numeral,x+radius+1,y+radius+2 //draw numeral
		        tickInset=20
		        
		      end if
		      
		      //draw the hour ticks
		      x = Cos(angle)*(radius-tickInset)
		      y= Sin(angle)*(radius-tickInset)
		      hourTick.Rotation=angle
		      buffer.Graphics.DrawObject hourTick,x+radius,y+radius //draw hour ticks
		      
		      // draw the second ticks
		      for sec = 1 to 4
		        angle=pi*2*((hr+sec/5)/HourCount)-pi/2 //hour angle as radians + fifth of an hour
		        x = Cos(angle)*(radius-tickInset)
		        y= Sin(angle)*(radius-tickInset)
		        secondTick.Rotation=angle
		        buffer.Graphics.DrawObject secondTick,x+radius,y+radius //draw second ticks
		      next
		      
		      
		    elseif HourCount = 24 Then //24 hour clock
		      
		      // calc the numeral location
		      if numeral.Text="24" then numeral.text="0"
		      x = Cos(angle)*(radius-48)
		      y= Sin(angle)*(radius-48)
		      buffer.Graphics.DrawObject numeral,x+radius,y+radius //draw numeral
		    end if
		  next
		  
		  g.drawpicture buffer,0,0,g.width,g.height,0,0,buffer.Width,buffer.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawClockHourHand(g as Graphics)
		  Var HourHand as Object2D
		  
		  Var CurrentHour as integer=val(Time_Container(window).Time_Hour)
		  
		  // Only Allow the 12 Hour Control for 12 Hour Mode
		  if Time_Container(window).TimeMode = 12 Then
		    If Time_Container(window).Time_AMPM = "PM" and CurrentHour<>12 then
		      CurrentHour=CurrentHour+12
		    elseIf  Time_Container(window).Time_AMPM = "AM" and CurrentHour=12 then
		      CurrentHour=CurrentHour+12
		    end if
		  End if
		  
		  if UseGraphicalClockHands = True then
		    Var handPic As new Picture(HourHanVarg.Width,HourHanVarg.Height,32)
		    handPic.Graphics.ForeColor=ClockHandColor
		    handPic.Graphics.FillRect 0,0,handPic.Width,handPic.Height
		    handPic.ApplyMask HourHanVarg
		    HourHand=New PixmapShape(handPic)
		    
		    
		  elseif UseGraphicalClockHands = False Then
		    HourHand = New CurveShape
		    CurveShape(HourHand).Border = 100
		    CurveShape(HourHand).BorderWidth = 4
		    CurveShape(HourHand).BorderColor = &c0000FF
		    CurveShape(HourHand).X = 1
		    CurveShape(HourHand).Y  = 1
		    CurveShape(HourHand).X2 = 0
		    CurveShape(HourHand).Y2 = -60
		  end if
		  
		  HourHand.Rotation=pi*2/HourCount*(CurrentHour+val(Time_Container(window).Time_Minute)/60)+.01
		  g.DrawObject HourHand,g.Width/2, g.Height/2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawClockMinuteHand(g as Graphics)
		  Var MinHand as Object2D
		  
		  if UseGraphicalClockHands = True then
		    Var handPic As new Picture(MinuteHanVarg.Width,MinuteHanVarg.Height,32)
		    handPic.Graphics.ForeColor=ClockHandColor
		    handPic.Graphics.FillRect 0,0,handPic.Width,handPic.Height
		    handPic.ApplyMask MinuteHanVarg
		    MinHand=New PixmapShape(handPic)
		    
		  elseif UseGraphicalClockHands = False Then
		    MinHand = New CurveShape
		    CurveShape(MinHand).Border = 100
		    CurveShape(MinHand).BorderWidth = 1.5
		    CurveShape(MinHand).BorderColor = &c0000FF
		    CurveShape(MinHand).X = 0
		    CurveShape(MinHand).Y  = 0
		    CurveShape(MinHand).X2 = 0
		    CurveShape(MinHand).Y2 = -90
		  end if
		  
		  MinHand.Rotation=(pi*2/60*val(Time_Container(window).Time_Minute))+.01
		  g.DrawObject MinHand,g.Width/2, g.Height/2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub drawClockSecondHand(g as Graphics)
		  Var SecondHand as Object2D
		  
		  if UseGraphicalClockHands then  //use graphical version
		    SecondHand=New PixmapShape(SecondHanVarg)
		  else //build a curveshape
		    SecondHand = New CurveShape
		    CurveShape(SecondHand).Border = 100
		    CurveShape(SecondHand).BorderWidth = 1.5
		    CurveShape(SecondHand).BorderColor = &cFF0000
		    CurveShape(SecondHand).X = 0
		    CurveShape(SecondHand).Y  = 0
		    CurveShape(SecondHand).X2 = 0
		    CurveShape(SecondHand).Y2 = -100
		  end if
		  
		  //rotation is based on radians/seconds per minute * current second.
		  SecondHand.Rotation=(pi*2/60*Time_Container(window).ClockSecondsCounter)+.01
		  g.DrawObject SecondHand,g.Width/2,g.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h1
		Protected Sub SetCustomTime(optional inHour as Integer, optional inMinute as Integer, optional inAMPM as String)
		  // ------- SET THESE VALUES IF YOU WOULD LIKE A CUSTOM TIME ON START
		  If inHour = 0 Or inMinute = 0  Then
		    // DEFAULT USE CURRENT TIME
		    Var d As New date
		    Time_Container(Window).Time_Minute=Format(d.Minute,"00")
		    If d.Hour<12 Then
		      Time_Container(Window).Time_AMPM="AM"
		      If d.Hour=0 Then
		        Time_Container(Window).Time_Hour="12"
		      Else
		        Time_Container(Window).Time_Hour = d.Hour.ToString
		      End If
		    Else
		      Time_Container(Window).Time_AMPM="PM"
		      If d.Hour>12 Then
		        Var dM12Int as Integer = d.Hour - 12
		        Time_Container(Window).Time_Hour = dM12Int.ToString
		      Else
		        Time_Container(Window).Time_Hour="12"
		      End If
		    End If
		    
		  Else
		    // CUSTOM TIME  SECTION
		    
		    Time_Container(Window).TimeMode = 12
		    Self.Invalidate(False)
		    
		    'Var thisAMPM as String = Uppercase(inAMPM)
		    Time_Container(Window).Time_Minute=Format(inMinute,"00")
		    
		    If inHour < 12 Then
		      Time_Container(Window).Time_AMPM = "AM"
		      If inHour =0 Then
		        Time_Container(Window).Time_Hour = "12"
		      Else
		        Time_Container(Window).Time_Hour = inHour.ToString
		      End If
		      
		    Else
		      Time_Container(Window).Time_AMPM = "PM"
		      If inHour >12 Then
		        Var hrM12Int as Integer = inHour - 12
		        Time_Container(Window).Time_Hour = hrM12Int.ToString
		      Else
		        Time_Container(Window).Time_Hour="12"
		      End If
		    End If
		    
		    // CONVERT TO 24 HOUR OR 12 HOUR
		    If inAMPM = "" Then
		      // 24 HOUR
		      Time_Container(Window).TimeMode = 24
		    Else
		      // 12 HOUR
		      Var formattedAMPM as String = Uppercase(inAMPM)
		      Time_Container(Window).TimeMode = 12
		      Time_Container(Window).Time_AMPM = formattedAMPM
		    End If
		    
		    
		    
		  End If
		  
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BorderColor As Color = &c444444
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockFaceColor As Color = &cdddddd
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockFaceType As integer
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockHandColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockHourValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockMinuteValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockSecondValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		Font As String = "Helvetica"
	#tag EndProperty

	#tag Property, Flags = &h0
		HourCount As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		UseGradientFill As Boolean
	#tag EndProperty

	#tag Property, Flags = &h0
		UseGraphicalClockHands As Boolean
	#tag EndProperty


	#tag Constant, Name = pi, Type = Double, Dynamic = False, Default = \"3.14159265", Scope = Public
	#tag EndConstant


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
			Name="BorderColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c444444"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockFaceColor"
			Visible=false
			Group="Behavior"
			InitialValue="&cdddddd"
			Type="Color"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockFaceType"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="integer"
			EditorType="Enum"
			#tag EnumValues
				"0 - Chrome"
				"1 - Roman"
				"2 - Standard"
				"3 - GoogleStyle"
				"4 - Modern"
				"5 - Dynamic_12hr"
				"6 - Dynamic_24hr"
				"7 - Antique"
			#tag EndEnumValues
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockHandColor"
			Visible=false
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType="MultiLineEditor"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockHourValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockMinuteValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockSecondValue"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Double"
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
			Name="Enabled"
			Visible=true
			Group="Appearance"
			InitialValue="True"
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="Font"
			Visible=true
			Group="Behavior"
			InitialValue="Helvetica"
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
			Name="HourCount"
			Visible=true
			Group="Behavior"
			InitialValue="12"
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
			Name="TextColor"
			Visible=true
			Group="Behavior"
			InitialValue="&c000000"
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
			Name="UseGradientFill"
			Visible=false
			Group="Behavior"
			InitialValue=""
			Type="Boolean"
			EditorType=""
		#tag EndViewProperty
		#tag ViewProperty
			Name="UseGraphicalClockHands"
			Visible=false
			Group="Behavior"
			InitialValue=""
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
	#tag EndViewBehavior
End Class
#tag EndClass
