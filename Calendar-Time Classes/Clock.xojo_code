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
		  End Select
		  
		  if UseGraphicalClockHands then
		    // Minute Hand
		    mDrawClockMinuteHandImage (g)
		    // Hour Hand
		    mDrawClockHourHandImage (g)
		    // Draw Second hand
		    mDrawClockSecondHandImage (g)
		  else
		    //Hour Hand
		    mDrawClockHourHand(g)
		    //Minute Hand
		    mDrawClockMinuteHand(g)
		    //Second Hand
		    mDrawClockSecondHand(g)
		  end if
		  
		  
		  // Draw String AM/PM
		  If CalendarWindow.Time_Container1.Time_AMPM = "AM" Then
		    mDrawAMPM_OnClock(g,12,"Helvetica",RGB(120,120,120),"AM")
		  Elseif  CalendarWindow.Time_Container1.Time_AMPM = "PM" Then
		    mDrawAMPM_OnClock(g,12,"Helvetica",RGB(120,120,120),"PM")
		  End if
		  
		  // Draw Center Dot on the Clock Image
		  g.ForeColor = RGB(0,0,0)
		  'g.FillOval(me.Width/2-2,me.Height/2-2,5,5)
		  
		  
		  
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
		Sub mDrawClockHourHand(g as Graphics)
		  Dim HourHand as New CurveShape
		  HourHand.Border = 100
		  HourHand.BorderColor = &c0000ff  // blue
		  HourHand.BorderWidth = 1.5
		  HourHand.X = 0
		  HourHand.Y = 0
		  HourHand.X2  = 5
		  HourHand.Y2 = 30
		  if CalendarWindow.Time_Container1.Time_Hour = "12" then
		    ClockHourValue = 3.308
		    HourHand.Rotation = ClockHourValue
		  Else
		    HourHand.Rotation =  ClockHourValue
		  End if
		  g.DrawObject HourHand,me.Width/2+1,me.Height/2
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockHourHandImage(g as Graphics)
		  Dim HourHand as New PixmapShape(HourHandImg)
		  HourHand.Scale=( me.Height-30 )/HourHandImg.Height
		  HourHand.Rotation=pi*2/12*(val(CalendarWindow.Time_Container1.Time_Hour)+val(CalendarWindow.Time_Container1.Time_Minute)/60)
		  g.DrawObject HourHand,me.Width/2+1, me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockMinuteHand(g as Graphics)
		  Dim MinHand as New CurveShape
		  MinHand.Border = 100
		  MinHand.BorderWidth = 1.5
		  MinHand.X = 0
		  MinHand.Y  = 0
		  MinHand.X2 = 5
		  MinHand.Y2 = 50
		  if CalendarWindow.Time_Container1.Time_Minute = "00" Then
		    ClockMinuteValue = 3.248
		    MinHand.Rotation =  ClockMinuteValue
		  Else
		    MinHand.Rotation =  ClockMinuteValue
		  End if
		  MinHand.BorderColor = &c0000ff  // blue
		  g.DrawObject MinHand,me.Width/2+1, me.Height/2
		  
		  //Dim p as Picture
		  //Dim px as PixmapShape
		  //p=New Picture(11,141)
		  //px=New PixmapShape(p)
		  //px.X = 0
		  //px.Y = 0
		  //px.Image = clock_minute
		  //px.rotation = ClockMinuteValue
		  //Graphics.drawObject px,me.Width/2, me.Height/2-2
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockMinuteHandImage(g as Graphics)
		  Dim MinHand as New PixmapShape(MinuteHandImg)
		  MinHand.Scale=( me.Height-30 )/MinuteHandImg.Height
		  MinHand.Rotation=(pi*2/60*val(CalendarWindow.Time_Container1.Time_Minute))
		  g.DrawObject MinHand,me.Width/2, me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockSecondHand(g as Graphics)
		  Dim SecondHand as New CurveShape
		  SecondHand.Border = 100
		  SecondHand.BorderWidth = .75
		  SecondHand.X = 0
		  SecondHand.Y  = 0
		  SecondHand.X2 = 5
		  SecondHand.Y2 = 50
		  SecondHand.Rotation =  ClockSecondValue
		  SecondHand.BorderColor = &cFF0000
		  g.DrawObject SecondHand,me.Width/2+1,me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mDrawClockSecondHandImage(g as Graphics)
		  Dim SecondHand as New PixmapShape(SecondHandImg)
		  SecondHand.Rotation=(pi*2/60*CalendarWindow.Time_Container1.ClockSecondsCounter)
		  SecondHand.Scale=( me.Height-30 )/SecondHandImg.Height
		  g.DrawObject SecondHand,me.Width/2,me.Height/2
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveClockHourHand(inHourHandValue as String)
		  // I had to statically Map the Minute values since my Clock Image was not mathmatically consistent between time points
		  Select Case inHourHandValue
		  Case "00"
		    ClockHourValue = 3.308
		  Case "1"
		    ClockHourValue = 3.828
		  Case "2"
		    ClockHourValue = 4.348
		  Case "3"
		    ClockHourValue = 4.878
		  Case "4"
		    ClockHourValue = 5.428
		  Case "5"
		    ClockHourValue = 5.918
		  Case "6"
		    ClockHourValue = 6.458
		  Case "7"
		    ClockHourValue = 6.948
		  Case "8"
		    ClockHourValue = 7.488
		  Case "9"
		    ClockHourValue = 8.008
		  Case "10"
		    ClockHourValue = 8.558
		  Case "11"
		    ClockHourValue = 9.078
		  Case "12"
		    ClockHourValue = 3.308
		  End Select
		  CalendarWindow.Time_Container1.Clock1.Invalidate(False)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mMoveClockMinHand(inMinHandValue as String)
		  // I had to statically Map the Minute values since my Clock Image was not mathmatically consistent between time points
		  Select Case inMinHandValue
		  Case "00"
		    ClockMinuteValue = 3.248
		  Case "1"
		    ClockMinuteValue = 3.338
		  Case "2"
		    ClockMinuteValue =3.4434
		  Case "3"
		    ClockMinuteValue =3.5634
		  Case "4"
		    ClockMinuteValue =3.6434
		  Case "5"
		    ClockMinuteValue =3.758
		  Case "6"
		    ClockMinuteValue =3.868
		  Case "7"
		    ClockMinuteValue =3.9534
		  Case "8"
		    ClockMinuteValue =4.068
		  Case "9"
		    ClockMinuteValue =4.168
		  Case "10"
		    ClockMinuteValue =4.2833
		  Case "11"
		    ClockMinuteValue = 4.3834
		  Case "12"
		    ClockMinuteValue = 4.4834
		  Case "13"
		    ClockMinuteValue = 4.5834
		  Case "14"
		    ClockMinuteValue = 4.6887
		  Case "15"
		    ClockMinuteValue = 4.8088
		  Case "16"
		    ClockMinuteValue = 4.9088
		  Case "17"
		    ClockMinuteValue = 5.088
		  Case "18"
		    ClockMinuteValue = 5.1088
		  Case "19"
		    ClockMinuteValue = 5.21288
		  Case "20"
		    ClockMinuteValue = 5.3288
		  Case "21"
		    ClockMinuteValue = 5.4188
		  Case "22"
		    ClockMinuteValue = 5.5288
		  Case "23"
		    ClockMinuteValue = 5.6388
		  Case "24"
		    ClockMinuteValue = 5.7388
		  Case "25"
		    ClockMinuteValue = 5.8588
		  Case "26"
		    ClockMinuteValue = 5.9588
		  Case "27"
		    ClockMinuteValue = 6.0588
		  Case "28"
		    ClockMinuteValue = 6.1788
		  Case "29"
		    ClockMinuteValue = 6.2688
		  Case "30"
		    ClockMinuteValue = 6.3788
		  Case "31"
		    ClockMinuteValue = 6.4988
		  Case "32"
		    ClockMinuteValue = 6.5888
		  Case "33"
		    ClockMinuteValue = 6.8888
		  Case "34"
		    ClockMinuteValue = 6.8088
		  Case "35"
		    ClockMinuteValue = 6.9088
		  Case "36"
		    ClockMinuteValue = 7.0188
		  Case "37"
		    ClockMinuteValue = 7.1188
		  Case "38"
		    ClockMinuteValue = 7.2288
		  Case "39"
		    ClockMinuteValue = 7.3288
		  Case "40"
		    ClockMinuteValue = 7.4388
		  Case "41"
		    ClockMinuteValue = 7.5388
		  Case "42"
		    ClockMinuteValue = 7.6488
		  Case "43"
		    ClockMinuteValue = 7.7488
		  Case "44"
		    ClockMinuteValue = 7.8488
		  Case "45"
		    ClockMinuteValue = 7.9588
		  Case "46"
		    ClockMinuteValue = 8.0688
		  Case "47"
		    ClockMinuteValue = 8.1788
		  Case "48"
		    ClockMinuteValue = 8.2788
		  Case "49"
		    ClockMinuteValue = 8.3788
		  Case "50"
		    ClockMinuteValue = 8.4788
		  Case "51"
		    ClockMinuteValue = 8.5788
		  Case "52"
		    ClockMinuteValue = 8.6788
		  Case "53"
		    ClockMinuteValue = 8.7788
		  Case "54"
		    ClockMinuteValue = 8.9088
		  Case "55"
		    ClockMinuteValue = 9.0088
		  Case "56"
		    ClockMinuteValue = 9.1088
		  Case "57"
		    ClockMinuteValue = 9.2188
		  Case "58"
		    ClockMinuteValue = 9.3188
		  Case "59"
		    ClockMinuteValue = 9.4188
		  Case "60"
		    ClockMinuteValue = 3.248
		  End Select
		  CalendarWindow.Time_Container1.Clock1.Invalidate(False)
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
		ClockHourValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockMinuteValue As Double
	#tag EndProperty

	#tag Property, Flags = &h0
		ClockSecondValue As Double
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
