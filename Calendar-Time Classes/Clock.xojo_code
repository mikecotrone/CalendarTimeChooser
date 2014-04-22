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
		  
		  // Minute Hand
		  mDrawClockMinuteHand (g)
		  // Hour Hand
		  mDrawClockHourHand (g)
		  // Draw Second hand
		  mDrawClockSecondHand (g)
		  
		  
		  // Draw Center Dot on the Clock Image
		  if not UseGraphicalClockHands then
		    g.ForeColor = RGB(0,0,0)
		    g.FillOval(me.Width/2-2,me.Height/2-2,5,5)
		  end if
		  
		  // Draw String AM/PM
		  If CalendarWindow.Time_Container1.Time_AMPM = "AM" Then
		    mDrawAMPM_OnClock(g,12,"Helvetica",RGB(120,120,120),"AM")
		  Elseif  CalendarWindow.Time_Container1.Time_AMPM = "PM" Then
		    mDrawAMPM_OnClock(g,12,"Helvetica",RGB(120,120,120),"PM")
		  End if
		  
		  
		  
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
		  Dim HourHand as Object2D
		  
		  if UseGraphicalClockHands then
		    HourHand = New PixmapShape(HourHandImg)
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
