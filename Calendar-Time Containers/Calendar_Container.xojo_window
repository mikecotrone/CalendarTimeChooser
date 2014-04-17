#tag Window
Begin ContainerControl Calendar_Container
   AcceptFocus     =   True
   AcceptTabs      =   True
   AutoDeactivate  =   True
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   Compatibility   =   ""
   Enabled         =   True
   EraseBackground =   False
   HasBackColor    =   False
   Height          =   186
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
   Width           =   230
   Begin PopupMenu MonthPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   "January\rFebruary\rMarch\rApril\rMay\rJune\rJuly\rAugust\rSeptember\rOctober\rNovember\rDecember"
      Italic          =   False
      Left            =   20
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      Visible         =   True
      Width           =   85
   End
   Begin PopupMenu YearPopup
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      InitialValue    =   ""
      Italic          =   False
      Left            =   108
      ListIndex       =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   1
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   4
      Underline       =   False
      Visible         =   True
      Width           =   58
   End
   Begin PushButton PreviousMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   "<"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   171
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   2
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin PushButton CurrentMonthButton
      AutoDeactivate  =   True
      Bold            =   False
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ""
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   187
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   3
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   11.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   18
   End
   Begin PushButton NextMonthButton
      AutoDeactivate  =   True
      Bold            =   True
      ButtonStyle     =   "4"
      Cancel          =   False
      Caption         =   ">"
      Default         =   False
      Enabled         =   True
      Height          =   18
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   205
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Scope           =   0
      TabIndex        =   4
      TabPanelIndex   =   0
      TabStop         =   False
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   2
      Underline       =   False
      Visible         =   True
      Width           =   16
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   1
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   30
      Visible         =   True
      Width           =   231
   End
   Begin BevelButton CalendarBevelButton0
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton6
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   1
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   1
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton5
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   154
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   8
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton4
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   127
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   9
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton3
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   101
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   10
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton2
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   11
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton1
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   12
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   56
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton7
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   13
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton8
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   14
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton9
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   15
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton10
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   101
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   16
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton11
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   17
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton12
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   154
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   18
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton13
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   77
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton14
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   20
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton15
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   21
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton16
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   22
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton17
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   101
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   23
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton18
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   24
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton19
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   154
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   25
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton20
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   26
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   98
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton21
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   27
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton22
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   28
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton23
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   29
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton24
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   101
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   30
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton25
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   31
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton26
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   154
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   32
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton27
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   33
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   119
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton28
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   34
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton29
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   35
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton30
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   74
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   36
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton31
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   101
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   37
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton32
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   128
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   38
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton33
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   154
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   39
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton34
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   181
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   40
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   140
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton35
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   20
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   41
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   161
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin BevelButton CalendarBevelButton36
      AcceptFocus     =   False
      AutoDeactivate  =   True
      BackColor       =   &c00000000
      Bevel           =   0
      Bold            =   False
      ButtonType      =   1
      Caption         =   ""
      CaptionAlign    =   3
      CaptionDelta    =   0
      CaptionPlacement=   1
      Enabled         =   True
      HasBackColor    =   False
      HasMenu         =   0
      Height          =   22
      HelpTag         =   ""
      Icon            =   0
      IconAlign       =   0
      IconDX          =   0
      IconDY          =   0
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   47
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      MenuValue       =   0
      Scope           =   0
      TabIndex        =   42
      TabPanelIndex   =   0
      TabStop         =   False
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   10.0
      TextUnit        =   0
      Top             =   161
      Underline       =   False
      Value           =   False
      Visible         =   True
      Width           =   28
   End
   Begin Label Label1
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   7
      InitialParent   =   ""
      Italic          =   False
      Left            =   22
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   44
      TabPanelIndex   =   0
      Text            =   "Su"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label2
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   8
      InitialParent   =   ""
      Italic          =   False
      Left            =   49
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   45
      TabPanelIndex   =   0
      Text            =   "Mo"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label3
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   9
      InitialParent   =   ""
      Italic          =   False
      Left            =   76
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   46
      TabPanelIndex   =   0
      Text            =   "Tu"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label4
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   10
      InitialParent   =   ""
      Italic          =   False
      Left            =   103
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   47
      TabPanelIndex   =   0
      Text            =   "We"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label5
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   11
      InitialParent   =   ""
      Italic          =   False
      Left            =   130
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   48
      TabPanelIndex   =   0
      Text            =   "Th"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label6
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   12
      InitialParent   =   ""
      Italic          =   False
      Left            =   157
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   49
      TabPanelIndex   =   0
      Text            =   "Fr"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
   Begin Label Label7
      AutoDeactivate  =   True
      Bold            =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   16
      HelpTag         =   ""
      Index           =   13
      InitialParent   =   ""
      Italic          =   False
      Left            =   184
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   False
      LockRight       =   False
      LockTop         =   False
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   50
      TabPanelIndex   =   0
      Text            =   "Sa"
      TextAlign       =   1
      TextColor       =   &cFFFFFF00
      TextFont        =   "Helvetica Neue"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   35
      Transparent     =   False
      Underline       =   False
      Visible         =   True
      Width           =   25
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Open()
		  TodaysDate = New Date
		  
		  mSelectedDate=new date
		  mSelectedDate.TotalSeconds = GetDate(mSelectedDate)
		  
		  StartYear = TodaysDate.Year
		  EndYear = 2040
		  LoadYearPopup
		  
		  If CalButtonArray.Ubound = -1 Then
		    mCreateCalButtonArray
		  End if
		  mUpdate
		  
		  mDepressTodaysDate
		  
		  
		End Sub
	#tag EndEvent


	#tag Method, Flags = &h21
		Private Function fConvertMonthToInt(inMonth as String) As Integer
		  Select Case inMonth
		    
		  Case "January"
		    Return 1
		  Case "February"
		    Return 2
		  Case "March"
		    Return 3
		  Case "April"
		    Return 4
		  Case "May"
		    Return 5
		  Case "June"
		    Return 6
		  Case "July"
		    Return 7
		  Case "August"
		    Return 8
		  Case "September"
		    Return 9
		  Case "October"
		    Return 10
		  Case "November"
		    Return 11
		  Case "December"
		    Return 12
		  End Select
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Function fValidAvailableDay(inCalButtonIndex as Integer) As Boolean
		  if CDbl(YearPopup.Text) =  TodaysDate.Year Then // Selected the Current Year
		    
		    Dim SelectedMonthInt as Integer = fConvertMonthToInt(MonthPopup.Text)
		    if SelectedMonthInt > TodaysDate.Month Then // User Selected Future Month which is OK
		      //Method to Uncheck Every other date button except the one you have just pressed since we never want two buttons pressed at once
		      Return True
		      
		    Elseif SelectedMonthInt < TodaysDate.Month Then // User Selected Previous Month which is NOT OK since we don't have a time machine
		      Return False
		      
		    Elseif SelectedMonthInt = TodaysDate.Month Then // We in the SAME month
		      
		      dim DaySelected as Integer = inCalButtonIndex-1
		      if DaySelected  < TodaysDate.Day Then //User is trying to pick a day before today
		        Return False
		      Else
		        Return True
		      End if
		      
		    Elseif CDbl(YearPopup.Text) > TodaysDate.Year Then // Selected a Future Year
		      Return True
		      
		    End if
		    
		  Else
		    Return True
		    
		  End if
		End Function
	#tag EndMethod

	#tag Method, Flags = &h0
		Function GetDate(d As Date) As Double
		  mSelectedDate = New Date
		  mSelectedDate.TotalSeconds = d.Totalseconds
		  mSelectedDate.Day = TodaysDate.Day
		  
		  If CalButtonArray.Ubound = -1 Then
		    mCreateCalButtonArray
		  End if
		  mUpdate
		  
		  Return mSelectedDate.TotalSeconds
		End Function
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub LoadYearPopup()
		  YearPopup.DeleteAllRows
		  For i As Integer = StartYear To EndYear
		    YearPopup.AddRow(Str(i))
		    YearPopup.ListIndex=0
		  Next
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mAction(inCaption as String, inCalButtonIndex as Integer)
		  mSelectedDate.Day = CDbl(inCaption)
		  
		  CalendarWindow.Calendar_Container1.mRaiseEvent_SelectedDate(mSelectedDate)
		  
		  // First detect if we are in the current Year or a Future year (we don't allow previous years to be selected)
		  if CDbl(YearPopup.Text) =  TodaysDate.Year Then // Selected the Current Year
		    
		    Dim SelectedMonthInt as Integer = fConvertMonthToInt(MonthPopup.Text)
		    if SelectedMonthInt > TodaysDate.Month Then // User Selected Future Month which is OK
		      //Method to Uncheck Every other date button except the one you have just pressed since we never want two buttons pressed at once
		      mDeSelector(inCalButtonIndex)
		      
		    Elseif SelectedMonthInt < TodaysDate.Month Then // User Selected Previous Month which is NOT OK since we don't have a time machine
		      MsgBox "You must select today or a future date to schedule"
		      CalButtonArray(inCalButtonIndex).Value = False
		      Return
		      
		    Elseif SelectedMonthInt = TodaysDate.Month Then // We in the SAME month
		      //Method to Uncheck Every other date button except the one you have just pressed since we never want two buttons pressed at once
		      mDeSelector(inCalButtonIndex)
		      
		      dim DaySelected as Integer = inCalButtonIndex-1
		      if DaySelected  < TodaysDate.Day Then //User is trying to pick a day before today
		        MsgBox "You must select today or a future date to schedule"
		        CalButtonArray(inCalButtonIndex).Value = False
		        Return
		      End if
		      
		    Elseif CDbl(YearPopup.Text) > TodaysDate.Year Then // Selected a Future Year
		      
		    End if
		    
		  Else
		    //Method to Uncheck Every other date button except the one you have just pressed since we never want two buttons pressed at once
		    mDeSelector(inCalButtonIndex)
		    
		  End if
		  
		  
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mCreateCalButtonArray()
		  CalButtonArray.Append CalendarBevelButton0
		  CalButtonArray.Append CalendarBevelButton1
		  CalButtonArray.Append CalendarBevelButton2
		  CalButtonArray.Append CalendarBevelButton3
		  CalButtonArray.Append CalendarBevelButton4
		  CalButtonArray.Append CalendarBevelButton5
		  CalButtonArray.Append CalendarBevelButton6
		  CalButtonArray.Append CalendarBevelButton7
		  CalButtonArray.Append CalendarBevelButton8
		  CalButtonArray.Append CalendarBevelButton9
		  CalButtonArray.Append CalendarBevelButton10
		  CalButtonArray.Append CalendarBevelButton11
		  CalButtonArray.Append CalendarBevelButton12
		  CalButtonArray.Append CalendarBevelButton13
		  CalButtonArray.Append CalendarBevelButton14
		  CalButtonArray.Append CalendarBevelButton15
		  CalButtonArray.Append CalendarBevelButton16
		  CalButtonArray.Append CalendarBevelButton17
		  CalButtonArray.Append CalendarBevelButton18
		  CalButtonArray.Append CalendarBevelButton19
		  CalButtonArray.Append CalendarBevelButton20
		  CalButtonArray.Append CalendarBevelButton21
		  CalButtonArray.Append CalendarBevelButton22
		  CalButtonArray.Append CalendarBevelButton23
		  CalButtonArray.Append CalendarBevelButton24
		  CalButtonArray.Append CalendarBevelButton25
		  CalButtonArray.Append CalendarBevelButton26
		  CalButtonArray.Append CalendarBevelButton27
		  CalButtonArray.Append CalendarBevelButton28
		  CalButtonArray.Append CalendarBevelButton29
		  CalButtonArray.Append CalendarBevelButton30
		  CalButtonArray.Append CalendarBevelButton31
		  CalButtonArray.Append CalendarBevelButton32
		  CalButtonArray.Append CalendarBevelButton33
		  CalButtonArray.Append CalendarBevelButton34
		  CalButtonArray.Append CalendarBevelButton35
		  CalButtonArray.Append CalendarBevelButton36
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mDepressTodaysDate()
		  // Auto Select Today'sDate
		  Dim SelectedMonthInt as Integer = fConvertMonthToInt(MonthPopup.Text)
		  if SelectedMonthInt = TodaysDate.Month Then
		    for i as integer = 0 to UBound(CalButtonArray)
		      if i = TodaysDate.Day Then // Matched Today
		        CalButtonArray(i+1).Value = True
		        CalButtonArray(i+1).Bold = True
		        CalButtonArray(i+1).TextColor = &c0000FF
		      End if
		    Next i
		    
		  End if
		  
		  CalendarWindow.Calendar_Container1.mRaiseEvent_SelectedDate(mSelectedDate)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mDeSelector(inCalButtonIndex as Integer)
		  for i as integer = 0 to UBound(CalButtonArray)
		    if i = inCalButtonIndex Then
		      // Do not change value since this is the button you just pressed
		    Else
		      CalButtonArray(i).Value = False
		    end if
		  Next i
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mGreyOutNonAvailableDays()
		  Dim IsDayValid as Boolean
		  For i as integer= 0 to UBound(CalButtonArray)
		    IsDayValid = fValidAvailableDay(i)
		    if IsDayValid = False Then
		      CalButtonArray(i).Enabled = False
		    Elseif IsDayValid = True Then
		      CalButtonArray(i).Enabled = True
		    end if
		  Next i
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h0
		Sub mRaiseEvent_SelectedDate(inSelectedDate as Date)
		  RaiseEvent SelectedDate(InSelectedDate)
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mShowOrHideCalendarDayButtons()
		  Dim dayNum As Integer
		  For x As Integer = 0 To UBound(CalButtonArray)
		    DayNum = x + 4 - SelectedDayOfWeek
		    If dayNum > 0 And dayNum <= monthDays Then
		      CalButtonArray(x).Caption = Str(dayNum)
		      CalButtonArray(x).TextSize = 10
		      CalButtonArray(x).Visible = True
		      CalButtonArray(x).Bold = False
		      //CalButtonArray(x).TextColor = RGB(0,0,0)
		    Else
		      CalButtonArray(x).Visible = False
		    End If
		  Next x
		  
		End Sub
	#tag EndMethod

	#tag Method, Flags = &h21
		Private Sub mUpdate()
		  MonthPopup.ListIndex = mSelectedDate.Month-1
		  
		  If mSelectedDate.Year >= StartYear And mSelectedDate.Year <= EndYear Then
		    YearPopup.ListIndex = mSelectedDate.Year-StartYear
		  ElseIf mSelectedDate.Year > EndYear Then
		    YearPopup.ListIndex = YearPopup.ListCount-1
		  Else
		    YearPopup.ListIndex = 0
		  End If
		  
		  //find how many days in this month
		  Select Case mSelectedDate.Month
		  Case 1, 3, 5, 7, 8, 10, 12
		    monthDays = 31
		  Case 4, 6, 9, 11
		    monthDays = 30
		  Case Else
		    
		    // Calculate Leap year
		    If (mSelectedDate.Year / 4.0) = Floor(mSelectedDate.Year / 4.0) Then
		      monthDays = 29 // Leap year
		    Else
		      monthDays = 28
		    End If
		  End Select
		  
		  // Update all the captions of the buttons and hide as appropriate
		  mShowOrHideCalendarDayButtons
		  // Disable Days that are in the Past
		  mGreyOutNonAvailableDays
		End Sub
	#tag EndMethod


	#tag Hook, Flags = &h0
		Event SelectedDate(inSelectedDate as Date)
	#tag EndHook


	#tag Property, Flags = &h0
		CalButtonArray() As BevelButton
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mEndYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mEndYear = value
			  
			  LoadYearPopup
			End Set
		#tag EndSetter
		EndYear As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private mEndYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private monthDays As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelectedDate As Date
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mSelectedDayOfWeek As Integer
	#tag EndProperty

	#tag Property, Flags = &h21
		Private mStartYear As Integer
	#tag EndProperty

	#tag Property, Flags = &h0
		PressedCalButtonArray() As BevelButton
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mSelectedDate.DayOfWeek
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  
			  
			End Set
		#tag EndSetter
		SelectedDayOfWeek As Integer
	#tag EndComputedProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  Return mStartYear
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mStartYear = value
			  
			  LoadYearPopup
			End Set
		#tag EndSetter
		StartYear As Integer
	#tag EndComputedProperty

	#tag Property, Flags = &h21
		Private TodaysDate As Date
	#tag EndProperty


