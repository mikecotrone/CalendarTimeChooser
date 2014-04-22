#tag Class
Protected Class Clock
Inherits Canvas
	#tag Event
		Sub Open()
		  //Start all Hands at 12
		  ClockMinuteValue = 3.248
		  ClockHourValue = 3.308
		  ClockSecondValue = 3.248
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  // Draw Clock Image
		  Select Case CalendarWindow.SelectClockFaceType
		  Case 0
		    g.DrawPicture(ClockFace_Chrome130x130,0,0)
		  Case 1
		    g.DrawPicture(ClockFace_Roman130x130,0,0)
		  Case 2
		    g.DrawPicture(clock_dial130x130,0,0)
		  Case 3
		    g.DrawPicture(ClockFaceGoogle130x130,0,0)
		  Case 4
		    g.DrawPicture(Clock_Retro130x130,0,0)
		  Case 5
		    mDrawClockFace (g)
		  End Select
		  
		  // Minute Hand
		  mDrawClockMinuteHand (g)
		  // Hour Hand
		  mDrawClockHourHand (g)
		  // Draw Second hand
		  mDrawClockSecondHand (g)
		  
		  // Draw String AM/PM
		  dim AMPM As new StringShape
		  AMPM.FillColor=TextColor
		  AMPM.TextFont=Font
		  AMPM.TextSize=12
		  AMPM.VerticalAlignment=StringShape.Alignment.Bottom
		  AMPM.HorizontalAlignment=StringShape.Alignment.Center
		  AMPM.Text=CalendarWindow.Time_Container1.Time_AMPM
		  g.DrawObject AMPM,Width/2,Height/2+20
		  
		  // Draw Center Dot on the Clock Image
		  if not UseGraphicalClockHands then
		    g.ForeColor = RGB(0,0,0)
		    g.FillOval(me.Width/2-2,me.Height/2-2,5,5)
		  end if
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h0
		Sub mDrawAMPM_OnClock(g as Graphics, inTextSize as Integer, inTextFont as String, inForecolor as color, inString as String)
		  g.TextSize = inTextSize
		  g.TextFont = inTextFont
		  g.ForeColor = inForecolor
		  g.DrawString(inString,Me.Width/2-8,Me.Height/2+16,me.Width)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockFace(g As Graphics)
		  dim buffer As new Picture(g.Width*2,g.Height*2)
		  dim hr,sec,x,y,radius As integer
		  dim angle As Double
		  dim hourTick As new CurveShape
		  hourTick.x=-2
		  hourTick.y=0
		  hourTick.x2=-14
		  hourTick.y2=0
		  dim secondTick as new CurveShape
		  secondTick.x=-2
		  secondTick.y=0
		  secondTick.x2=-8
		  secondTick.y2=0
		  dim numeral As new StringShape //for drawing the numbers
		  if HourCount=12 then
		    numeral.TextSize=26
		  else
		    numeral.TextSize=20
		  end if
		  numeral.TextFont=me.font
		  numeral.VerticalAlignment=StringShape.Alignment.Center
		  numeral.HorizontalAlignment=StringShape.Alignment.Center
		  buffer.Graphics.ForeColor=BorderColor
		  buffer.Graphics.FillOval 0,0,buffer.Width,buffer.Height //draw outline
		  buffer.Graphics.ForeColor=FaceColor
		  buffer.Graphics.FillOval 8,8,buffer.Width-16,buffer.Height-16 //draw background
		  radius=buffer.Width/2
		  buffer.Graphics.ForeColor=TextColor
		  
		  for hr=1 to HourCount
		    numeral.Text=str(hr)
		    angle=pi*2*(hr/HourCount)-pi/2 //hour angle as radians
		    //calc the hour hashmark
		    if HourCount=12 then
		      x = Cos(angle)*(radius-10)
		      y= Sin(angle)*(radius-10)
		      hourTick.Rotation=angle
		      buffer.Graphics.DrawObject hourTick,x+radius,y+radius //draw hour ticks
		      // calc the numeral location
		      x = Cos(angle)*(radius-40)
		      y= Sin(angle)*(radius-40)
		      buffer.Graphics.DrawObject numeral,x+radius,y+radius //draw numeral
		      
		      // draw the second ticks
		      for sec = 1 to 4
		        angle=pi*2*((hr+sec/5)/HourCount)-pi/2 //hour angle as radians + fifth of an hour
		        x = Cos(angle)*(radius-10)
		        y= Sin(angle)*(radius-10)
		        secondTick.Rotation=angle
		        buffer.Graphics.DrawObject secondTick,x+radius,y+radius //draw second ticks
		      next
		      
		    else //24 hour clock
		      // calc the numeral location
		      x = Cos(angle)*(radius-24)
		      y= Sin(angle)*(radius-24)
		      buffer.Graphics.DrawObject numeral,x+radius,y+radius //draw numeral
		    end if
		  next
		  
		  g.drawpicture buffer,0,0,g.width,g.height,0,0,buffer.Width,buffer.Height
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockHourHand(g as Graphics)
		  Dim HourHand as Object2D
		  
		  if UseGraphicalClockHands then
		    HourHand = New PixmapShape(HourHandImg)
		    HourHand.Scale=( me.Height-30 )/HourHandImg.Height
		  else
		    HourHand = New CurveShape
		    CurveShape(HourHand).Border = 100
		    CurveShape(HourHand).BorderWidth = 2
		    CurveShape(HourHand).BorderColor = &c0000FF
		    CurveShape(HourHand).X = 1
		    CurveShape(HourHand).Y  = 1
		    CurveShape(HourHand).X2 = 0
		    CurveShape(HourHand).Y2 = -30
		  end if
		  
		  HourHand.Rotation=pi*2/12*(val(CalendarWindow.Time_Container1.Time_Hour)+val(CalendarWindow.Time_Container1.Time_Minute)/60)+.01
		  g.DrawObject HourHand,me.Width/2, me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockMinuteHand(g as Graphics)
		  Dim MinHand as Object2D
		  
		  if UseGraphicalClockHands then
		    MinHand=New PixmapShape(MinuteHandImg)
		    MinHand.Scale=( me.Height-30 )/MinuteHandImg.Height
		  else
		    MinHand = New CurveShape
		    CurveShape(MinHand).Border = 100
		    CurveShape(MinHand).BorderWidth = .75
		    CurveShape(MinHand).BorderColor = &c0000FF
		    CurveShape(MinHand).X = 0
		    CurveShape(MinHand).Y  = 0
		    CurveShape(MinHand).X2 = 0
		    CurveShape(MinHand).Y2 = -45
		  end if
		  
		  MinHand.Rotation=(pi*2/60*val(CalendarWindow.Time_Container1.Time_Minute))+.01
		  g.DrawObject MinHand,me.Width/2, me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockSecondHand(g as Graphics)
		  Dim SecondHand as Object2D
		  
		  if UseGraphicalClockHands then  //use graphical version
		    SecondHand=New PixmapShape(SecondHandImg)
		    SecondHand.Scale=( me.Height-30 )/SecondHandImg.Height
		  else //build a curveshape
		    SecondHand = New CurveShape
		    CurveShape(SecondHand).Border = 100
		    CurveShape(SecondHand).BorderWidth = .75
		    CurveShape(SecondHand).BorderColor = &cFF0000
		    CurveShape(SecondHand).X = 0
		    CurveShape(SecondHand).Y  = 0
		    CurveShape(SecondHand).X2 = 0
		    CurveShape(SecondHand).Y2 = -50
		  end if
		  
		  //rotation is based on radians/seconds per minute * current second.
		  SecondHand.Rotation=(pi*2/60*CalendarWindow.Time_Container1.ClockSecondsCounter)+.01
		  g.DrawObject SecondHand,me.Width/2,me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveClockSecondHand(inSecondValue as String)
		  // I had to statically Map the Minute values since my Clock Image was not mathmatically consistent between time points
		  Select Case inSecondValue
		  Case "00"
		    ClockSecondValue = 3.248
		  Case "1"
		    ClockSecondValue = 3.338
		  Case "2"
		    ClockSecondValue =3.4434
		  Case "3"
		    ClockSecondValue =3.5634
		  Case "4"
		    ClockSecondValue =3.6434
		  Case "5"
		    ClockSecondValue =3.758
		  Case "6"
		    ClockSecondValue =3.868
		  Case "7"
		    ClockSecondValue =3.9534
		  Case "8"
		    ClockSecondValue =4.068
		  Case "9"
		    ClockSecondValue =4.168
		  Case "10"
		    ClockSecondValue =4.2833
		  Case "11"
		    ClockSecondValue = 4.3834
		  Case "12"
		    ClockSecondValue = 4.4834
		  Case "13"
		    ClockSecondValue = 4.5834
		  Case "14"
		    ClockSecondValue = 4.6887
		  Case "15"
		    ClockSecondValue = 4.8088
		  Case "16"
		    ClockSecondValue = 4.9088
		  Case "17"
		    ClockSecondValue = 5.088
		  Case "18"
		    ClockSecondValue = 5.1088
		  Case "19"
		    ClockSecondValue = 5.21288
		  Case "20"
		    ClockSecondValue = 5.3288
		  Case "21"
		    ClockSecondValue = 5.4188
		  Case "22"
		    ClockSecondValue = 5.5288
		  Case "23"
		    ClockSecondValue = 5.6388
		  Case "24"
		    ClockSecondValue = 5.7388
		  Case "25"
		    ClockSecondValue = 5.8588
		  Case "26"
		    ClockSecondValue = 5.9588
		  Case "27"
		    ClockSecondValue = 6.0588
		  Case "28"
		    ClockSecondValue = 6.1788
		  Case "29"
		    ClockSecondValue = 6.2688
		  Case "30"
		    ClockSecondValue = 6.3788
		  Case "31"
		    ClockSecondValue = 6.4988
		  Case "32"
		    ClockSecondValue = 6.5888
		  Case "33"
		    ClockSecondValue = 6.6888
		  Case "34"
		    ClockSecondValue = 6.8088
		  Case "35"
		    ClockSecondValue = 6.9088
		  Case "36"
		    ClockSecondValue = 7.0188
		  Case "37"
		    ClockSecondValue = 7.1188
		  Case "38"
		    ClockSecondValue = 7.2288
		  Case "39"
		    ClockSecondValue = 7.3288
		  Case "40"
		    ClockSecondValue = 7.4388
		  Case "41"
		    ClockSecondValue = 7.5388
		  Case "42"
		    ClockSecondValue = 7.6488
		  Case "43"
		    ClockSecondValue = 7.7488
		  Case "44"
		    ClockSecondValue = 7.8488
		  Case "45"
		    ClockSecondValue = 7.9588
		  Case "46"
		    ClockSecondValue = 8.0688
		  Case "47"
		    ClockSecondValue = 8.1788
		  Case "48"
		    ClockSecondValue = 8.2788
		  Case "49"
		    ClockSecondValue = 8.3788
		  Case "50"
		    ClockSecondValue = 8.4788
		  Case "51"
		    ClockSecondValue = 8.5788
		  Case "52"
		    ClockSecondValue = 8.6788
		  Case "53"
		    ClockSecondValue = 8.7788
		  Case "54"
		    ClockSecondValue = 8.9088
		  Case "55"
		    ClockSecondValue = 9.0088
		  Case "56"
		    ClockSecondValue = 9.1088
		  Case "57"
		    ClockSecondValue = 9.2188
		  Case "58"
		    ClockSecondValue = 9.3188
		  Case "59"
		    ClockSecondValue = 9.4188
		  Case "60"
		    ClockSecondValue = 3.248
		  End Select
		  CalendarWindow.Time_Container1.Clock1.Invalidate(False)
		End Sub
	#tag EndMethod


	#tag Property, Flags = &h0
		BorderColor As Color = &c444444
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
		FaceColor As Color = &cdddddd
	#tag EndProperty

	#tag Property, Flags = &h0
		Font As String = """Helvetica"""
	#tag EndProperty

	#tag Property, Flags = &h0
		HourCount As Integer = 12
	#tag EndProperty

	#tag Property, Flags = &h0
		TextColor As Color = &c000000
	#tag EndProperty

	#tag Property, Flags = &h0
		UseGraphicalClockHands As Boolean
	#tag EndProperty


	#tag Constant, Name = pi, Type = Double, Dynamic = False, Default = \"3.14159265", Scope = Public
	#tag EndConstant


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
			Name="BorderColor"
			Group="Behavior"
			InitialValue="&c444444"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockHourValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockMinuteValue"
			Group="Behavior"
			Type="Double"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockSecondValue"
			Group="Behavior"
			Type="Double"
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
			Name="FaceColor"
			Group="Behavior"
			InitialValue="&cdddddd"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="Font"
			Group="Behavior"
			InitialValue="""""Helvetica"""""
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
			Name="HourCount"
			Group="Behavior"
			InitialValue="12"
			Type="Integer"
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
			Name="TextColor"
			Group="Behavior"
			InitialValue="&c000000"
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
			Name="UseGraphicalClockHands"
			Group="Behavior"
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
	#tag EndViewBehavior
End Class
#tag EndClass
