CalendarTimeChooser
===================

Xojo Calendar and Time Chooser Picklist

Date:           April 22, 2014

Language:       Xojo

Author by:      Mike Cotrone (mikec@intelligentvisibility.com)

Contributors:   Jim McKay

Version:        1.5


What is this Project?

  - This project came out of a need for a professional calendar and time chooser for scheduling
  
  - What are the Supported Time Formats for the time chooser picklist?
        - 12 hour time support only
        
  - Awesome Clock hand animation


Whats New in 1.5?
-----------------
- Added Localizations for: Enlish, Afrikaans, Dutch, French, German, Italian, Spanish, and Swedish
- Jim McKay spent alot of time restructuring the containers to clean up alot code flow
- Jim McKay was able to render the Clock Hands flawlessly in v1.5

------------------------

How to Use this Project?

1 - This project consists of several container controls, custom classes, and two windows (The demo window is not required for this project to function inside of your project).

2 - Calendar Options for your convenience:
          
          a. CalendarWindow.BothPickers = [True/False]          :: This will show the both Choosers (pickers)
          
          b. CalendarWindow.CalendarPicker_Only = [True/False]  :: This will show the Calendar Chooser (picker) Only
          
          c. CalendarWindow.TimePicker = [True/False]           :: This will show the Time Chooser (picker)Only
          
          d. CalendarWindow.Calendar_Container1.Calendar1.CalMonFirstDayOfWeekBool = [True/False] :: Choose Start of Week
          
          e. CalendarWindow.Calendar_Container1.Calendar1.IncludePrevNextMonthDaysBool  = [True/False] :: Toggle Showing the Next/Previous Month Days
        
          
3 - Time/Clock Options for your convenience
          
          a. CalendarWindow.SelectClockFaceType = [0,1,2,3,4]       :: This will allow you to use different clock faces

4 - How can I EASILY get the "Results" from the user "Choosing" a date and/or a time?
         
          -  There are two custom Event Definitions that will present the selected Date and Selected Time easily

          -  Time_Container1 -> SelectedTime  ::This Event will present to you the user's selected time as string parts 
                     ie. time String parts -> (hourString, MinString, AmPmString) this will allow you maximum control on your desired final format

          -  Calendar_Container1 --> SelectedDate  :: This Event will present to you the user's selected date as a 'date'
