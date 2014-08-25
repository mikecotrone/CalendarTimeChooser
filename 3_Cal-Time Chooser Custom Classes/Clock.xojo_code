#tag Class
Protected Class Clock
Inherits Canvas
	#tag Event
		Sub Open()
		  #IF TargetWin32 Then
		    DoubleBuffer = True
		  #ENDIF
		  
		  dim d As new date
		  Time_Container(window).Time_Minute=Format(d.Minute,"00")
		  if d.Hour<12 then
		    Time_Container(window).Time_AMPM="AM"
		    if d.Hour=0 then
		      Time_Container(window).Time_Hour="12"
		    else
		      Time_Container(window).Time_Hour=str(d.Hour)
		    end if
		  else
		    Time_Container(window).Time_AMPM="PM"
		    if d.Hour>12 then
		      Time_Container(window).Time_Hour=str(d.Hour-12)
		    Else
		      Time_Container(window).Time_Hour="12"
		    end if
		  end if
		  
		End Sub
	#tag EndEvent

	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.AntiAlias = True
		  // Control the use of the Gradient Fill or Normal Background color
		  if UseGradientFill = False Then
		    g.ForeColor=Date_Time_Container(Time_Container(window).Window).BackColor
		    g.FillRect(0,0,g.Width,g.Height)
		  Elseif UseGradientFill = True Then
		    
		  end if
		  
		  // Draw Clock Image
		  Select Case Date_Time_Container(Time_Container(window).window).ClockFaceType
		  Case Date_Time_Container.ClockFaceType.Chrome
		    g.DrawPicture(ClockFace_Chrome130x130,0,0)
		  Case Date_Time_Container.ClockFaceType.Roman
		    g.DrawPicture(ClockFace_Roman130x130,0,0)
		  Case Date_Time_Container.ClockFaceType.Standard
		    g.DrawPicture(clock_dial130x130,0,0)
		  Case Date_Time_Container.ClockFaceType.GoogleStyle
		    g.DrawPicture(ClockFaceGoogle130x130,0,0)
		  Case Date_Time_Container.ClockFaceType.Modern
		    g.DrawPicture(Clock_Retro130x130,0,0)
		  Case Date_Time_Container.ClockFaceType.Dynamic_12hr
		    mDrawClockFace (g)
		  Case Date_Time_Container.ClockFaceType.Dynamic_24hr
		    mDrawClockFace (g)
		  Case Date_Time_Container.ClockFaceType.Antique
		    g.DrawPicture(Antique130x130,0,0)
		  End Select
		  
		  dim buffer As new Picture(g.Width*2,g.Height*2)
		  // Minute Hand
		  mDrawClockMinuteHand (buffer.Graphics)
		  // Hour Hand
		  mDrawClockHourHand (buffer.Graphics)
		  // Draw Second hand
		  mDrawClockSecondHand (buffer.Graphics)
		  
		  
		  // Draw Center Dot on the Clock Image
		  if not UseGraphicalClockHands then
		    buffer.Graphics.ForeColor = RGB(0,0,0)
		    buffer.Graphics.FillOval(buffer.Width/2-4,buffer.Height/2-4,9,9)
		  end if
		  
		  if Time_Container(window).HideAMPM = False Then
		    dim AMPM As new StringShape
		    AMPM.FillColor=TextColor
		    AMPM.TextFont=Font
		    AMPM.TextSize=24
		    AMPM.VerticalAlignment=StringShape.Alignment.Bottom
		    AMPM.HorizontalAlignment=StringShape.Alignment.Center
		    AMPM.Text=Time_Container(window).Time_AMPM
		    // Draw String AM/PM ONLY for 12 Hour Time Format
		    if Time_Container(window).TimeMode = 12 Then
		      buffer.Graphics.DrawObject AMPM,buffer.Width/2,buffer.Height/2+40
		    End if
		  End if
		  g.drawpicture buffer,0,0,g.width,g.height,0,0,buffer.Width,buffer.Height
		  
		  
		  
		  
		  
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
		  static buffer As picture= new Picture(g.Width*4,g.Height*4)
		  buffer.Graphics.ClearRect(0,0,buffer.Width,buffer.Height)
		  dim hr,sec,x,y,radius,tickInset As integer
		  dim angle As Double
		  dim hourTick As new CurveShape
		  hourTick.x=0
		  hourTick.x2=-20
		  hourTick.y=0
		  hourTick.y2=0
		  hourTick.BorderColor=TextColor
		  hourTick.BorderWidth=4
		  dim secondTick as new CurveShape
		  secondTick.x=0
		  secondTick.y=0
		  secondTick.x2=-10
		  secondTick.y2=0
		  secondTick.BorderColor=TextColor
		  secondTick.BorderWidth=4
		  radius=buffer.Width/2
		  dim numeral As new StringShape //for drawing the numbers
		  if HourCount=12 then
		    numeral.TextSize=52
		  else
		    numeral.TextSize=40
		  end if
		  numeral.TextFont=me.font
		  numeral.FillColor=TextColor
		  numeral.VerticalAlignment=StringShape.Alignment.Center
		  numeral.HorizontalAlignment=StringShape.Alignment.Center
		  dim face As new OvalShape
		  #if TargetMacOS Then
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
		    numeral.Text=str(hr)
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
		        
		        numeral.Text=str(hr+12)
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

	#tag Method, Flags = &h0
		Sub mDrawClockHourHand(g as Graphics)
		  Dim HourHand as Object2D
		  
		  Dim CurrentHour as integer=val(Time_Container(window).Time_Hour)
		  
		  // Only Allow the 12 Hour Control for 12 Hour Mode
		  if Time_Container(window).TimeMode = 12 Then
		    If Time_Container(window).Time_AMPM = "PM" and CurrentHour<>12 then
		      CurrentHour=CurrentHour+12
		    elseIf  Time_Container(window).Time_AMPM = "AM" and CurrentHour=12 then
		      CurrentHour=CurrentHour+12
		    end if
		  End if
		  
		  if UseGraphicalClockHands = True then
		    dim handPic As new Picture(HourHandImg.Width,HourHandImg.Height,32)
		    handPic.Graphics.ForeColor=ClockHandColor
		    handPic.Graphics.FillRect 0,0,handPic.Width,handPic.Height
		    handPic.ApplyMask HourHandImg
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

	#tag Method, Flags = &h0
		Sub mDrawClockMinuteHand(g as Graphics)
		  Dim MinHand as Object2D
		  
		  if UseGraphicalClockHands = True then
		    dim handPic As new Picture(MinuteHandImg.Width,MinuteHandImg.Height,32)
		    handPic.Graphics.ForeColor=ClockHandColor
		    handPic.Graphics.FillRect 0,0,handPic.Width,handPic.Height
		    handPic.ApplyMask MinuteHandImg
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

	#tag Method, Flags = &h0
		Sub mDrawClockSecondHand(g as Graphics)
		  Dim SecondHand as Object2D
		  
		  if UseGraphicalClockHands then  //use graphical version
		    SecondHand=New PixmapShape(SecondHandImg)
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


	#tag Property, Flags = &h0
		BorderColor As Color = &c444444
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockFaceColor As Color = &cdddddd
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockFaceType As Date_Time_Container.ClockFaceType
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
			Visible=true
			Group="Behavior"
			InitialValue="&c444444"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockFaceColor"
			Group="Behavior"
			InitialValue="&cdddddd"
			Type="Color"
		#tag EndViewProperty
		#tag ViewProperty
			Name="ClockHandColor"
			Group="Behavior"
			InitialValue="&c000000"
			Type="Color"
			EditorType="MultiLineEditor"
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
			Name="Font"
			Visible=true
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
			Visible=true
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
		#tag EndViewProperty
		#tag ViewProperty
			Name="TextColor"
			Visible=true
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
			Name="UseGradientFill"
			Group="Behavior"
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
