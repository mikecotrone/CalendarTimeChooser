#tag Window
Begin Window DemoLaunchWindow
   BackColor       =   &cFFFFFF00
   Backdrop        =   0
   CloseButton     =   True
   Compatibility   =   ""
   Composite       =   False
   Frame           =   0
   FullScreen      =   False
   FullScreenButton=   False
   HasBackColor    =   False
   Height          =   556
   ImplicitInstance=   True
   LiveResize      =   True
   MacProcID       =   0
   MaxHeight       =   900
   MaximizeButton  =   False
   MaxWidth        =   489
   MenuBar         =   0
   MenuBarVisible  =   True
   MinHeight       =   518
   MinimizeButton  =   True
   MinWidth        =   489
   Placement       =   0
   Resizeable      =   False
   Title           =   "[Demo] Calendar / Time Chooser Project"
   Visible         =   True
   Width           =   489
   Begin TextArea TextArea1
      AcceptTabs      =   False
      Alignment       =   0
      AutoDeactivate  =   True
      AutomaticallyCheckSpelling=   False
      BackColor       =   &cFFFFFF00
      Bold            =   False
      Border          =   True
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Format          =   ""
      Height          =   137
      HelpTag         =   ""
      HideSelection   =   True
      Index           =   -2147483648
      Italic          =   False
      Left            =   0
      LimitText       =   0
      LineHeight      =   0.0
      LineSpacing     =   1.0
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Mask            =   ""
      Multiline       =   True
      ReadOnly        =   True
      Scope           =   0
      ScrollbarHorizontal=   False
      ScrollbarVertical=   True
      Styled          =   True
      TabIndex        =   0
      TabPanelIndex   =   0
      TabStop         =   True
      Text            =   ""
      TextColor       =   &c00000000
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   0
      Underline       =   False
      UseFocusRing    =   True
      Visible         =   True
      Width           =   489
   End
   Begin GroupBox GroupBox1
      AutoDeactivate  =   True
      Bold            =   False
      Caption         =   ""
      Enabled         =   True
      Height          =   396
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   5
      TabPanelIndex   =   0
      TabStop         =   True
      TextFont        =   "System"
      TextSize        =   0.0
      TextUnit        =   0
      Top             =   149
      Underline       =   False
      Visible         =   True
      Width           =   468
      Begin Label SelectChooserTypeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   5
         TabPanelIndex   =   0
         Text            =   "Select Chooser Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   158
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   154
      End
      Begin PopupMenu SelectChooserTypePopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   6
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   183
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label ChangeBackColorLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   79
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   7
         TabPanelIndex   =   0
         Text            =   "Change Window Back Color:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   237
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   175
      End
      Begin PopupMenu ClockFaceChangerPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   20
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   337
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label ClockFaceChangerLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   278
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   21
         TabPanelIndex   =   0
         Text            =   "Change Clock Face:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   311
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   153
      End
      Begin Canvas ClockIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   17
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   22
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   337
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   47
      End
      Begin Canvas GeneralIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   17
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   25
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   159
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin PopupMenu TimeModePopUpMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   79
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   28
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   337
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label TimeModeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   29
         TabPanelIndex   =   0
         Text            =   "Select Time Mode Format:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   311
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin PopupMenu UseGraphicalClockHandsPopUpMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   30
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   390
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label UseGraphicalClockHandsLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   31
         TabPanelIndex   =   0
         Text            =   "Select Clock Hand Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   366
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   207
      End
      Begin PopupMenu WeekStartType
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   77
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   34
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   452
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label WeekStartTypeLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   77
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   35
         TabPanelIndex   =   0
         Text            =   "Week Start Type:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   427
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin Canvas CalendarIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   16
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   36
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   452
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   47
      End
      Begin Label LocalizationLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   80
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   37
         TabPanelIndex   =   0
         Text            =   "Calendar Localization:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   480
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin PopupMenu LocalizationPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   78
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   38
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   504
         Underline       =   False
         Visible         =   True
         Width           =   191
      End
      Begin PopupMenu IncludePrevNextMonDaysPopUpMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   39
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   452
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Label SelectedHandColorLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   327
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   41
         TabPanelIndex   =   0
         Text            =   "h00000000"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   390
         Transparent     =   False
         Underline       =   False
         Visible         =   True
         Width           =   100
      End
      Begin Canvas ClockHandColorPickerCanvas
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   True
         Enabled         =   True
         EraseBackground =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   279
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   42
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   390
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   38
      End
      Begin Label AllowMultipleCalSelections_Label
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   278
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   43
         TabPanelIndex   =   0
         Text            =   "Allow Multiple Date Selections:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   480
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   178
      End
      Begin PopupMenu AllowMultipleDateSelections_PopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   44
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   504
         Underline       =   False
         Visible         =   True
         Width           =   191
      End
      Begin Label UseGradientFillLabel
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Italic          =   False
         Left            =   279
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Multiline       =   False
         Scope           =   0
         Selectable      =   False
         TabIndex        =   49
         TabPanelIndex   =   0
         Text            =   "Use Gradient Fill:"
         TextAlign       =   0
         TextColor       =   &c00000000
         TextFont        =   "Helvetica"
         TextSize        =   12.0
         TextUnit        =   0
         Top             =   237
         Transparent     =   True
         Underline       =   False
         Visible         =   True
         Width           =   127
      End
      Begin PopupMenu UseGradientFillPopupMenu
         AutoDeactivate  =   True
         Bold            =   False
         DataField       =   ""
         DataSource      =   ""
         Enabled         =   True
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         InitialValue    =   ""
         Italic          =   False
         Left            =   278
         ListIndex       =   0
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   50
         TabPanelIndex   =   0
         TabStop         =   True
         TextFont        =   "System"
         TextSize        =   0.0
         TextUnit        =   0
         Top             =   262
         Underline       =   False
         Visible         =   True
         Width           =   188
      End
      Begin Canvas BackGroundIcon
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   False
         Enabled         =   True
         EraseBackground =   True
         Height          =   47
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   17
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   51
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   237
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   50
      End
      Begin Canvas WindowColorPickerCanvas
         AcceptFocus     =   False
         AcceptTabs      =   False
         AutoDeactivate  =   True
         Backdrop        =   0
         DoubleBuffer    =   True
         Enabled         =   True
         EraseBackground =   False
         Height          =   20
         HelpTag         =   ""
         Index           =   -2147483648
         InitialParent   =   "GroupBox1"
         Left            =   78
         LockBottom      =   False
         LockedInPosition=   False
         LockLeft        =   True
         LockRight       =   False
         LockTop         =   True
         Scope           =   0
         TabIndex        =   52
         TabPanelIndex   =   0
         TabStop         =   True
         Top             =   262
         Transparent     =   True
         UseFocusRing    =   True
         Visible         =   True
         Width           =   159
      End
   End
   Begin Separator Separator2
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   6
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   420
      Visible         =   True
      Width           =   468
   End
   Begin Separator Separator1
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   7
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   301
      Visible         =   True
      Width           =   467
   End
   Begin Label IncludeNextPrevMonDaysLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   17
      TabPanelIndex   =   0
      Text            =   "Include Previous/Next Month Days:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   427
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   207
   End
   Begin Label GraphicalClockHandColorLabel
      AutoDeactivate  =   True
      Bold            =   False
      DataField       =   ""
      DataSource      =   ""
      Enabled         =   True
      Height          =   20
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Italic          =   False
      Left            =   278
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Multiline       =   False
      Scope           =   0
      Selectable      =   False
      TabIndex        =   18
      TabPanelIndex   =   0
      Text            =   "Choose Clock Hand Color:"
      TextAlign       =   0
      TextColor       =   &c00000000
      TextFont        =   "Helvetica"
      TextSize        =   12.0
      TextUnit        =   0
      Top             =   366
      Transparent     =   True
      Underline       =   False
      Visible         =   True
      Width           =   207
   End
   Begin Separator Separator3
      AutoDeactivate  =   True
      Enabled         =   True
      Height          =   4
      HelpTag         =   ""
      Index           =   -2147483648
      InitialParent   =   ""
      Left            =   10
      LockBottom      =   False
      LockedInPosition=   False
      LockLeft        =   True
      LockRight       =   False
      LockTop         =   True
      Scope           =   0
      TabIndex        =   19
      TabPanelIndex   =   0
      TabStop         =   True
      Top             =   219
      Visible         =   True
      Width           =   468
   End
