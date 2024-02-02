Date and Time Chooser
=====================

Xojo Date and Time Chooser Project

Date:           November 2020

Language:       Using a mix of API 2.0 and 1.0

Author:         Mike Cotrone (mikec@vistatechgso.com)

Version:        3.0.7

Contributors:   Mike Cotrone, Norman Palardy, Axel Schneider, Jim McKay



What is this Project?
------------------

  - This project came out of a need for a professional calendar and time chooser for scheduling
  
  - Supported Time Formats are 12 and 24 hour
        
  - Professional smooth clock hand animation
  
  - Single or Multi Day calendar selection capability

  - Recurring calendar selection option
  
  
 ![image](https://github.com/IntelligentVisibility/CalendarTimeChooser/blob/master/Documentation/Screenshots/CalendarTimeChooser_SS1.png)
 ![image](https://github.com/IntelligentVisibility/CalendarTimeChooser/blob/master/Documentation/Screenshots/CalendarTimeChooser_SS2.png)


How to Use this Project?
------------------

Please read our full "How To" documentation located at:
https://github.com/IntelligentVisibility/CalendarTimeChooser/tree/master/Documentation


How to Report Issues?
------------------

Please submit bug/issues at:
https://github.com/IntelligentVisibility/CalendarTimeChooser/issues
  
  
Whats New in 3.0.8?
------------------
Fixes and Windows received alot of love!

- Fix #33: https://github.com/mikecotrone/CalendarTimeChooser/issues/33

- Fix #32: https://github.com/mikecotrone/CalendarTimeChooser/issues/32

- Fix #31: https://github.com/mikecotrone/CalendarTimeChooser/issues/31

- Fix #30: https://github.com/mikecotrone/CalendarTimeChooser/issues/30

- Fix #27: https://github.com/mikecotrone/CalendarTimeChooser/issues/27

- Fix #26: https://github.com/mikecotrone/CalendarTimeChooser/issues/26


Whats New in 3.0.6?
------------------
Fixes!
- Fixed the aesthetic issues on the calendar slots did not align well with the calendar numbers including when you clicked or mouse over (Mac / Win)
- Fixed the same aesthetic type click highlight issue on the Time Chooser
- Changed over to API2.0 for: array.ubound/ubound(), Str(), CDbl(), Array.Redim(), Dim
- Making all loops more efficient by setting the Array.LastIndex to a local variable and defining the counter var prior to the loop
- Using #PRAGMA UNUSED AREAS on paint events (Thanks Norman!)

Whats New in 3.0.5?
------------------
- Code Refactoring by Norman Palardy: Simplified the use of this project by removing the need to type two and three name spaces deep to set settings.

- Old: MyPicker.Date_Time_Container1.Calendar_Container1.Calendar1.StartYear = 2010

- New: MyPicker.StartYear = 2010

Whats New in 3.0.4?
------------------
- New Feature: Time separator flashing option
- Fixed many bugs (Check issues for detail)
- Adjusted the selected calendar day fillroundrect
- Added a mouseover drawroundrect effect
- Improved some aesthetic issues

Whats New in 3.0.3?
------------------
- Fixed many bugs (Check issues for detail)
- Added new aesthetic feature for optional calendar column separator lines

Whats New in 3.0.2?
------------------
- Added the ability to have the clock start up using a custom time
- Updated documentation

Whats New in 3.0.1?
------------------
- New numbering train to indicate refactoring changes
- Cleaned up code base removing all instance dependancy from MacOSlib
- Converted all function names using camelcase naming convention

Whats New in 2.0.3?
------------------
- Jim McKay fixed some new framework code and this project is now available for all Xojo versions

Whats New in 2.0.2?
------------------
- Added New Feature: The ability to set a custom date for the calendar initially to open with
- Updated documentation to reflect this new feature and added clarity to other sections
- Bug Fixed: #8 When you select 24 Hour time the SelectedTime event doesn't reflect the correct format
- Bug Fixed: #7 This was a bug fix that turned into a feature(see above)
  
Whats New in 2.0.1?
------------------
- Added Portuguese Localization
- Improved the separator alignment on the Date_Time_Container
- Added Cancel and Submit buttons to the DateTimeWindow for easier implementation
- Added #IF Target statements to properly display Cancel/Submit button arrangement for Windows/Mac
- Force a show DateTimeWindow after every demo option selection for a smoother demo experience

Whats New in 1.9?
-----------------
- Added the ability to use a Gradient fill for the Date/Time Chooser Window
- Added a color wheel to allow custom window color selection
- Resolved the lack of native feel when choosing / using the Clock time chooser
- Updated the "Demo Window" to reflect the Gradient fill feature

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
- Added Localizations for: English, Afrikaans, Dutch, French, German, Italian, Polish, Spanish, and Swedish
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

