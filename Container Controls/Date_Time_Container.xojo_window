#tag Window
Begin ContainerControl Date_Time_Container
   AcceptFocus     =   False
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &c9D9D9D00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   True
   Height          =   227
   HelpTag         =   ""
   InitialParent   =   ""
   Left            =   0
   LockBottom      =   False
   LockLeft        =   False
   LockRight       =   False
   LockTop         =   False
   TabIndex        =   0
   TabPanelIndex   =   0
   TabStop         =   True
   Top             =   0
   Transparent     =   True
   UseFocusRing    =   False
   Visible         =   True
   Width           =   394
   Begin Timer ClockSecondHandTimer
      Height          =   32
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockedInPosition=   False
      Mode            =   2
      Period          =   1000
      Scope           =   0
      TabPanelIndex   =   0
      Top             =   0
      Width           =   32
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   255
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   232
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   97
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   -1
      Visible         =   True
      Width           =   4
   End
   Begin Calendar_Container Calendar_Container1
      AcceptFocus     =   True
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      Enabled         =   True
      EraseBackground =   False
      HasBackColor    =   False
      Height          =   213
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   100
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   5
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   230
   End
   Begin Time_Container Time_Container1
      AcceptFocus     =   False
      AcceptTabs      =   True
      AutoDeactivate  =   True
      BackColor       =   &cFFFFFF00
      Backdrop        =   0
      ClockSecondsCounter=   0
      Enabled         =   True
      EraseBackground =   True
      HasBackColor    =   False
      Height          =   213
      HelpTag         =   ""
      InitialParent   =   ""
      Left            =   235
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   101
      TabPanelIndex   =   0
      TabStop         =   True
      Time_AMPM       =   "AM"
      Time_AMPM_Len   =   0
      Time_Hour       =   "12"
      Time_Hour_Len   =   0
      Time_Minute     =   "00"
      Time_Minute_Len =   0
      Top             =   5
      Transparent     =   True
      UseFocusRing    =   False
      Visible         =   True
      Width           =   156
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


	#tag Method, Flags = &h21
		Private Sub mChangeLocalizedWindowTitle()
		  If Window IsA DateTimeWindow Then
		    
		    If DemoLaunchWindow.MyPicker.VisiblePickers = Date_Time_Container.PickerElements.CalendarAndClock Then
		      TrueWindow.Title = Localized_ChooseBothTitle_Str
		      
		    Elseif DemoLaunchWindow.MyPicker.VisiblePickers = Date_Time_Container.PickerElements.CalendarOnly Then
		      TrueWindow.Title = Localized_CalendarOnlyTitle_Str
		      
		    Elseif DemoLaunchWindow.MyPicker.VisiblePickers =Date_Time_Container.PickerElements.ClockOnly Then
		      TrueWindow.Title = Localized_TimeOnlyTitle_Str
		      
		    End If
		    
		  End If
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mSetLocalization_ContainerTitle(inLocalizationInt as Integer)
		  Select Case inLocalizationInt
		  Case 0 // English
		    Localized_CalendarOnlyTitle_Str = "Choose Date"
		    Localized_ChooseBothTitle_Str = "Choose Date and Time"
		    Localized_TimeOnlyTitle_Str = "Choose Time"
		    
		  Case 1 // French
		    Localized_CalendarOnlyTitle_Str = "Choisir une date"
		    Localized_ChooseBothTitle_Str = "Choisir la date et de l'heure"
		    Localized_TimeOnlyTitle_Str = "Choisissez temps"
		    
		  Case 2 // Swedish
		    Localized_CalendarOnlyTitle_Str = "Välj datum"
		    Localized_ChooseBothTitle_Str = "Välj Datum och tid"
		    Localized_TimeOnlyTitle_Str = "Välj Tid"
		    
		  Case 3 // Italian
		    Localized_CalendarOnlyTitle_Str = "Scegli data"
		    Localized_ChooseBothTitle_Str = "Scegli data e ora"
		    Localized_TimeOnlyTitle_Str = "Scegli Ora"
		    
		  Case 4 // Spanish
		    Localized_CalendarOnlyTitle_Str = "Seleccionar fecha"
		    Localized_ChooseBothTitle_Str = "Seleccione Fecha y Hora"
		    Localized_TimeOnlyTitle_Str = "Seleccione Hora"
		    
		  Case 5 // Dutch
		    Localized_CalendarOnlyTitle_Str = "Kies Datum"
		    Localized_ChooseBothTitle_Str = "Kies de datum en tijd"
		    Localized_TimeOnlyTitle_Str = "Kies Time"
		    
		  Case 6 // German
		    Localized_CalendarOnlyTitle_Str = "Datum wählen"
		    Localized_ChooseBothTitle_Str = "Wählen Sie Datum und Uhrzeit"
		    Localized_TimeOnlyTitle_Str = "Wählen Sie Zeit"
		    
		  Case 7 // Afrikaans
		    Localized_CalendarOnlyTitle_Str = "kies Datum"
		    Localized_ChooseBothTitle_Str = "Kies Datum en Tyd"
		    Localized_TimeOnlyTitle_Str = "kies die tyd"
		    
		  Case 8 // Polish
		    Localized_CalendarOnlyTitle_Str = "Wybierz datę"
		    Localized_ChooseBothTitle_Str = "Wybierz datę i godzinę"
		    Localized_TimeOnlyTitle_Str = "Wybierz godzinę"
		  End Select
		  
		  mChangeLocalizedWindowTitle
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForBothPickers()
		  if Window isa DateTimeWindow then
		    window.Width = 394
		    window.Height = 227
		    TrueWindow.Title = Localized_ChooseBothTitle_Str
		  end if
		  
		  Calendar_Container1.Enabled = True
		  Calendar_Container1.Visible = True
		  Time_Container1.Left = 235
		  Time_Container1.Enabled = True
		  Time_Container1.Visible = True
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForCalendarPickerOnly()
		  if window isa DateTimeWindow then
		    window.Width = 230
		    window.Height = 227
		    TrueWindow.Title = Localized_CalendarOnlyTitle_Str
		  end if
		  
		  Calendar_Container1.Enabled = True
		  Calendar_Container1.Visible = True
		  Time_Container1.Enabled = False
		  Time_Container1.Visible = False
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mSetupForTimePickerOnly()
		  if window isa DateTimeWindow then
		    window.Width = 156
		    window.Height = 195
		    TrueWindow.Title = Localized_TimeOnlyTitle_Str
		  end if
		  
		  
		  Time_Container1.Enabled = True
		  Time_Container1.Visible = True
		  Time_Container1.Left = 0
		  //
		  Calendar_Container1.Enabled = False
		  Calendar_Container1.Visible = False
		  
		  
		  
		End Sub
	#tag EndMethod


	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return Time_Container1.Clock1.ClockFaceType
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Time_Container1.Clock1.ClockFaceType = value
			  if value=Date_Time_Container.ClockFaceType.Dynamic_24hr then
			    Time_Container1.Clock1.HourCount=24
			  else
			    Time_Container1.Clock1.HourCount=12
			  end if
			  me.Invalidate(false)
			End Set
		#tag EndSetter
		ClockFaceType As ClockFaceType
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool=value
			  
			  Calendar_Container1.Calendar1.Invalidate(False)
			  Calendar_Container1.Calendar1.UPDATE_MonthDays
			  Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
			End Set
		#tag EndSetter
		IncludePrevNextMonthDays As Boolean
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private MultiSelectionTest As String
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mVisiblePickers As Date_Time_Container.PickerElements
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  dim d as new date(Calendar_Container1.Calendar1.SelectedDate)
			  
			  if Time_Container1.Time_AMPM="AM" then
			    if Time_Container1.Time_Hour="12" then
			      d.Hour=0
			    else
			      d.Hour=val(Time_Container1.Time_Hour)
			    end if
			  else
			    if Time_Container1.Time_Hour="12" Then
			      d.Hour=val(Time_Container1.Time_Hour)
			    else
			      d.Hour=val(Time_Container1.Time_Hour)+12
			    end if
			  end if
			  d.Minute=val(Time_Container1.Time_Minute)
			  Return d
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Calendar_Container1.Calendar1.SelectedDate=value
			  
			  if value.Hour<12 then
			    Time_Container1.Time_AMPM="AM"
			  else
			    Time_Container1.Time_AMPM="PM"
			  end if
			  Time_Container1.Time_Minute=format(value.Minute,"00")
			  
			  if value.Hour=0 then
			    Time_Container1.Time_Hour="12"
			  elseif value.Hour>12 then
			    Time_Container1.Time_Hour=str(value.Hour-12)
			  else
			    Time_Container1.Time_Hour=str(value.Hour)
			  end if
			End Set
		#tag EndSetter
		SelectedDate As Date
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Time_Container1.Clock1.UseGraphicalClockHands
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  Time_Container1.Clock1.UseGraphicalClockHands=value
			  
			  Time_Container1.Clock1.Invalidate(false)
			End Set
		#tag EndSetter
		UseGraphicalClockHands As Boolean
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  return mVisiblePickers
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mVisiblePickers = value
			  select case value
			  case PickerElements.CalendarAndClock
			    mSetupForBothPickers
			  case PickerElements.CalendarOnly
			    mSetupForCalendarPickerOnly
			  case PickerElements.ClockOnly
			    mSetupForTimePickerOnly
			  end Select
			  self.Invalidate(false)
			End Set
		#tag EndSetter
		VisiblePickers As Date_Time_Container.PickerElements
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool=value
			  Calendar_Container1.Calendar1.UPDATE_MonthDays
			  Calendar_Container1.Calendar1.UPDATE_MapDaysToCalSlots
			  
			  Calendar_Container1.Calendar1.Invalidate(false)
			End Set
		#tag EndSetter
		WeekStartsOnMonday As Boolean
	#tag EndComputedProperty


	#tag Enum, Name = ClockFaceType, Type = Integer, Flags = &h1
		Chrome
		  Roman
		  Standard
		  GoogleStyle
		  Modern
		  Dynamic_12hr
		Dynamic_24hr
	#tag EndEnum

	#tag Enum, Name = PickerElements, Type = Integer, Flags = &h1
		CalendarOnly
		  ClockOnly
		CalendarAndClock
	#tag EndEnum