End
#tag EndWindow

#tag WindowCode
	#tag Event
		Sub Close()
		  quit(0)
		End Sub
	#tag EndEvent


	#tag Property, Flags = &h21
		Private mMyPicker As DateTimeWindow
	#tag EndProperty

	#tag ComputedProperty, Flags = &h0
		#tag Getter
			Get
			  if mMyPicker=nil then
			    mMyPicker=new DateTimeWindow
			    mMyPicker.left =  DemoLaunchWindow.Left + DemoLaunchWindow.Width + 5
			    mMyPicker.top = DemoLaunchWindow.Top
			  End if
			  
			  return mMyPicker
			End Get
		#tag EndGetter
		#tag Setter
			Set
			  mMyPicker = value
			End Set
		#tag EndSetter
		MyPicker As DateTimeWindow
	#tag EndComputedProperty


#tag EndWindowCode

#tag Events TextArea1
	#tag Event
		Sub Open()
		  Me.Text = "Welcome to the ""Calendar and Time Chooser Project (Desktop Edition)"""+EndOfLine+EndOfLine
		  
		  Me.AppendText "This project has been tested with Xojo "+ XojoVersionString + EndOfLine+_
		  "Please feel free to use this project in your commercial and/or open source software."+EndOfLine+EndOfLine+_
		  "If you have any questions please check the ""Quick Start App Note"" or "+_
		  "email us at support@intelligentvisibility.com."+EndOfLine
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events SelectChooserTypePopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Calendar and Time")
		  me.AddRow("Calendar Only")
		  me.AddRow("Time Only")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Calendar and Time"
		    MyPicker.VisiblePickers=Date_Time_Container.PickerElements_CalendarAndClock
		  Case "Calendar Only"
		    MyPicker.VisiblePickers=Date_Time_Container.PickerElements_CalendarOnly
		  Case "Time Only"
		    MyPicker.VisiblePickers=Date_Time_Container.PickerElements_ClockOnly
		  End Select
		  
		  MyPicker.Show
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClockFaceChangerPopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Antique")
		  me.AddRow("Chrome")
		  me.AddRow("Google Style")
		  me.AddRow("Jim's Clock")
		  me.AddRow("Modern")
		  me.AddRow("Roman")
		  me.AddRow("Standard")
		  me.ListIndex = 1
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Chrome"
		    // Default Clock Face
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_Chrome
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = False
		  Case "Roman"
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_Roman
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = False
		  Case "Standard"
		    MyPicker.ClockFaceType =Date_Time_Container.ClockFaceType_Standard
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = False
		  Case "Google Style"
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_GoogleStyle
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = False
		  Case "Modern"
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_Modern
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = False
		  Case "Jim's Clock"
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_Dynamic_12hr
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM= False
		  Case "Antique"
		    MyPicker.ClockFaceType = Date_Time_Container.ClockFaceType_Antique
		    MyPicker.Date_Time_Container1.Time_Container1.HideAMPM = True
		  End Select
		  MyPicker.Show
		  
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClockIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(ClockIcon50x50,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events GeneralIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(generaloptions,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events TimeModePopUpMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("12 Hour Format")
		  me.AddRow("24 Hour Format")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "12 Hour Format"
		    MyPicker.Date_Time_Container1.Time_Container1.TimeMode = 12
		  Case "24 Hour Format"
		    MyPicker.Date_Time_Container1.Time_Container1.TimeMode = 24
		  End Select
		  
		  MyPicker.Date_Time_Container1.Time_Container1.Clock1.Invalidate(False)
		  MyPicker.Date_Time_Container1.Time_Container1.TimePicker1.Invalidate(False)
		  MyPicker.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseGraphicalClockHandsPopUpMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Graphical Clock Hands")
		  me.AddRow("Lines for Clock Hands")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Graphical Clock Hands"
		    MyPicker.UseGraphicalClockHands=True
		  Case "Lines for Clock Hands"
		    MyPicker.UseGraphicalClockHands=False
		  End Select
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WeekStartType
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Week Starts on Sunday")
		  me.AddRow("Week Starts on Monday")
		  me.ListIndex = 0
		  
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Week Starts on Sunday"
		    MyPicker.WeekStartsOnMonday = False
		  Case "Week Starts on Monday"
		    MyPicker.WeekStartsOnMonday = True
		  End Select
		  
		  MyPicker.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events CalendarIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(cal46x50,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events LocalizationPopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Afrikaans")
		  me.AddRow("Dutch")
		  me.AddRow("English")
		  me.AddRow("French")
		  me.AddRow("German")
		  me.AddRow("Italian")
		  me.AddRow("Polish")
		  me.AddRow("Portuguese")
		  me.AddRow("Spanish")
		  me.AddRow("Swedish")
		  
		  me.ListIndex = 2 // Default to English
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "English"
		    MyPicker.LocalizationInt = 0
		  Case "French"
		    MyPicker.LocalizationInt = 1
		  Case "Swedish"
		    MyPicker.LocalizationInt= 2
		  Case "Italian"
		    MyPicker.LocalizationInt = 3
		  Case "Spanish"
		    MyPicker.LocalizationInt = 4
		  Case "Dutch"
		    MyPicker.LocalizationInt = 5
		  Case "German"
		    MyPicker.LocalizationInt = 6
		  Case "Afrikaans"
		    MyPicker.LocalizationInt = 7
		  Case "Polish"
		    MyPicker.LocalizationInt = 8
		  Case "Portuguese"
		    MyPicker.LocalizationInt = 9
		  End Select
		  
		  MyPicker.Show
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events IncludePrevNextMonDaysPopUpMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("Include")
		  me.AddRow("Do NOT include")
		  me.ListIndex=0
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "Include"
		    MyPicker.IncludePrevNextMonthDays = True
		  Case "Do NOT include"
		    MyPicker.IncludePrevNextMonthDays = False
		  End Select
		  
		  MyPicker.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events ClockHandColorPickerCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim p As new Picture(me.Width,me.Height)
		  static handColor as color=MyPicker.ClockHandColor
		  if SelectColor(handColor, "Select a color for the clock hands") then
		    MyPicker.Date_Time_Container1.ClockHandColor = handColor
		    Invalidate(False)
		    dim v As Variant=handColor
		    SelectedHandColorLabel.Text=v.StringValue
		    MyPicker.Show
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = RGB(100,100,100)
		  g.PenHeight=2
		  g.PenWidth=2
		  g.DrawRoundRect(2,2,me.Width-2,me.Height-2,6,6)
		  
		  dim p As new Picture(me.Width,me.Height)
		  p.Graphics.ForeColor=MyPicker.ClockHandColor
		  //p.Graphics.FillRoundRect 0,0,41,12,6,6
		  //g.DrawPicture(p,5,5)
		  
		  p.Graphics.FillRoundRect 0,0,p.Width-6,p.Height-6,4,4
		  g.DrawPicture(p,4,4)
		  
		  
		  dim v As Variant=MyPicker.ClockHandColor
		  SelectedHandColorLabel.Text=v.StringValue
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events AllowMultipleDateSelections_PopupMenu
	#tag Event
		Sub Open()
		  // Load Popup Menu
		  me.AddRow("False")
		  me.AddRow("True")
		  
		  me.ListIndex = 0 // Default to English
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "True"
		    MyPicker.AllowMultipleCalendarSelections = True
		  Case "False"
		    MyPicker.AllowMultipleCalendarSelections = False
		  End Select
		  
		  MyPicker.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseGradientFillLabel
	#tag Event
		Sub Open()
		  #IF TargetMacOS Then
		    Me.Visible = true
		    
		  #ElseIf TargetWin32 Then
		    Me.Visible = False
		    
		  #endif
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events UseGradientFillPopupMenu
	#tag Event
		Sub Open()
		  #If TargetMacOS Then
		    // Load Popup Menu
		    Me.AddRow("False")
		    me.AddRow("True")
		    me.ListIndex = 0
		  #ElseIf TargetWin32 Then
		    Me.Visible = False
		    
		  #endif
		End Sub
	#tag EndEvent
	#tag Event
		Sub Change()
		  Select Case Me.Text
		  Case "True"
		    MyPicker.UseGradientFillWindow = True
		    MyPicker.UseGradientFillClock = True
		  Case "False"
		    MyPicker.UseGradientFillWindow =  False
		    MyPicker.UseGradientFillClock = False
		  End Select
		  
		  MyPicker.Invalidate(True)
		  MyPicker.Show
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events BackGroundIcon
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.DrawPicture(kscolor,0,0)
		End Sub
	#tag EndEvent
#tag EndEvents
#tag Events WindowColorPickerCanvas
	#tag Event
		Function MouseDown(X As Integer, Y As Integer) As Boolean
		  dim p As new Picture(me.Width,me.Height)
		  static windowBorderColor as color=MyPicker.Date_Time_Container1.BackColor
		  
		  if SelectColor(windowBorderColor, "Select a window background color") then
		    MyPicker.Date_Time_Container1.BackColor = windowBorderColor
		    MyPicker.Invalidate(True)
		    Me.Invalidate(False)
		    MyPicker.Show
		  end if
		  
		End Function
	#tag EndEvent
	#tag Event
		Sub Paint(g As Graphics, areas() As REALbasic.Rect)
		  g.ForeColor = RGB(100,100,100)
		  g.PenHeight=2
		  g.PenWidth=2
		  g.DrawRoundRect(2,2,me.Width-2,me.Height-2,6,6)
		  
		  dim p As new Picture(me.Width,me.Height)
		  p.Graphics.ForeColor=MyPicker.Date_Time_Container1.BackColor
		  
		  p.Graphics.FillRoundRect 0,0,p.Width-6,p.Height-6,4,4
		  g.DrawPicture(p,4,4)
		  
		End Sub
	#tag EndEvent
#tag EndEvents
#tag ViewBehavior
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
		Name="CloseButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Composite"
		Visible=true
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Frame"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Document"
			"1 - Movable Modal"
			"2 - Modal Dialog"
			"3 - Floating Window"
			"4 - Plain Box"
			"5 - Shadowed Box"
			"6 - Rounded Window"
			"7 - Global Floating Window"
			"8 - Sheet Window"
			"9 - Metal Window"
			"10 - Drawer Window"
			"11 - Modeless Dialog"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreen"
		Group="Appearance"
		InitialValue="False"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="FullScreenButton"
		Visible=true
		Group="Appearance"
		InitialValue="False"
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
		Name="ImplicitInstance"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Interfaces"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="LiveResize"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MacProcID"
		Visible=true
		Group="Appearance"
		InitialValue="0"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxHeight"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaximizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MaxWidth"
		Visible=true
		Group="Position"
		InitialValue="32000"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBar"
		Visible=true
		Group="Appearance"
		Type="MenuBar"
		EditorType="MenuBar"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MenuBarVisible"
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinHeight"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinimizeButton"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="MinWidth"
		Visible=true
		Group="Position"
		InitialValue="64"
		Type="Integer"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Name"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Placement"
		Visible=true
		Group="Position"
		InitialValue="0"
		Type="Integer"
		EditorType="Enum"
		#tag EnumValues
			"0 - Default"
			"1 - Parent Window"
			"2 - Main Screen"
			"3 - Parent Window Screen"
			"4 - Stagger"
		#tag EndEnumValues
	#tag EndViewProperty
	#tag ViewProperty
		Name="Resizeable"
		Visible=true
		Group="Appearance"
		InitialValue="True"
		Type="Boolean"
		EditorType="Boolean"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Super"
		Visible=true
		Group="ID"
		Type="String"
		EditorType="String"
	#tag EndViewProperty
	#tag ViewProperty
		Name="Title"
		Visible=true
		Group="Appearance"
		InitialValue="Untitled"
		Type="String"
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
		InitialValue="600"
		Type="Integer"
	#tag EndViewProperty
#tag EndViewBehavior
