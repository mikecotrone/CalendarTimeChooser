CalendarTimeChooser
===================

Xojo Calendar and Time Chooser Picklist

Date:           May 2, 2014

Language:       Xojo

Author:         Mike Cotrone (mikec@intelligentvisibility.com)

Contributors:   Jim McKay

Version:        1.8


What is this Project?

  - This project came out of a need for a professional calendar and time chooser for scheduling
  
  - The intent of this project is NOT "to be a clock". It is a Chooser of Date(s) and the time.
  
  - What are the Supported Time Formats for the time chooser picklist?
        - 12 and 24 hour time support 
        
  - Awesome Clock hand animation
  
  - Single or Multi Day selection

Whats New in 1.8?
-----------------
- Added a "Recurring" option to the time chooser

Whats New in 1.7?
-----------------
- All Bug Fixes

Whats New in 1.6?
-----------------
- Added Next / Previous Calendar Day Focus Feature.
    - When you click on the greyed days on either the previous or next month that month will then come to focus on the calendar

- Added the ability to toggle on/off multiple day selectionc capability

- Restructured additional Demo Window / DateTime Window to detach dependencies on windows while keeping dependencies on the main DateTimeContainer

- 24 hour bug fixes



Whats New in 1.5?
-----------------
- Added Localizations for: Enlish, Afrikaans, Dutch, French, German, Italian, Polish, Spanish, and Swedish
- Jim McKay spent alot of time restructuring the containers to clean up alot code flow
- Jim McKay was able to render the Clock Hands flawlessly in v1.5
- Jim McKay added the method to Sync the clock on startup with the Current Time
- Jim's Clock face is now a cool 12/24 hour clock face
- 24 Hour Mode
- Clock Hand Color Choices via Color Picker
- Streamlined Clock Faces
- Added an Antique Clock Face
- Many bug fixes

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