#tag EndWindowCode

#tag Events ClockSecondHandTimer
	#tag Event
		Sub Action()
		  // This controls the Clock's Second Hand
		  
		  Time_Container1.ClockSecondsCounter = Time_Container1.ClockSecondsCounter + 1
		  if Time_Container1.ClockSecondsCounter = 0 Then
		    Time_Container1.ClockSecondsCounter = -1
		  Elseif Time_Container1.ClockSecondsCounter = 60 Then
		    Time_Container1.ClockSecondsCounter = 0
		  End if
		  
		  Time_Container1.Clock1.Invalidate
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Calendar_Container1
	#tag Event
		Sub SelectedDate(inSelectedDate as Date)
		  // Use this Event to push the user's "Selected Date" to anywhere in your code.
		  // IE.   FutureScheduleAssessment_Class.FutureScheduleAssessmentDate = inSelectedDate
		  
		  // Demo Purposes - Testing Multi Day Selection
		  //MultiSelectionTest = MultiSelectionTest + inSelectedDate.ShortDate + EndOfLine
		  //MsgBox "Date(s) Selected: " + EndOfLine + MultiSelectionTest
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events Time_Container1
	#tag Event
		Sub SelectedTime(inHours as String, inMinutes as String, inAMPM as String)
		  // I decided to send the selected Time in separate string parts to allow for maximum control on formating.
		  
		  // My example Format shows a format (without quotes):     "hh:MM AM/PM"
		  
		  // Demo Purposes
		  //Dim TmpDateFormatString as String = inHours+":"+inMinutes+" "+inAMPM
		  //MsgBox "Selected Time: " + TmpDateFormatString
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
	#tag ViewProperty
		Name="AcceptFocus"
		Visible=true
		Group="Behavior"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AcceptTabs"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="AutoDeactivate"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
	#tag EndViewProperty
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
		Name="Enabled"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="EraseBackground"
		Visible=true
		Group="Behavior"
		InitialValue="True"
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
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="IncludePrevNextMonthDays"
		Group="Behavior"
		Type="Boolean"
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
		EditorType="Boolean"
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
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="UseGraphicalClockHands"
		Visible=true
		Group="Behavior"
		InitialValue="True"
		Type="Boolean"
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
		Name="WeekStartsOnMonday"
		Group="Behavior"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