#tag EndWindowCode

#tag Events MonthPopup
	#tag Event
		Sub Change()
		  mSelectedDate.Month = Me.ListIndex + 1
		  mUpdate
		  
		  for i as integer = 0 to UBound(CalButtonArray)
		    CalButtonArray(i).Value = False
		  Next i
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events YearPopup
	#tag Event
		Sub Change()
		  mSelectedDate.Year = Val(Me.Text)
		  mUpdate
		  
		  for i as integer = 0 to UBound(CalButtonArray)
		    CalButtonArray(i).Value = False
		  Next i
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events PreviousMonthButton
	#tag Event
		Sub Action()
		  //User wants to back up a month
		  //If not at limits of dates(Jan,1904) then do it
		  
		  Dim m,y As Integer
		  
		  m = MonthPopup.ListIndex + 1
		  y = Val(YearPopup.Text)
		  
		  If m = 1 And y > StartYear Then
		    YearPopup.ListIndex = YearPopup.ListIndex - 1
		    MonthPopup.ListIndex = 11
		  Elseif m > 1 Then
		    MonthPopup.ListIndex = MonthPopup.ListIndex - 1
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CurrentMonthButton
	#tag Event
		Sub Action()
		  //mSelectedDate = New date
		  //mSelectedDate.Day = 1
		  //mSelectedDate.TotalSeconds = mSelectedDate.TotalSeconds
		  
		  mSelectedDate = New Date
		  mSelectedDate.TotalSeconds = mSelectedDate.TotalSeconds
		  mSelectedDate.Day = TodaysDate.Day
		  mUpdate
		  mDepressTodaysDate
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
	#tag Event
		Sub Open()
		  Me.TextSize = 30
		  Me.Caption = Chr(8226)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events NextMonthButton
	#tag Event
		Sub Action()
		  //User wants to advance a month
		  //If not at limits of dates(dec,2039) then do it
		  
		  Dim m, y As Integer
		  
		  m = MonthPopup.ListIndex + 1
		  y = Val(YearPopup.Text)
		  
		  If m = 12 And y < EndYear Then
		    YearPopup.ListIndex = YearPopup.ListIndex + 1
		    MonthPopup.ListIndex = 0
		  ElseIf m < 12 Then
		    MonthPopup.ListIndex = MonthPopup.ListIndex + 1
		  End If
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton0
	#tag Event
		Sub Action()
		  mAction(Me.Caption,0)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton6
	#tag Event
		Sub Action()
		  mAction(me.Caption,6)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton5
	#tag Event
		Sub Action()
		  mAction(me.Caption,5)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton4
	#tag Event
		Sub Action()
		  mAction(me.Caption,4)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton3
	#tag Event
		Sub Action()
		  mAction(me.Caption,3)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton2
	#tag Event
		Sub Action()
		  mAction(me.Caption,2)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton1
	#tag Event
		Sub Action()
		  mAction(me.Caption,1)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton7
	#tag Event
		Sub Action()
		  mAction(me.Caption,7)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton8
	#tag Event
		Sub Action()
		  mAction(me.Caption,8)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton9
	#tag Event
		Sub Action()
		  mAction(me.Caption,9)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton10
	#tag Event
		Sub Action()
		  mAction(me.Caption,10)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton11
	#tag Event
		Sub Action()
		  mAction(me.Caption,11)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton12
	#tag Event
		Sub Action()
		  mAction(me.Caption,12)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton13
	#tag Event
		Sub Action()
		  mAction(me.Caption,13)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton14
	#tag Event
		Sub Action()
		  mAction(me.Caption,14)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton15
	#tag Event
		Sub Action()
		  mAction(me.Caption,15)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton16
	#tag Event
		Sub Action()
		  mAction(me.Caption,16)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton17
	#tag Event
		Sub Action()
		  mAction(me.Caption,17)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton18
	#tag Event
		Sub Action()
		  mAction(me.Caption,18)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton19
	#tag Event
		Sub Action()
		  mAction(me.Caption,19)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton20
	#tag Event
		Sub Action()
		  mAction(me.Caption,20)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton21
	#tag Event
		Sub Action()
		  mAction(me.Caption,21)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton22
	#tag Event
		Sub Action()
		  mAction(me.Caption,22)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton23
	#tag Event
		Sub Action()
		  mAction(me.Caption,23)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton24
	#tag Event
		Sub Action()
		  mAction(me.Caption,24)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton25
	#tag Event
		Sub Action()
		  mAction(me.Caption,25)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton26
	#tag Event
		Sub Action()
		  mAction(me.Caption,26)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton27
	#tag Event
		Sub Action()
		  mAction(me.Caption,27)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton28
	#tag Event
		Sub Action()
		  mAction(me.Caption,28)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton29
	#tag Event
		Sub Action()
		  mAction(me.Caption,29)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton30
	#tag Event
		Sub Action()
		  mAction(me.Caption,30)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton31
	#tag Event
		Sub Action()
		  mAction(me.Caption,31)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton32
	#tag Event
		Sub Action()
		  mAction(me.Caption,32)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton33
	#tag Event
		Sub Action()
		  mAction(me.Caption,33)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton34
	#tag Event
		Sub Action()
		  mAction(me.Caption,34)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton35
	#tag Event
		Sub Action()
		  mAction(me.Caption,35)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
	#tag EndEvent
#tag EndEvents
#tag Events CalendarBevelButton36
	#tag Event
		Sub Action()
		  mAction(me.Caption,36)
		End Sub
	#tag EndEvent
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  Me.SetFocus
		End Function
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
		Name="EndYear"
		Group="Behavior"
		Type="Integer"
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
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="HelpTag"
		Visible=true
		Group="Appearance"
		Type="String"
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
		Name="SelectedDayOfWeek"
		Group="Behavior"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="StartYear"
		Group="Behavior"
		Type="Integer"
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
		Name="Visible"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Width"
		Visible=true
		Group="Position"
		InitialValue="300"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
