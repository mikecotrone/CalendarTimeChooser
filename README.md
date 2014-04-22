CalendarTimeChooser
===================

Xojo Calendar and Time Chooser Picklist

Date:           April 21, 2014
Language:       Xojo
Written by:     Mike Cotrone (mikec@intelligentvisibility.com)
Version:        1.3

What is this Project?

  - This project came out of a need for a professional calendar and time chooser for scheduling
  
  - What are the Supported Time Formats for the time chooser picklist?
        - 12 hour time support only

How to Use this Project?

1 - This project consists of several container controls, custom classes, and two windows (The demo window is not required for this project to function inside of your project).

2 - Calendar Options for your convenience:
          1. CalendarWindow.BothPickers = [True/False]          :: This will show the both Choosers (pickers)
          2. CalendarWindow.CalendarPicker_Only = [True/False]  :: This will show the Calendar Chooser (picker) Only
          3. CalendarWindow.TimePicker = [True/False]           :: This will show the Time Chooser (picker)Only
          4. CalendarWindow.Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool = [True/False] :: Choose Start of Week
          5. CalendarWindow.Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool  = [True/False] :: Toggle Showing the Next/Previous Month Days
        
          
3 - Time/Clock Options for your convenience
          1. CalendarWindow.SelectClockFaceType = [0,1,2,3,4]       :: This will allow you to use different clock faces

3 - How can I EASILY get the "Results" from the user "Choosing" a date and/or a time?
          -  I have two custom Event Definitions that will present the "chosen data" to you

          -  Time_Container1 -> SelectedTime  ::This Event will present to you the user's selected time as string parts 
                     ie. time String parts -> (hourString, MinString, AmPmString) this will allow you maximum control on your desired final format

          -  Calendar_Container1 --> SelectedDate  :: This Event will present to you the user's selected date as a 'date'
