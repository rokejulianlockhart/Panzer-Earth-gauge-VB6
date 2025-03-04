VERSION 5.00
Object = "{BCE37951-37DF-4D69-A8A3-2CFABEE7B3CC}#1.0#0"; "CCRSlider.ocx"
Begin VB.Form panzerEarthPrefs 
   AutoRedraw      =   -1  'True
   Caption         =   "Panzer Earth Preferences"
   ClientHeight    =   10650
   ClientLeft      =   60
   ClientTop       =   345
   ClientWidth     =   8970
   Icon            =   "frmPrefs.frx":0000
   LinkTopic       =   "Form2"
   ScaleHeight     =   10800
   ScaleMode       =   0  'User
   ScaleWidth      =   8970
   StartUpPosition =   3  'Windows Default
   Visible         =   0   'False
   Begin VB.Timer positionTimer 
      Interval        =   10000
      Left            =   1155
      Top             =   9705
   End
   Begin VB.CheckBox chkEnableResizing 
      Caption         =   "Enable Corner Resize"
      Height          =   210
      Left            =   3225
      TabIndex        =   146
      Top             =   10125
      Width           =   2250
   End
   Begin VB.Frame fraAboutButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   7695
      TabIndex        =   113
      Top             =   0
      Width           =   975
      Begin VB.Label lblAbout 
         Caption         =   "About"
         Height          =   240
         Left            =   255
         TabIndex        =   114
         Top             =   855
         Width           =   615
      End
      Begin VB.Image imgAbout 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":10CA
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgAboutClicked 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":1652
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.Frame fraConfigButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   1215
      TabIndex        =   46
      Top             =   -15
      Width           =   930
      Begin VB.Label lblConfig 
         Caption         =   "Config."
         Height          =   240
         Index           =   0
         Left            =   270
         TabIndex        =   47
         Top             =   855
         Width           =   510
      End
      Begin VB.Image imgConfig 
         Height          =   600
         Left            =   165
         Picture         =   "frmPrefs.frx":1B3D
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgConfigClicked 
         Height          =   600
         Left            =   165
         Picture         =   "frmPrefs.frx":211C
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.Frame fraDevelopmentButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   5490
      TabIndex        =   44
      Top             =   0
      Width           =   1065
      Begin VB.Label lblDevelopment 
         Caption         =   "Development"
         Height          =   240
         Left            =   45
         TabIndex        =   45
         Top             =   855
         Width           =   960
      End
      Begin VB.Image imgDevelopment 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":2617
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgDevelopmentClicked 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":2BCF
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.Frame fraPositionButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   4410
      TabIndex        =   42
      Top             =   0
      Width           =   930
      Begin VB.Label lblPosition 
         Caption         =   "Position"
         Height          =   240
         Index           =   0
         Left            =   180
         TabIndex        =   43
         Top             =   855
         Width           =   615
      End
      Begin VB.Image imgPosition 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":2F55
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgPositionClicked 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":3526
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.CommandButton btnSave 
      Caption         =   "&Save"
      Enabled         =   0   'False
      Height          =   360
      Left            =   6060
      Style           =   1  'Graphical
      TabIndex        =   6
      ToolTipText     =   "Save the changes you have made to the preferences"
      Top             =   10020
      Width           =   1320
   End
   Begin VB.CommandButton btnHelp 
      Caption         =   "Help"
      Height          =   360
      Left            =   120
      Style           =   1  'Graphical
      TabIndex        =   38
      ToolTipText     =   "Open the help utility"
      Top             =   10035
      Width           =   1320
   End
   Begin VB.Frame fraSoundsButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   3315
      TabIndex        =   11
      Top             =   -15
      Width           =   930
      Begin VB.Label lblSounds 
         Caption         =   "Sounds"
         Height          =   240
         Left            =   210
         TabIndex        =   12
         Top             =   870
         Width           =   615
      End
      Begin VB.Image imgSounds 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":38C4
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgSoundsClicked 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":3E83
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.Timer themeTimer 
      Enabled         =   0   'False
      Interval        =   10000
      Left            =   660
      Top             =   9705
   End
   Begin VB.CommandButton btnCancel 
      Caption         =   "&Close"
      Height          =   360
      Left            =   7440
      Style           =   1  'Graphical
      TabIndex        =   7
      ToolTipText     =   "Close the utility"
      Top             =   10020
      Width           =   1320
   End
   Begin VB.Frame fraWindowButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   6615
      TabIndex        =   4
      Top             =   0
      Width           =   975
      Begin VB.Label lblWindow 
         Caption         =   "Window"
         Height          =   240
         Left            =   180
         TabIndex        =   5
         Top             =   855
         Width           =   615
      End
      Begin VB.Image imgWindow 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":42C2
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgWindowClicked 
         Height          =   600
         Left            =   160
         Picture         =   "frmPrefs.frx":478C
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
   End
   Begin VB.Frame fraFontsButton 
      BorderStyle     =   0  'None
      Height          =   1140
      Left            =   2280
      TabIndex        =   2
      Top             =   0
      Width           =   930
      Begin VB.Label lblFonts 
         Caption         =   "Fonts"
         Height          =   240
         Left            =   270
         TabIndex        =   3
         Top             =   855
         Width           =   510
      End
      Begin VB.Image imgFonts 
         Height          =   600
         Left            =   180
         Picture         =   "frmPrefs.frx":4B38
         Stretch         =   -1  'True
         Top             =   195
         Width           =   600
      End
      Begin VB.Image imgFontsClicked 
         Height          =   600
         Left            =   180
         Picture         =   "frmPrefs.frx":508E
         Stretch         =   -1  'True
         Top             =   195
         Width           =   600
      End
   End
   Begin VB.Frame fraGeneralButton 
      Height          =   1140
      Left            =   240
      TabIndex        =   0
      Top             =   -15
      Width           =   930
      Begin VB.Label lblGeneral 
         Caption         =   "General"
         Height          =   240
         Index           =   0
         Left            =   195
         TabIndex        =   1
         Top             =   855
         Width           =   705
      End
      Begin VB.Image imgGeneral 
         Height          =   600
         Left            =   165
         Picture         =   "frmPrefs.frx":5527
         Stretch         =   -1  'True
         Top             =   225
         Width           =   600
      End
      Begin VB.Image imgGeneralClicked 
         Height          =   600
         Left            =   165
         Picture         =   "frmPrefs.frx":5983
         Stretch         =   -1  'True
         Top             =   240
         Width           =   600
      End
   End
   Begin VB.Frame fraConfig 
      Caption         =   "Configuration"
      Height          =   4785
      Left            =   240
      TabIndex        =   8
      Top             =   1200
      Width           =   7140
      Begin VB.Frame fraConfigInner 
         BorderStyle     =   0  'None
         Height          =   4215
         Left            =   435
         TabIndex        =   34
         Top             =   435
         Width           =   6450
         Begin VB.CheckBox chkShowTaskbar 
            Caption         =   "Show Widget in Taskbar"
            Height          =   225
            Left            =   2010
            TabIndex        =   155
            ToolTipText     =   "Check the box to show the widget in the taskbar"
            Top             =   3735
            Width           =   3405
         End
         Begin VB.ComboBox cmbScrollWheelDirection 
            Height          =   315
            ItemData        =   "frmPrefs.frx":5C56
            Left            =   1995
            List            =   "frmPrefs.frx":5C58
            Style           =   2  'Dropdown List
            TabIndex        =   90
            ToolTipText     =   "To change the direction of the mouse scroll wheel when resiziing the globe gauge."
            Top             =   1695
            Width           =   2490
         End
         Begin VB.Frame fraAllowShutdowns 
            BorderStyle     =   0  'None
            Height          =   1245
            Left            =   1425
            TabIndex        =   40
            Top             =   5370
            Width           =   4575
            Begin VB.Label lblConfigurationTab 
               Height          =   660
               Index           =   8
               Left            =   270
               TabIndex        =   41
               Top             =   525
               Width           =   3720
            End
         End
         Begin VB.CheckBox chkEnableBalloonTooltips 
            Caption         =   "Enable Balloon Tooltips on all Controls *"
            Height          =   225
            Left            =   2010
            TabIndex        =   39
            ToolTipText     =   "Check the box to enable larger balloon tooltips for all controls on the main program"
            Top             =   3345
            Width           =   3405
         End
         Begin VB.CheckBox chkEnableTooltips 
            Caption         =   "Enable Tooltips on all Controls"
            Height          =   225
            Left            =   2010
            TabIndex        =   35
            ToolTipText     =   "Check the box to enable tooltips for all controls on the main program"
            Top             =   2910
            Width           =   3345
         End
         Begin vb6projectCCRSlider.Slider sliGaugeSize 
            Height          =   390
            Left            =   1920
            TabIndex        =   107
            ToolTipText     =   "Adjust to a percentage of the original size. You can also use Ctrl+Mousewheel."
            Top             =   60
            Width           =   3870
            _ExtentX        =   6826
            _ExtentY        =   688
            Min             =   5
            Max             =   220
            Value           =   100
            TickFrequency   =   6
            SelStart        =   20
         End
         Begin VB.Label lblConfiguration 
            Caption         =   "The scroll-wheel resizing direction can be determined here. The direction chosen causes the gauge to grow. *"
            Height          =   660
            Index           =   6
            Left            =   2025
            TabIndex        =   134
            Top             =   2145
            Width           =   3930
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "180"
            Height          =   315
            Index           =   4
            Left            =   4770
            TabIndex        =   94
            Top             =   555
            Width           =   345
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "130"
            Height          =   315
            Index           =   3
            Left            =   3990
            TabIndex        =   93
            Top             =   555
            Width           =   345
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "50"
            Height          =   315
            Index           =   1
            Left            =   2730
            TabIndex        =   92
            Top             =   555
            Width           =   345
         End
         Begin VB.Label lblConfiguration 
            Caption         =   "Mouse Wheel Resize :"
            Height          =   345
            Index           =   3
            Left            =   255
            TabIndex        =   91
            ToolTipText     =   "To change the direction of the mouse scroll wheel when resiziing the globe gauge."
            Top             =   1740
            Width           =   2055
         End
         Begin VB.Label lblConfiguration 
            Caption         =   "Adjust to a percentage of the original size. You can also use Ctrl+Mousewheel. Immediate. *"
            Height          =   555
            Index           =   2
            Left            =   2070
            TabIndex        =   89
            ToolTipText     =   "Adjust to a percentage of the original size. You can also use Ctrl+Mousewheel."
            Top             =   870
            Width           =   3810
         End
         Begin VB.Label lblConfiguration 
            Caption         =   "Gauge Size :"
            Height          =   315
            Index           =   1
            Left            =   885
            TabIndex        =   88
            Top             =   105
            Width           =   975
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "90"
            Height          =   315
            Index           =   2
            Left            =   3345
            TabIndex        =   87
            Top             =   555
            Width           =   840
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "220 (%)"
            Height          =   315
            Index           =   5
            Left            =   5385
            TabIndex        =   86
            Top             =   555
            Width           =   735
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "5"
            Height          =   315
            Index           =   0
            Left            =   1980
            TabIndex        =   85
            Top             =   555
            Width           =   345
         End
      End
   End
   Begin VB.Frame fraFonts 
      Caption         =   "Fonts"
      Height          =   3615
      Left            =   240
      TabIndex        =   9
      Top             =   1230
      Width           =   7335
      Begin VB.Frame fraFontsInner 
         BorderStyle     =   0  'None
         Height          =   3060
         Left            =   765
         TabIndex        =   26
         Top             =   285
         Width           =   6105
         Begin VB.TextBox txtPrefsFontCurrentSize 
            Height          =   315
            Left            =   4125
            Locked          =   -1  'True
            TabIndex        =   147
            ToolTipText     =   "Disabled for manual input. Shows the current font size when form resizing is enabled."
            Top             =   1065
            Visible         =   0   'False
            Width           =   600
         End
         Begin VB.TextBox txtPrefsFontSize 
            Height          =   315
            Left            =   1635
            Locked          =   -1  'True
            TabIndex        =   29
            Text            =   "8"
            ToolTipText     =   "Disabled for manual input. Choose a font size using the font selector to be used within this preferences window only"
            Top             =   1065
            Width           =   510
         End
         Begin VB.CommandButton btnPrefsFont 
            Caption         =   "Font"
            Height          =   300
            Left            =   4950
            Style           =   1  'Graphical
            TabIndex        =   28
            ToolTipText     =   "The Font Selector."
            Top             =   90
            Width           =   585
         End
         Begin VB.TextBox txtPrefsFont 
            Height          =   315
            Left            =   1635
            Locked          =   -1  'True
            TabIndex        =   27
            Text            =   "Times New Roman"
            ToolTipText     =   "Disabled for manual input. Choose a font via the font selector to be used only for this preferences window"
            Top             =   90
            Width           =   3285
         End
         Begin VB.Label lblCurrentFontsTab 
            Caption         =   "Current font"
            Height          =   315
            Left            =   4875
            TabIndex        =   148
            ToolTipText     =   "Disabled for manual input. Shows the current font size when form resizing is enabled."
            Top             =   1110
            Visible         =   0   'False
            Width           =   2400
         End
         Begin VB.Label lblFontsTab 
            Caption         =   "My preferred font for this utility is Centurion Light SF at 8pt size."
            Height          =   420
            Index           =   1
            Left            =   1665
            TabIndex        =   112
            ToolTipText     =   "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
            Top             =   2535
            Width           =   4035
         End
         Begin VB.Label lblFontsTab 
            Caption         =   $"frmPrefs.frx":5C5A
            Height          =   900
            Index           =   0
            Left            =   1665
            TabIndex        =   111
            ToolTipText     =   "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
            Top             =   1605
            Width           =   4035
         End
         Begin VB.Label lblFontsTab 
            Caption         =   "The chosen font size *"
            Height          =   480
            Index           =   7
            Left            =   2295
            TabIndex        =   33
            ToolTipText     =   "Choose a font size that fits the text boxes"
            Top             =   1095
            Width           =   2400
         End
         Begin VB.Label lblFontsTab 
            Caption         =   "Font Size :"
            Height          =   330
            Index           =   3
            Left            =   705
            TabIndex        =   32
            Tag             =   "lblPrefsFontSize"
            Top             =   1095
            Width           =   885
         End
         Begin VB.Label lblFontsTab 
            Caption         =   "Config Window Font:"
            Height          =   300
            Index           =   2
            Left            =   15
            TabIndex        =   31
            Tag             =   "lblPrefsFont"
            ToolTipText     =   "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
            Top             =   120
            Width           =   1635
         End
         Begin VB.Label lblFontsTab 
            Caption         =   "Choose a font to be used for the text in this preferences window alone. *"
            Height          =   480
            Index           =   6
            Left            =   1620
            TabIndex        =   30
            ToolTipText     =   "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
            Top             =   480
            Width           =   4035
         End
      End
   End
   Begin VB.Frame fraGeneral 
      Caption         =   "General"
      Height          =   3750
      Left            =   240
      TabIndex        =   52
      Top             =   1200
      Visible         =   0   'False
      Width           =   7500
      Begin VB.Frame fraGeneralInner 
         BorderStyle     =   0  'None
         Height          =   3000
         Left            =   465
         TabIndex        =   53
         Top             =   300
         Width           =   6600
         Begin VB.CheckBox chkGenStartup 
            Caption         =   "Run the Earth Widget at Windows Startup *"
            Height          =   225
            Left            =   2010
            TabIndex        =   104
            ToolTipText     =   "Check this box to enable the automatic start of the program when Windows is started."
            Top             =   2775
            Width           =   3555
         End
         Begin VB.CheckBox chkGaugeFunctions 
            Caption         =   "Rotating Earth Enabled *"
            Height          =   225
            Left            =   1995
            TabIndex        =   54
            ToolTipText     =   "When checked this box enables the spinning earth functionality. That's it!"
            Top             =   180
            Width           =   3405
         End
         Begin vb6projectCCRSlider.Slider sliAnimationInterval 
            Height          =   390
            Left            =   1920
            TabIndex        =   100
            ToolTipText     =   "Adjust to make the animation smooth or choppy. Lower values are smoother but the smoother it runs the more CPU it uses."
            Top             =   1110
            Width           =   3870
            _ExtentX        =   6826
            _ExtentY        =   688
            Min             =   50
            Max             =   300
            Value           =   100
            TickFrequency   =   6
            SmallChange     =   3
            SelStart        =   50
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "300"
            Height          =   315
            Index           =   12
            Left            =   5340
            TabIndex        =   109
            Top             =   1650
            Width           =   540
         End
         Begin VB.Label lblGeneral 
            Caption         =   "(ms)"
            Height          =   315
            Index           =   1
            Left            =   5880
            TabIndex        =   108
            Top             =   1635
            Width           =   1605
         End
         Begin VB.Label lblGeneral 
            Caption         =   "Gauge Functions :"
            Height          =   315
            Index           =   6
            Left            =   510
            TabIndex        =   106
            Top             =   165
            Width           =   1320
         End
         Begin VB.Label lblGeneral 
            Caption         =   "Auto Start :"
            Height          =   375
            Index           =   11
            Left            =   1140
            TabIndex        =   105
            Tag             =   "lblRefreshInterval"
            Top             =   2775
            Width           =   1740
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "205"
            Height          =   315
            Index           =   11
            Left            =   4125
            TabIndex        =   103
            Top             =   1635
            Width           =   345
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "165"
            Height          =   315
            Index           =   10
            Left            =   3570
            TabIndex        =   102
            Top             =   1635
            Width           =   345
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "90"
            Height          =   315
            Index           =   9
            Left            =   2565
            TabIndex        =   101
            Top             =   1635
            Width           =   345
         End
         Begin VB.Label lblGeneral 
            Caption         =   "Adjust to make the animation smooth or choppy. Lower values are smoother but the smoother it runs the more CPU it uses. *"
            Height          =   645
            Index           =   5
            Left            =   2115
            TabIndex        =   99
            Top             =   1950
            Width           =   3810
         End
         Begin VB.Label lblGeneral 
            Caption         =   "Animation Interval :"
            Height          =   315
            Index           =   4
            Left            =   510
            TabIndex        =   98
            Top             =   1185
            Width           =   1605
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "130"
            Height          =   315
            Index           =   8
            Left            =   3060
            TabIndex        =   97
            Top             =   1635
            Width           =   840
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "245"
            Height          =   315
            Index           =   7
            Left            =   4695
            TabIndex        =   96
            Top             =   1635
            Width           =   735
         End
         Begin VB.Label lblGaugeSize 
            Caption         =   "50"
            Height          =   315
            Index           =   6
            Left            =   2025
            TabIndex        =   95
            Top             =   1635
            Width           =   345
         End
         Begin VB.Label lblGeneral 
            Caption         =   "When checked this box enables the spinning earth functionality. That's it! *"
            Height          =   660
            Index           =   2
            Left            =   2025
            TabIndex        =   55
            Tag             =   "lblEnableSoundsDesc"
            Top             =   540
            Width           =   3615
         End
      End
   End
   Begin VB.Frame fraPosition 
      Caption         =   "Position"
      Height          =   7440
      Left            =   240
      TabIndex        =   48
      Top             =   1230
      Visible         =   0   'False
      Width           =   8520
      Begin VB.Frame fraPositionInner 
         BorderStyle     =   0  'None
         Height          =   6960
         Left            =   150
         TabIndex        =   49
         Top             =   300
         Width           =   7680
         Begin VB.CheckBox chkPreventDragging 
            Caption         =   "Widget Position Locked. *"
            Height          =   225
            Left            =   2265
            TabIndex        =   142
            ToolTipText     =   "Checking this box turns off the ability to drag the program with the mouse, locking it in position."
            Top             =   3465
            Width           =   2505
         End
         Begin VB.TextBox txtPortraitYoffset 
            Height          =   315
            Left            =   2250
            TabIndex        =   83
            ToolTipText     =   "Enter a prefix/nickname for outgoing messages."
            Top             =   6465
            Width           =   2130
         End
         Begin VB.TextBox txtPortraitHoffset 
            Height          =   315
            Left            =   2250
            TabIndex        =   81
            ToolTipText     =   "Enter a prefix/nickname for outgoing messages."
            Top             =   6000
            Width           =   2130
         End
         Begin VB.TextBox txtLandscapeVoffset 
            Height          =   315
            Left            =   2250
            TabIndex        =   79
            ToolTipText     =   "Enter a prefix/nickname for outgoing messages."
            Top             =   4875
            Width           =   2130
         End
         Begin VB.TextBox txtLandscapeHoffset 
            Height          =   315
            Left            =   2250
            TabIndex        =   77
            Top             =   4425
            Width           =   2130
         End
         Begin VB.ComboBox cmbWidgetLandscape 
            Height          =   315
            ItemData        =   "frmPrefs.frx":5D15
            Left            =   2250
            List            =   "frmPrefs.frx":5D17
            Style           =   2  'Dropdown List
            TabIndex        =   75
            ToolTipText     =   "Choose the alarm sound."
            Top             =   3930
            Width           =   2160
         End
         Begin VB.ComboBox cmbWidgetPortrait 
            Height          =   315
            ItemData        =   "frmPrefs.frx":5D19
            Left            =   2250
            List            =   "frmPrefs.frx":5D1B
            Style           =   2  'Dropdown List
            TabIndex        =   72
            ToolTipText     =   "Choose the alarm sound."
            Top             =   5505
            Width           =   2160
         End
         Begin VB.ComboBox cmbWidgetPosition 
            Height          =   315
            ItemData        =   "frmPrefs.frx":5D1D
            Left            =   2265
            List            =   "frmPrefs.frx":5D1F
            Style           =   2  'Dropdown List
            TabIndex        =   69
            ToolTipText     =   "Choose the alarm sound."
            Top             =   2100
            Width           =   2160
         End
         Begin VB.ComboBox cmbAspectHidden 
            Height          =   315
            ItemData        =   "frmPrefs.frx":5D21
            Left            =   2265
            List            =   "frmPrefs.frx":5D23
            Style           =   2  'Dropdown List
            TabIndex        =   66
            ToolTipText     =   "Choose the alarm sound."
            Top             =   0
            Width           =   2160
         End
         Begin VB.Label lblPosition 
            Caption         =   "*"
            Height          =   255
            Index           =   1
            Left            =   4545
            TabIndex        =   145
            Tag             =   "lblAlarmSound"
            Top             =   45
            Width           =   345
         End
         Begin VB.Label Label2 
            Caption         =   "(px)"
            Height          =   300
            Left            =   4530
            TabIndex        =   141
            Tag             =   "lblPrefixString"
            Top             =   4905
            Width           =   435
         End
         Begin VB.Label Label1 
            Caption         =   "(px)"
            Height          =   300
            Left            =   4530
            TabIndex        =   140
            Tag             =   "lblPrefixString"
            Top             =   4500
            Width           =   390
         End
         Begin VB.Label lblPosition 
            Caption         =   "Portrait Top Y pos :"
            Height          =   510
            Index           =   17
            Left            =   720
            TabIndex        =   84
            Tag             =   "lblPrefixString"
            Top             =   6480
            Width           =   2175
         End
         Begin VB.Label lblPosition 
            Caption         =   "Portrait Left X pos :"
            Height          =   510
            Index           =   16
            Left            =   660
            TabIndex        =   82
            Tag             =   "lblPrefixString"
            Top             =   6015
            Width           =   2175
         End
         Begin VB.Label lblPosition 
            Caption         =   "Landscape Top Y pos :"
            Height          =   510
            Index           =   15
            Left            =   480
            TabIndex        =   80
            Tag             =   "lblPrefixString"
            Top             =   4905
            Width           =   2175
         End
         Begin VB.Label lblPosition 
            Caption         =   "Landscape Left X pos :"
            Height          =   510
            Index           =   14
            Left            =   480
            TabIndex        =   78
            Tag             =   "lblPrefixString"
            Top             =   4455
            Width           =   2175
         End
         Begin VB.Label lblPosition 
            Caption         =   "Widget Locked in Landscape:"
            Height          =   375
            Index           =   13
            Left            =   0
            TabIndex        =   76
            Tag             =   "lblAlarmSound"
            Top             =   3975
            Width           =   2205
         End
         Begin VB.Label lblPosition 
            Caption         =   $"frmPrefs.frx":5D25
            Height          =   3120
            Index           =   12
            Left            =   5145
            TabIndex        =   74
            Tag             =   "lblAlarmSoundDesc"
            Top             =   3480
            Width           =   2520
         End
         Begin VB.Label lblPosition 
            Caption         =   "Widget Locked in Portrait:"
            Height          =   375
            Index           =   11
            Left            =   300
            TabIndex        =   73
            Tag             =   "lblAlarmSound"
            Top             =   5550
            Width           =   2040
         End
         Begin VB.Label lblPosition 
            Caption         =   $"frmPrefs.frx":5EF7
            Height          =   705
            Index           =   10
            Left            =   2250
            TabIndex        =   71
            Tag             =   "lblAlarmSoundDesc"
            Top             =   2550
            Width           =   4455
         End
         Begin VB.Label lblPosition 
            Caption         =   "Widget Position by Percent:"
            Height          =   375
            Index           =   8
            Left            =   180
            TabIndex        =   70
            Tag             =   "lblAlarmSound"
            Top             =   2145
            Width           =   2355
         End
         Begin VB.Label lblPosition 
            Caption         =   $"frmPrefs.frx":5F96
            Height          =   3045
            Index           =   6
            Left            =   2265
            TabIndex        =   68
            Tag             =   "lblAlarmSoundDesc"
            ToolTipText     =   $"frmPrefs.frx":613B
            Top             =   450
            Width           =   5175
         End
         Begin VB.Label lblPosition 
            Caption         =   "Aspect Ratio Hidden Mode :"
            Height          =   375
            Index           =   3
            Left            =   120
            TabIndex        =   67
            Tag             =   "lblAlarmSound"
            Top             =   45
            Width           =   2145
         End
      End
   End
   Begin VB.Frame fraAbout 
      Caption         =   "About"
      Height          =   8580
      Left            =   255
      TabIndex        =   115
      Top             =   1185
      Visible         =   0   'False
      Width           =   8520
      Begin VB.Frame fraScrollbarCover 
         BorderStyle     =   0  'None
         Height          =   6435
         Left            =   7950
         TabIndex        =   129
         Top             =   1995
         Width           =   420
      End
      Begin VB.TextBox txtAboutText 
         Appearance      =   0  'Flat
         BackColor       =   &H8000000F&
         BorderStyle     =   0  'None
         Height          =   6135
         Left            =   300
         MultiLine       =   -1  'True
         ScrollBars      =   2  'Vertical
         TabIndex        =   128
         Text            =   "frmPrefs.frx":62E0
         Top             =   2205
         Width           =   8010
      End
      Begin VB.CommandButton btnAboutDebugInfo 
         Caption         =   "Debug &Info."
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   6780
         Style           =   1  'Graphical
         TabIndex        =   119
         ToolTipText     =   "This gives access to the debugging tool"
         Top             =   1110
         Width           =   1470
      End
      Begin VB.CommandButton btnFacebook 
         Caption         =   "&Facebook"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   6780
         Style           =   1  'Graphical
         TabIndex        =   118
         ToolTipText     =   "This will link you to the Rocket/Steamy dock users Group"
         Top             =   735
         Width           =   1470
      End
      Begin VB.CommandButton btnUpdate 
         Caption         =   "&Update"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   6780
         Style           =   1  'Graphical
         TabIndex        =   117
         ToolTipText     =   "Here you can visit the update location where you can download new versions of the programs."
         Top             =   360
         Width           =   1470
      End
      Begin VB.CommandButton btnDonate 
         Caption         =   "&Donate"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   360
         Left            =   6780
         Style           =   1  'Graphical
         TabIndex        =   116
         ToolTipText     =   "Opens a browser window and sends you to our donate page on Amazon"
         Top             =   1485
         Width           =   1470
      End
      Begin VB.Label lblDotDot 
         BackStyle       =   0  'Transparent
         Caption         =   ".        ."
         BeginProperty Font 
            Name            =   "Centurion Light SF"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2940
         TabIndex        =   133
         Top             =   510
         Width           =   495
      End
      Begin VB.Label lblRevisionNum 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Centurion Light SF"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3450
         TabIndex        =   132
         Top             =   510
         Width           =   525
      End
      Begin VB.Label lblMajorVersion 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Centurion Light SF"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   2730
         TabIndex        =   131
         Top             =   510
         Width           =   225
      End
      Begin VB.Label lblMinorVersion 
         BackStyle       =   0  'Transparent
         Caption         =   "0"
         BeginProperty Font 
            Name            =   "Centurion Light SF"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   240
         Left            =   3090
         TabIndex        =   130
         Top             =   510
         Width           =   225
      End
      Begin VB.Label Label61 
         Caption         =   "Dean Beedell � 2023"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2715
         TabIndex        =   127
         Top             =   855
         Width           =   2175
      End
      Begin VB.Label Label65 
         Caption         =   "Originator"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1050
         TabIndex        =   126
         Top             =   855
         Width           =   795
      End
      Begin VB.Label Label74 
         Caption         =   "Version"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1065
         TabIndex        =   125
         Top             =   495
         Width           =   795
      End
      Begin VB.Label Label60 
         Caption         =   "Dean Beedell � 2023"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2715
         TabIndex        =   124
         Top             =   1215
         Width           =   2175
      End
      Begin VB.Label Label63 
         Caption         =   "Current Developer"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1050
         TabIndex        =   123
         Top             =   1215
         Width           =   1470
      End
      Begin VB.Label Label10 
         Caption         =   "Target"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   1050
         TabIndex        =   122
         Top             =   1560
         Width           =   1470
      End
      Begin VB.Label Label17 
         Caption         =   "Windows XP, Vista, 7, 8, 10  && 11 + ReactOS"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   2715
         TabIndex        =   121
         Top             =   1560
         Width           =   3735
      End
      Begin VB.Label Label20 
         Caption         =   "(32bit WoW64)"
         BeginProperty Font 
            Name            =   "Arial"
            Size            =   8.25
            Charset         =   0
            Weight          =   400
            Underline       =   0   'False
            Italic          =   0   'False
            Strikethrough   =   0   'False
         EndProperty
         Height          =   225
         Left            =   3900
         TabIndex        =   120
         Top             =   510
         Width           =   1245
      End
   End
   Begin VB.Frame fraDevelopment 
      Caption         =   "Development"
      Height          =   6105
      Left            =   240
      TabIndex        =   50
      Top             =   1200
      Visible         =   0   'False
      Width           =   8520
      Begin VB.Frame fraDevelopmentInner 
         BorderStyle     =   0  'None
         Height          =   5595
         Left            =   870
         TabIndex        =   51
         Top             =   300
         Width           =   7455
         Begin VB.Frame fraDefaultEditor 
            BorderStyle     =   0  'None
            Height          =   2250
            Left            =   75
            TabIndex        =   149
            Top             =   3165
            Width           =   7290
            Begin VB.CommandButton btnDefaultEditor 
               Caption         =   "..."
               Height          =   300
               Left            =   5115
               Style           =   1  'Graphical
               TabIndex        =   151
               ToolTipText     =   "Click to select the .vbp file to edit the program - You need to have access to the source!"
               Top             =   210
               Width           =   315
            End
            Begin VB.TextBox txtDefaultEditor 
               Height          =   315
               Left            =   1440
               TabIndex        =   150
               Text            =   " eg. E:\vb6\fire call\FireCallWin.vbp"
               ToolTipText     =   $"frmPrefs.frx":7297
               Top             =   195
               Width           =   3660
            End
            Begin VB.Label lblDebug 
               Caption         =   $"frmPrefs.frx":7329
               Height          =   930
               Index           =   9
               Left            =   1545
               TabIndex        =   154
               Top             =   690
               Width           =   3900
            End
            Begin VB.Label lblDebug 
               Caption         =   "Default Editor :"
               Height          =   255
               Index           =   7
               Left            =   285
               TabIndex        =   153
               Tag             =   "lblSharedInputFile"
               Top             =   225
               Width           =   1350
            End
            Begin VB.Label lblGitHub 
               Caption         =   $"frmPrefs.frx":73CD
               ForeColor       =   &H8000000D&
               Height          =   735
               Left            =   1530
               TabIndex        =   152
               ToolTipText     =   "Click to visit github"
               Top             =   1620
               Width           =   5430
            End
         End
         Begin VB.TextBox txtDblClickCommand 
            Height          =   315
            Left            =   1515
            TabIndex        =   63
            ToolTipText     =   "Enter a Windows command for the gauge to operate when double-clicked."
            Top             =   1095
            Width           =   3660
         End
         Begin VB.CommandButton btnOpenFile 
            Caption         =   "..."
            Height          =   300
            Left            =   5175
            Style           =   1  'Graphical
            TabIndex        =   60
            ToolTipText     =   "Click to select a particular file for the gauge to run or open when double-clicked."
            Top             =   2250
            Width           =   315
         End
         Begin VB.TextBox txtOpenFile 
            Height          =   315
            Left            =   1515
            TabIndex        =   59
            ToolTipText     =   "Enter a particular file for the gauge to run or open when double-clicked."
            Top             =   2235
            Width           =   3660
         End
         Begin VB.ComboBox cmbDebug 
            Height          =   315
            ItemData        =   "frmPrefs.frx":7461
            Left            =   1530
            List            =   "frmPrefs.frx":7463
            Style           =   2  'Dropdown List
            TabIndex        =   56
            ToolTipText     =   "Choose to set debug mode."
            Top             =   -15
            Width           =   2160
         End
         Begin VB.Label lblDebug 
            Caption         =   "DblClick Command :"
            Height          =   510
            Index           =   1
            Left            =   -15
            TabIndex        =   65
            Tag             =   "lblPrefixString"
            Top             =   1155
            Width           =   1545
         End
         Begin VB.Label lblConfigurationTab 
            Caption         =   "Shift+double-clicking on the widget image will open this file. "
            Height          =   375
            Index           =   6
            Left            =   1560
            TabIndex        =   64
            Top             =   2730
            Width           =   3705
         End
         Begin VB.Label lblDebug 
            Caption         =   "Default command to run when the gauge receives a double-click eg %SystemRoot%/system32/ncpa.cpl"
            Height          =   570
            Index           =   5
            Left            =   1590
            TabIndex        =   62
            Tag             =   "lblSharedInputFileDesc"
            Top             =   1605
            Width           =   4410
         End
         Begin VB.Label lblDebug 
            Caption         =   "Open File :"
            Height          =   255
            Index           =   4
            Left            =   645
            TabIndex        =   61
            Tag             =   "lblSharedInputFile"
            Top             =   2280
            Width           =   1350
         End
         Begin VB.Label lblDebug 
            Caption         =   "Turning on the debugging will provide extra information in the debug window.  *"
            Height          =   495
            Index           =   2
            Left            =   1545
            TabIndex        =   58
            Tag             =   "lblAlarmSoundDesc"
            Top             =   450
            Width           =   4455
         End
         Begin VB.Label lblDebug 
            Caption         =   "Debug :"
            Height          =   375
            Index           =   0
            Left            =   855
            TabIndex        =   57
            Tag             =   "lblAlarmSound"
            Top             =   45
            Width           =   1740
         End
      End
   End
   Begin VB.Frame fraSounds 
      Caption         =   "Sounds"
      Height          =   1965
      Left            =   240
      TabIndex        =   13
      Top             =   1230
      Visible         =   0   'False
      Width           =   7965
      Begin VB.Frame fraSoundsInner 
         BorderStyle     =   0  'None
         Height          =   1755
         Left            =   930
         TabIndex        =   25
         Top             =   135
         Width           =   5160
         Begin VB.CheckBox chkEnableSounds 
            Caption         =   "Enable Sounds for the Animations *"
            Height          =   225
            Left            =   1485
            TabIndex        =   36
            ToolTipText     =   "Check this box to enable or disable all of the sounds used during any animation on the main screen."
            Top             =   465
            Width           =   3405
         End
         Begin VB.Label lblDebug 
            Caption         =   "Audio :"
            Height          =   255
            Index           =   3
            Left            =   885
            TabIndex        =   110
            Tag             =   "lblSharedInputFile"
            Top             =   465
            Width           =   765
         End
         Begin VB.Label lblSoundsTab 
            Caption         =   "When checked, this box enables all the sounds used during any animation/interaction with the main program."
            Height          =   660
            Index           =   4
            Left            =   1515
            TabIndex        =   37
            Tag             =   "lblEnableSoundsDesc"
            Top             =   825
            Width           =   3615
         End
      End
   End
   Begin VB.Frame fraWindow 
      Caption         =   "Window"
      Height          =   6300
      Left            =   405
      TabIndex        =   10
      Top             =   1515
      Width           =   8280
      Begin VB.Frame fraWindowInner 
         BorderStyle     =   0  'None
         Height          =   5775
         Left            =   1095
         TabIndex        =   14
         Top             =   345
         Width           =   5715
         Begin VB.Frame fraHiding 
            BorderStyle     =   0  'None
            Height          =   2010
            Left            =   480
            TabIndex        =   135
            Top             =   2325
            Width           =   5130
            Begin VB.ComboBox cmbHidingTime 
               Height          =   315
               Left            =   825
               Style           =   2  'Dropdown List
               TabIndex        =   138
               Top             =   1680
               Width           =   3720
            End
            Begin VB.CheckBox chkWidgetHidden 
               Caption         =   "Hiding Widget *"
               Height          =   225
               Left            =   855
               TabIndex        =   136
               Top             =   225
               Width           =   2955
            End
            Begin VB.Label lblWindowLevel 
               Caption         =   "Hiding :"
               Height          =   345
               Index           =   2
               Left            =   90
               TabIndex        =   139
               Top             =   210
               Width           =   720
            End
            Begin VB.Label lblWindowLevel 
               Caption         =   $"frmPrefs.frx":7465
               Height          =   975
               Index           =   1
               Left            =   855
               TabIndex        =   137
               Top             =   600
               Width           =   3900
            End
         End
         Begin VB.ComboBox cmbWindowLevel 
            Height          =   315
            Left            =   1305
            Style           =   2  'Dropdown List
            TabIndex        =   17
            ToolTipText     =   $"frmPrefs.frx":7508
            Top             =   0
            Width           =   3720
         End
         Begin VB.CheckBox chkIgnoreMouse 
            Caption         =   "Ignore Mouse *"
            Height          =   225
            Left            =   1335
            TabIndex        =   15
            ToolTipText     =   "Checking this box causes the program to ignore all mouse events."
            Top             =   1500
            Width           =   2535
         End
         Begin vb6projectCCRSlider.Slider sliOpacity 
            Height          =   390
            Left            =   1200
            TabIndex        =   16
            ToolTipText     =   "Set the transparency of the Program."
            Top             =   4560
            Width           =   3870
            _ExtentX        =   6826
            _ExtentY        =   688
            Min             =   20
            Max             =   100
            Value           =   100
            TickFrequency   =   6
            SelStart        =   20
         End
         Begin VB.Label Label3 
            Caption         =   "This setting controls the relative layering of this widget. You may use it to place it on top of other windows or underneath. "
            Height          =   660
            Left            =   1320
            TabIndex        =   144
            Top             =   570
            Width           =   3810
         End
         Begin VB.Label lblWindowLevel 
            Caption         =   "Window Level :"
            Height          =   345
            Index           =   0
            Left            =   0
            TabIndex        =   24
            Top             =   60
            Width           =   1740
         End
         Begin VB.Label lblOpacity20 
            Caption         =   "20%"
            Height          =   315
            Left            =   1290
            TabIndex        =   23
            Top             =   5070
            Width           =   345
         End
         Begin VB.Label lblOpacityLabel100 
            Caption         =   "100%"
            Height          =   315
            Left            =   4650
            TabIndex        =   22
            Top             =   5070
            Width           =   405
         End
         Begin VB.Label lblOpacityText 
            Caption         =   "Opacity"
            Height          =   315
            Left            =   2775
            TabIndex        =   21
            Top             =   5070
            Width           =   840
         End
         Begin VB.Label lblOpacityLabel 
            Caption         =   "Opacity:"
            Height          =   315
            Left            =   555
            TabIndex        =   20
            Top             =   4620
            Width           =   780
         End
         Begin VB.Label lblOpacityLabelDesc 
            Caption         =   "Set the program transparency level. *"
            Height          =   330
            Left            =   1335
            TabIndex        =   19
            Top             =   5385
            Width           =   3810
         End
         Begin VB.Label lblIgnoreMouseText 
            Caption         =   "Checking this box causes the program to ignore all mouse events except right click menu interactions."
            Height          =   660
            Left            =   1320
            TabIndex        =   18
            Top             =   1890
            Width           =   3810
         End
      End
   End
   Begin VB.Label lblAsterix 
      Caption         =   "All controls marked with a * take effect immediately."
      Height          =   300
      Left            =   1920
      TabIndex        =   143
      Top             =   10155
      Width           =   3870
   End
   Begin VB.Menu prefsMnuPopmenu 
      Caption         =   "The main menu"
      Visible         =   0   'False
      Begin VB.Menu mnuAbout 
         Caption         =   "About Panzer Earth Widget"
      End
      Begin VB.Menu blank 
         Caption         =   "-"
      End
      Begin VB.Menu mnuCoffee 
         Caption         =   "Donate a coffee with KoFi"
      End
      Begin VB.Menu mnuSupport 
         Caption         =   "Contact Support"
      End
      Begin VB.Menu blank3 
         Caption         =   "-"
      End
      Begin VB.Menu mnuButton 
         Caption         =   "Theme Colours"
         Begin VB.Menu mnuLight 
            Caption         =   "Light Theme Enable"
         End
         Begin VB.Menu mnuDark 
            Caption         =   "High Contrast Theme Enable"
         End
         Begin VB.Menu mnuAuto 
            Caption         =   "Auto Theme Selection"
         End
      End
      Begin VB.Menu mnuLicenceA 
         Caption         =   "Display Licence Agreement"
      End
      Begin VB.Menu mnuClosePreferences 
         Caption         =   "Close Preferences"
      End
   End
End
Attribute VB_Name = "panzerEarthPrefs"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = False
Attribute VB_PredeclaredId = True
Attribute VB_Exposed = False

'---------------------------------------------------------------------------------------
' Module    : panzerEarthPrefs
' Author    : beededea
' Date      : 17/08/2022
' Purpose   : VB6 standard form to display the prefs
'---------------------------------------------------------------------------------------

Option Explicit

'------------------------------------------------------ STARTS
' Constants defined for setting a theme to the prefs
Private Const COLOR_BTNFACE As Long = 15

' APIs declared for setting a theme to the prefs
Private Declare Function GetSysColor Lib "user32.dll" (ByVal nIndex As Long) As Long
Private Declare Function IsThemeActive Lib "uxtheme" () As Boolean
'------------------------------------------------------ ENDS

Private PzEPrefsLoadedFlg As Boolean

Private Type ControlPositionType
    Left As Single
    Top As Single
    Width As Single
    Height As Single
    FontSize As Single
End Type

Private m_ControlPositions() As ControlPositionType
Private m_FormWid As Single
Private m_FormHgt As Single

Private dynamicSizingFlg As Boolean
Private lastFormHeight As Long

Private Const cFormHeight As Long = 11055
Private Const cFormWidth  As Long = 9090
Private topIconWidth As Long


'---------------------------------------------------------------------------------------
' Procedure : chkShowTaskbar_Click
' Author    : beededea
' Date      : 19/07/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkShowTaskbar_Click()

   On Error GoTo chkShowTaskbar_Click_Error

    btnSave.Enabled = True ' enable the save button
    If chkShowTaskbar.Value = 1 Then
        PzEShowTaskbar = "1"
    Else
        PzEShowTaskbar = "0"
    End If

   On Error GoTo 0
   Exit Sub

chkShowTaskbar_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkShowTaskbar_Click of Form panzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Load
' Author    : beededea
' Date      : 25/04/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Form_Load()

    On Error GoTo Form_Load_Error
    
    dynamicSizingFlg = False
    lastFormHeight = 0
    topIconWidth = 600 '40 pixels
    PzEFormXPosTwips = ""
    PzEFormYPosTwips = ""
    PzEPrefsLoadedFlg = True ' this is a variable tested by an added form property to indicate whether the form is loaded or not
               
    btnSave.Enabled = False ' disable the save button

    ' determine the frame heights in dynamic sizing or normal mode
    Call setframeHeights
    
    ' set the tooltips on the prefs screen
    Call setPrefsTooltips
               
    ' populate all the comboboxes in the prefs form
    Call populatePrefsComboBoxes
    
    ' adjust all the preferences and main program controls
    Call adjustPrefsControls
    
    ' adjust the theme used by the prefs alone
    Call adjustPrefsTheme
    
    ' size and position the frames and buttons
    Call positionPrefsFramesButtons
    
    ' make the last used tab appear on startup
    Call showLastTab
    
    'load the about text
    Call loadPrefsAboutText

   On Error GoTo 0
   Exit Sub

Form_Load_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Load of Form panzerEarthPrefs"

End Sub





'---------------------------------------------------------------------------------------
' Procedure : btnAboutDebugInfo_Click
' Author    : beededea
' Date      : 03/03/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnAboutDebugInfo_Click()

   On Error GoTo btnAboutDebugInfo_Click_Error
   'If debugflg = 1 Then Debug.Print "%btnAboutDebugInfo_Click"

    'mnuDebug_Click
    MsgBox "The debug mode is not yet enabled."

   On Error GoTo 0
   Exit Sub

btnAboutDebugInfo_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnAboutDebugInfo_Click of form PanzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : btnDonate_Click
' Author    : beededea
' Date      : 13/06/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnDonate_Click()
   On Error GoTo btnDonate_Click_Error

    Call mnuCoffee_ClickEvent

   On Error GoTo 0
   Exit Sub

btnDonate_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnDonate_Click of Form PanzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : btnFacebook_Click
' Author    : beededea
' Date      : 29/02/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnFacebook_Click()
   On Error GoTo btnFacebook_Click_Error
   'If debugflg = 1 Then DebugPrint "%btnFacebook_Click"

    Call menuForm.mnuFacebook_Click
    

   On Error GoTo 0
   Exit Sub

btnFacebook_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnFacebook_Click of Form PanzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : btnOpenFile_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnOpenFile_Click()
    Dim retFileName As String: retFileName = vbNullString
    Dim answer As VbMsgBoxResult: answer = vbNo

    On Error GoTo btnOpenFile_Click_Error

    Call addTargetFile(txtOpenFile.Text, retFileName)
    
    If retFileName <> vbNullString Then
        txtOpenFile.Text = retFileName ' strips the buffered bit, leaving just the filename
    End If
    
    If retFileName = vbNullString Then
        Exit Sub
    End If
    
    If Not fFExists(retFileName) Then
        answer = MsgBox("The file doesn't currently exist, do you want me to create the chosen file, " & "   -  are you sure?", vbYesNo)
        If answer = vbNo Then
            Exit Sub
        End If
    
        'create new
        Open retFileName For Output As #1
        Close #1
    End If

    On Error GoTo 0
    Exit Sub

btnOpenFile_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnOpenFile_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
End Sub

'---------------------------------------------------------------------------------------
' Procedure : btnUpdate_Click
' Author    : beededea
' Date      : 29/02/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnUpdate_Click()
   On Error GoTo btnUpdate_Click_Error
   'If debugflg = 1 Then DebugPrint "%btnUpdate_Click"

    'MsgBox "The update button is not yet enabled."
    menuForm.mnuLatest_Click

   On Error GoTo 0
   Exit Sub

btnUpdate_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnUpdate_Click of Form PanzerEarthPrefs"
End Sub

Private Sub chkGaugeFunctions_Click()
    btnSave.Enabled = True ' enable the save button
    globeWidget.Rotating = chkGaugeFunctions.Value
End Sub

Private Sub chkGenStartup_Click()
    btnSave.Enabled = True ' enable the save button
End Sub



'---------------------------------------------------------------------------------------
' Procedure : btnDefaultEditor_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnDefaultEditor_Click()
    Dim retFileName As String: retFileName = vbNullString
    Dim answer As VbMsgBoxResult: answer = vbNo

    On Error GoTo btnDefaultEditor_Click_Error

    Call addTargetFile(txtDefaultEditor.Text, retFileName)
    
    If retFileName <> vbNullString Then
        txtDefaultEditor.Text = retFileName ' strips the buffered bit, leaving just the filename
    End If
    
    If retFileName = vbNullString Then
        Exit Sub
    End If
    
    If Not fFExists(retFileName) Then
        answer = MsgBox("The file doesn't currently exist, do you want me to create the chosen file, " & "   -  are you sure?", vbYesNo)
        If answer = vbNo Then
            Exit Sub
        End If
    
        'create new
        Open retFileName For Output As #1
        Close #1
    End If

    On Error GoTo 0
    Exit Sub

btnDefaultEditor_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnDefaultEditor_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
    
End Sub

'---------------------------------------------------------------------------------------
' Procedure : chkEnableBalloonTooltips_Click
' Author    : beededea
' Date      : 09/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkEnableBalloonTooltips_Click()
   On Error GoTo chkEnableBalloonTooltips_Click_Error

    btnSave.Enabled = True ' enable the save button
    If chkEnableBalloonTooltips.Value = 1 Then
        PzEEnableBalloonTooltips = "1"
    Else
        PzEEnableBalloonTooltips = "0"
    End If

   On Error GoTo 0
   Exit Sub

chkEnableBalloonTooltips_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkEnableBalloonTooltips_Click of Form panzerEarthPrefs"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : chkIgnoreMouse_Click
' Author    : beededea
' Date      : 09/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkIgnoreMouse_Click()
   On Error GoTo chkIgnoreMouse_Click_Error

    If chkIgnoreMouse.Value = 0 Then
        PzEIgnoreMouse = "0"
    Else
        PzEIgnoreMouse = "1"
    End If

    btnSave.Enabled = True ' enable the save button

   On Error GoTo 0
   Exit Sub

chkIgnoreMouse_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkIgnoreMouse_Click of Form panzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : chkPreventDragging_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkPreventDragging_Click()
    On Error GoTo chkPreventDragging_Click_Error

    btnSave.Enabled = True ' enable the save button
    ' immediately make the widget locked in place
    If chkPreventDragging.Value = 0 Then
        globeWidget.Locked = 0
        PzEPreventDragging = "0"
        If aspectRatio = "landscape" Then
            txtLandscapeHoffset.Text = vbNullString
            txtLandscapeVoffset.Text = vbNullString
        Else
            txtPortraitHoffset.Text = vbNullString
            txtPortraitYoffset.Text = vbNullString
        End If
    Else
        globeWidget.Locked = 1
        PzEPreventDragging = "1"
        If aspectRatio = "landscape" Then
            txtLandscapeHoffset.Text = fMain.globeForm.Left
            txtLandscapeVoffset.Text = fMain.globeForm.Top
        Else
            txtPortraitHoffset.Text = fMain.globeForm.Left
            txtPortraitYoffset.Text = fMain.globeForm.Top
        End If
    End If

    On Error GoTo 0
    Exit Sub

chkPreventDragging_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkPreventDragging_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
    
End Sub



'---------------------------------------------------------------------------------------
' Procedure : chkWidgetHidden_Click
' Author    : beededea
' Date      : 09/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkWidgetHidden_Click()
   On Error GoTo chkWidgetHidden_Click_Error

    If chkWidgetHidden.Value = 0 Then
        globeWidget.Hidden = False

        frmTimer.revealWidgetTimer.Enabled = False
        PzEWidgetHidden = "0"
    Else
        globeWidget.Hidden = True

        frmTimer.revealWidgetTimer.Enabled = True
        PzEWidgetHidden = "1"
    End If
    
    sPutINISetting "Software\PzEarth", "widgetHidden", PzEWidgetHidden, PzESettingsFile
    
    btnSave.Enabled = True ' enable the save button

   On Error GoTo 0
   Exit Sub

chkWidgetHidden_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkWidgetHidden_Click of Form panzerEarthPrefs"

End Sub

'---------------------------------------------------------------------------------------
' Procedure : cmbAspectHidden_Click
' Author    : beededea
' Date      : 09/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub cmbAspectHidden_Click()

   On Error GoTo cmbAspectHidden_Click_Error

    If cmbAspectHidden.ListIndex = 1 And aspectRatio = "portrait" Then
        globeWidget.Hidden = True

    ElseIf cmbAspectHidden.ListIndex = 2 And aspectRatio = "landscape" Then
        globeWidget.Hidden = True

    Else
        globeWidget.Hidden = False
    End If

    btnSave.Enabled = True ' enable the save button

   On Error GoTo 0
   Exit Sub

cmbAspectHidden_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmbAspectHidden_Click of Form panzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : cmbDebug_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub cmbDebug_Click()
    On Error GoTo cmbDebug_Click_Error

    btnSave.Enabled = True ' enable the save button
    If cmbDebug.ListIndex = 0 Then
        txtDefaultEditor.Text = "eg. E:\vb6\Panzer Earth gauge VB6\Panzer Earth Gauge.vbp"
        txtDefaultEditor.Enabled = False
        lblDebug(7).Enabled = False
        btnDefaultEditor.Enabled = False
        lblDebug(9).Enabled = False
    Else
        txtDefaultEditor.Text = PzEDefaultEditor
        txtDefaultEditor.Enabled = True
        lblDebug(7).Enabled = True
        btnDefaultEditor.Enabled = True
        lblDebug(9).Enabled = True
    End If

    On Error GoTo 0
    Exit Sub

cmbDebug_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmbDebug_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With

End Sub

Private Sub cmbScrollWheelDirection__Click()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub cmbHidingTime_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

'---------------------------------------------------------------------------------------
' Procedure : cmbScrollWheelDirection_Click
' Author    : beededea
' Date      : 09/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub cmbScrollWheelDirection_Click()
   On Error GoTo cmbScrollWheelDirection_Click_Error

    btnSave.Enabled = True ' enable the save button
    globeWidget.ZoomDirection = cmbScrollWheelDirection.List(cmbScrollWheelDirection.ListIndex)

   On Error GoTo 0
   Exit Sub

cmbScrollWheelDirection_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmbScrollWheelDirection_Click of Form panzerEarthPrefs"
End Sub

Private Sub cmbWidgetLandscape_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

Private Sub cmbWidgetPortrait_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

'---------------------------------------------------------------------------------------
' Procedure : cmbWidgetPosition_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub cmbWidgetPosition_Click()
    On Error GoTo cmbWidgetPosition_Click_Error

    btnSave.Enabled = True ' enable the save button
    If cmbWidgetPosition.ListIndex = 1 Then
        cmbWidgetLandscape.ListIndex = 0
        cmbWidgetPortrait.ListIndex = 0
        cmbWidgetLandscape.Enabled = False
        cmbWidgetPortrait.Enabled = False
        txtLandscapeHoffset.Enabled = False
        txtLandscapeVoffset.Enabled = False
        txtPortraitHoffset.Enabled = False
        txtPortraitYoffset.Enabled = False
        
    Else
        cmbWidgetLandscape.Enabled = True
        cmbWidgetPortrait.Enabled = True
        txtLandscapeHoffset.Enabled = True
        txtLandscapeVoffset.Enabled = True
        txtPortraitHoffset.Enabled = True
        txtPortraitYoffset.Enabled = True
    End If

    On Error GoTo 0
    Exit Sub

cmbWidgetPosition_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure cmbWidgetPosition_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
End Sub




'---------------------------------------------------------------------------------------
' Procedure : IsVisible
' Author    : beededea
' Date      : 08/05/2023
' Purpose   : calling a manual property to a form allows external checks to the form to
'             determine whether it is loaded, without also activating it automatically.
'---------------------------------------------------------------------------------------
'
Public Property Get IsVisible() As Boolean
    On Error GoTo IsVisible_Error

    If PzEPrefsLoadedFlg Then
        If Me.WindowState = vbNormal Then
            IsVisible = Me.Visible
        Else
            IsVisible = False
        End If
    Else
        IsVisible = False
    End If

    On Error GoTo 0
    Exit Property

IsVisible_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure IsVisible of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
End Property


'---------------------------------------------------------------------------------------
' Procedure : showLastTab
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : make the last used tab appear on startup
'---------------------------------------------------------------------------------------
'
Private Sub showLastTab()

   On Error GoTo showLastTab_Error

    If PzELastSelectedTab = "general" Then Call picButtonMouseUpEvent("general", imgGeneral, imgGeneralClicked, fraGeneral, fraGeneralButton)  ' was imgGeneralMouseUpEvent
    If PzELastSelectedTab = "config" Then Call picButtonMouseUpEvent("config", imgConfig, imgConfigClicked, fraConfig, fraConfigButton)     ' was imgConfigMouseUpEvent
    If PzELastSelectedTab = "position" Then Call picButtonMouseUpEvent("position", imgPosition, imgPositionClicked, fraPosition, fraPositionButton)
    If PzELastSelectedTab = "development" Then Call picButtonMouseUpEvent("development", imgDevelopment, imgDevelopmentClicked, fraDevelopment, fraDevelopmentButton)
    If PzELastSelectedTab = "fonts" Then Call picButtonMouseUpEvent("fonts", imgFonts, imgFontsClicked, fraFonts, fraFontsButton)
    If PzELastSelectedTab = "sounds" Then Call picButtonMouseUpEvent("sounds", imgSounds, imgSoundsClicked, fraSounds, fraSoundsButton)
    If PzELastSelectedTab = "window" Then Call picButtonMouseUpEvent("window", imgWindow, imgWindowClicked, fraWindow, fraWindowButton)
    If PzELastSelectedTab = "about" Then Call picButtonMouseUpEvent("about", imgAbout, imgAboutClicked, fraAbout, fraAboutButton)

   On Error GoTo 0
   Exit Sub

showLastTab_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure showLastTab of Form panzerEarthPrefs"

End Sub


'---------------------------------------------------------------------------------------
' Procedure : positionPrefsFramesButtons
' Author    : beededea
' Date      : 01/05/2023
' Purpose   : size and position the frames and buttons. Note we are NOT using control
'             arrays so the form can be converted to Cairo forms later.
'---------------------------------------------------------------------------------------
'
' for the future, when reading multiple buttons from XML config.
' read the XML prefs group and identify prefgroups - <prefGroup name="general" and count them.
'
' for each group read all the controls and identify those in the group - ie. preference group =
' for each specific group, identify the group image, title and order
' read those into an array
' use a for-loop (can't use foreach unless you read the results into a collection, foreach requires use of variant
'   elements as foreach needs an object or variant type to operate.
' create a group, fraHiding, image and text element and order in a class of yWidgetGroup
' create a button of yWidgetGroup for each group
' loop through each line and identify the controls belonging to the group

' for the moment though, we will do it manually
'
Private Sub positionPrefsFramesButtons()
    On Error GoTo positionPrefsFramesButtons_Error

    Dim frameWidth As Integer: frameWidth = 0
    Dim frameTop As Integer: frameTop = 0
    Dim frameLeft As Integer: frameLeft = 0
    Dim buttonTop As Integer:    buttonTop = 0
    Dim currentFrameHeight As Integer: currentFrameHeight = 0
    Dim rightHandAlignment As Long: rightHandAlignment = 0
    Dim leftHandGutterWidth As Long: leftHandGutterWidth = 0
    
    ' align frames rightmost and leftmost to the buttons at the top
    buttonTop = -15
    frameTop = 1150
    leftHandGutterWidth = 240
    frameLeft = leftHandGutterWidth ' use the first frame leftmost as reference
    rightHandAlignment = fraAboutButton.Left + fraAboutButton.Width ' use final button rightmost as reference
    frameWidth = rightHandAlignment - frameLeft
    fraScrollbarCover.Left = rightHandAlignment - 690
    panzerEarthPrefs.Width = rightHandAlignment + leftHandGutterWidth + 75 ' (not quite sure why we need the 75 twips padding)
    
    ' align the top buttons
    fraGeneralButton.Top = buttonTop
    fraConfigButton.Top = buttonTop
    fraFontsButton.Top = buttonTop
    fraSoundsButton.Top = buttonTop
    fraPositionButton.Top = buttonTop
    fraDevelopmentButton.Top = buttonTop
    fraWindowButton.Top = buttonTop
    fraAboutButton.Top = buttonTop
    
    ' align the frames
    fraGeneral.Top = frameTop
    fraConfig.Top = frameTop
    fraFonts.Top = frameTop
    fraSounds.Top = frameTop
    fraPosition.Top = frameTop
    fraDevelopment.Top = frameTop
    fraWindow.Top = frameTop
    fraAbout.Top = frameTop
    
    fraGeneral.Left = frameLeft
    fraConfig.Left = frameLeft
    fraSounds.Left = frameLeft
    fraPosition.Left = frameLeft
    fraFonts.Left = frameLeft
    fraDevelopment.Left = frameLeft
    fraWindow.Left = frameLeft
    fraAbout.Left = frameLeft
    
    fraGeneral.Width = frameWidth
    fraConfig.Width = frameWidth
    fraSounds.Width = frameWidth
    fraPosition.Width = frameWidth
    fraFonts.Width = frameWidth
    fraWindow.Width = frameWidth
    fraDevelopment.Width = frameWidth
    fraAbout.Width = frameWidth
    
    ' set the base visibility of the frames
    fraGeneral.Visible = True
    fraConfig.Visible = False
    fraSounds.Visible = False
    fraPosition.Visible = False
    fraFonts.Visible = False
    fraWindow.Visible = False
    fraDevelopment.Visible = False
    fraAbout.Visible = False
    
    fraGeneralButton.BorderStyle = 1
    
    ' determine the longest frame
'    currentFrameHeight = fraGeneral.Height
'    currentFrameHeight = fraConfig.Height
'    currentFrameHeight = fraFonts.Height
'    currentFrameHeight = fraSounds.Height
'    currentFrameHeight = fraPosition.Height
'    currentFrameHeight = fraDevelopment.Height
'    currentFrameHeight = fraWindow.Height
'    currentFrameHeight = fraAbout.Height
'
'    'position the lower buttons
'    btnSave.Top = fraConfig.Top + currentFrameHeight + 250
'    btnCancel.Top = btnSave.Top

    btnCancel.Left = fraWindow.Left + fraWindow.Width - btnCancel.Width
    btnSave.Left = btnCancel.Left - btnSave.Width - 50
    'btnHelp.Top = btnSave.Top
    btnHelp.Left = frameLeft
    
'    lblAsterix.Top = btnSave.Top
    
    ' set the height of the form itself
'    If dynamicSizingFlg = False Then
'        panzerEarthPrefs.Height = btnHelp.Top + btnHelp.Height + 600
'        lastFormHeight = panzerEarthPrefs.Height
'    End If

   On Error GoTo 0
   Exit Sub

positionPrefsFramesButtons_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure positionPrefsFramesButtons of Form panzerEarthPrefs"

End Sub



'---------------------------------------------------------------------------------------
' Procedure : btnCancel_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnCancel_Click()
   On Error GoTo btnCancel_Click_Error

    btnSave.Enabled = False ' disable the save button
    panzerEarthPrefs.themeTimer.Enabled = False

    Unload Me

   On Error GoTo 0
   Exit Sub

btnCancel_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnCancel_Click of Form panzerEarthPrefs"
End Sub
'
'---------------------------------------------------------------------------------------
' Procedure : btnHelp_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : display the help file
'---------------------------------------------------------------------------------------
'
Private Sub btnHelp_Click()
    
    On Error GoTo btnHelp_Click_Error
    
        If fFExists(App.Path & "\help\Help.chm") Then
            Call ShellExecute(Me.hwnd, "Open", App.Path & "\help\Help.chm", vbNullString, App.Path, 1)
        Else
            MsgBox ("%Err-I-ErrorNumber 11 - The help file - PzEarth Help.html - is missing from the help folder.")
        End If

   On Error GoTo 0
   Exit Sub

btnHelp_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnHelp_Click of Form panzerEarthPrefs"
End Sub
'
'---------------------------------------------------------------------------------------
' Procedure : btnSave_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : save the values from all the tabs
'---------------------------------------------------------------------------------------
'
Private Sub btnSave_Click()

'    Dim btnCnt As Integer: btnCnt = 0
'    Dim msgCnt As Integer: msgCnt = 0
'    Dim useloop As Integer: useloop = 0
'    Dim thisText As String: thisText = vbNullString
    
    On Error GoTo btnSave_Click_Error

    ' config
    PzEEnableTooltips = LTrim$(Str$(chkEnableTooltips.Value))
    PzEEnableBalloonTooltips = LTrim$(Str$(chkEnableBalloonTooltips.Value))
    PzEShowTaskbar = LTrim$(Str$(chkShowTaskbar.Value))
    
    PzEGaugeSize = LTrim$(Str$(sliGaugeSize.Value))
    PzEScrollWheelDirection = cmbScrollWheelDirection.List(cmbScrollWheelDirection.ListIndex)
    
    ' general
    PzEGaugeFunctions = LTrim$(Str$(chkGaugeFunctions.Value))
    PzEAnimationInterval = LTrim$(Str$(sliAnimationInterval.Value))
    ''PzEWidgetSkew = LTrim$(Str$('sliWidgetSkew.Value))
    PzEStartup = LTrim$(Str$(chkGenStartup.Value))
    
    ' sounds
    PzEEnableSounds = LTrim$(Str$(chkEnableSounds.Value))
    
    'development
    PzEDebug = LTrim$(Str$(cmbDebug.ListIndex))
    PzEDblClickCommand = txtDblClickCommand.Text
    PzEOpenFile = txtOpenFile.Text
    PzEDefaultEditor = txtDefaultEditor.Text
    
    ' position
    PzEAspectHidden = LTrim$(Str$(cmbAspectHidden.ListIndex))
    PzEWidgetPosition = LTrim$(Str$(cmbWidgetPosition.ListIndex))
    PzEWidgetLandscape = LTrim$(Str$(cmbWidgetLandscape.ListIndex))
    PzEWidgetPortrait = LTrim$(Str$(cmbWidgetPortrait.ListIndex))
    PzELandscapeFormHoffset = txtLandscapeHoffset.Text
    PzELandscapeFormVoffset = txtLandscapeVoffset.Text
    PzEPortraitHoffset = txtPortraitHoffset.Text
    PzEPortraitYoffset = txtPortraitYoffset.Text
    
'    PzEvLocationPercPrefValue
'    PzEhLocationPercPrefValue

    ' fonts
    PzEPrefsFont = txtPrefsFont.Text
    PzEPrefsFontSize = txtPrefsFontSize.Text
    'PzEPrefsFontItalics = txtFontSize.Text

    ' Windows
    PzEWindowLevel = LTrim$(Str$(cmbWindowLevel.ListIndex))
    PzEPreventDragging = LTrim$(Str$(chkPreventDragging.Value))
    PzEOpacity = LTrim$(Str$(sliOpacity.Value))
    PzEWidgetHidden = LTrim$(Str$(chkWidgetHidden.Value))
    PzEHidingTime = LTrim$(Str$(cmbHidingTime.ListIndex))
    PzEIgnoreMouse = LTrim$(Str$(chkIgnoreMouse.Value))
            
    
    'development
    PzEDebug = LTrim$(Str$(cmbDebug.ListIndex))
    PzEDblClickCommand = txtDblClickCommand.Text
    PzEOpenFile = txtOpenFile.Text
    PzEDefaultEditor = txtDefaultEditor.Text
            
    If PzEStartup = "1" Then
        Call savestring(HKEY_CURRENT_USER, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "PzEarthWidget", """" & App.Path & "\" & "Panzer Earth Gauge.exe""")
    Else
        Call savestring(HKEY_CURRENT_USER, "SOFTWARE\Microsoft\Windows\CurrentVersion\Run", "PzEarthWidget", vbNullString)
    End If

    ' save the values from the general tab
    If fFExists(PzESettingsFile) Then
        sPutINISetting "Software\PzEarth", "enableTooltips", PzEEnableTooltips, PzESettingsFile
        sPutINISetting "Software\PzEarth", "enableBalloonTooltips", PzEEnableBalloonTooltips, PzESettingsFile
        sPutINISetting "Software\PzEarth", "showTaskbar", PzEShowTaskbar, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "gaugeSize", PzEGaugeSize, PzESettingsFile
        sPutINISetting "Software\PzEarth", "scrollWheelDirection", PzEScrollWheelDirection, PzESettingsFile
                
        sPutINISetting "Software\PzEarth", "gaugeFunctions", PzEGaugeFunctions, PzESettingsFile
        sPutINISetting "Software\PzEarth", "animationInterval", PzEAnimationInterval, PzESettingsFile
        'sPutINISetting "Software\PzEarth", "widgetSkew", 'PzEWidgetSkew, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "aspectHidden", PzEAspectHidden, PzESettingsFile
        sPutINISetting "Software\PzEarth", "widgetPosition", PzEWidgetPosition, PzESettingsFile
        sPutINISetting "Software\PzEarth", "widgetLandscape", PzEWidgetLandscape, PzESettingsFile
        sPutINISetting "Software\PzEarth", "widgetPortrait", PzEWidgetPortrait, PzESettingsFile

        sPutINISetting "Software\PzEarth", "prefsFont", PzEPrefsFont, PzESettingsFile
        sPutINISetting "Software\PzEarth", "prefsFontSize", PzEPrefsFontSize, PzESettingsFile
        sPutINISetting "Software\PzEarth", "prefsFontItalics", PzEPrefsFontItalics, PzESettingsFile
        sPutINISetting "Software\PzEarth", "prefsFontColour", PzEPrefsFontColour, PzESettingsFile

        'save the values from the Windows Config Items
        sPutINISetting "Software\PzEarth", "windowLevel", PzEWindowLevel, PzESettingsFile
        sPutINISetting "Software\PzEarth", "preventDragging", PzEPreventDragging, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "opacity", PzEOpacity, PzESettingsFile
        sPutINISetting "Software\PzEarth", "widgetHidden", PzEWidgetHidden, PzESettingsFile
        sPutINISetting "Software\PzEarth", "hidingTime", PzEHidingTime, PzESettingsFile
        sPutINISetting "Software\PzEarth", "ignoreMouse", PzEIgnoreMouse, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "startup", PzEStartup, PzESettingsFile

        sPutINISetting "Software\PzEarth", "enableSounds", PzEEnableSounds, PzESettingsFile
        sPutINISetting "Software\PzEarth", "lastSelectedTab", PzELastSelectedTab, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "debug", PzEDebug, PzESettingsFile
        sPutINISetting "Software\PzEarth", "dblClickCommand", PzEDblClickCommand, PzESettingsFile
        sPutINISetting "Software\PzEarth", "openFile", PzEOpenFile, PzESettingsFile
        sPutINISetting "Software\PzEarth", "defaultEditor", PzEDefaultEditor, PzESettingsFile
        
        sPutINISetting "Software\PzEarth", "maximiseFormX", PzEMaximiseFormX, PzESettingsFile
        sPutINISetting "Software\PzEarth", "maximiseFormY", PzEMaximiseFormY, PzESettingsFile

        'save the values from the Text Items

'        btnCnt = 0
'        msgCnt = 0
    End If
    
    ' set the tooltips on the prefs screen
    Call setPrefsTooltips

    ' sets the characteristics of the globe and menus immediately after saving
    Call adjustMainControls
    
    panzerEarthPrefs.SetFocus
    btnSave.Enabled = False ' disable the save button showing it has successfully saved
    
   On Error GoTo 0
   Exit Sub

btnSave_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnSave_Click of Form panzerEarthPrefs"

End Sub

' set a var on a checkbox tick
Private Sub chkEnableTooltips_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

Private Sub chkEnableSounds_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

Private Sub cmbRefreshInterval_Click()
    btnSave.Enabled = True ' enable the save button
End Sub

Private Sub cmbWindowLevel_Click()
    btnSave.Enabled = True ' enable the save button

End Sub
'---------------------------------------------------------------------------------------
' Procedure : btnPrefsFont_Click
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub btnPrefsFont_Click()

    Dim fntFont As String: fntFont = vbNullString
    Dim fntSize As Integer: fntSize = 0
    Dim fntWeight As Integer: fntWeight = 0
    Dim fntStyle As Boolean: fntStyle = False
    Dim fntColour As Long: fntColour = 0
    Dim fntItalics As Boolean: fntItalics = False
    Dim fntUnderline As Boolean: fntUnderline = False
    Dim fntFontResult As Boolean: fntFontResult = False
    
    On Error GoTo btnPrefsFont_Click_Error

    btnSave.Enabled = True ' enable the save button
    fntFont = PzEPrefsFont
    fntSize = Val(PzEPrefsFontSize)
    fntItalics = CBool(PzEPrefsFontItalics)
    fntColour = CLng(PzEPrefsFontColour)
        
    Call changeFont(panzerEarthPrefs, True, fntFont, fntSize, fntWeight, fntStyle, fntColour, fntItalics, fntUnderline, fntFontResult)
    
    PzEPrefsFont = CStr(fntFont)
    PzEPrefsFontSize = CStr(fntSize)
    PzEPrefsFontItalics = CStr(fntItalics)
    PzEPrefsFontColour = CStr(fntColour)

    If fFExists(PzESettingsFile) Then ' does the tool's own settings.ini exist?
        sPutINISetting "Software\PzEarth", "prefsFont", PzEPrefsFont, PzESettingsFile
        sPutINISetting "Software\PzEarth", "prefsFontSize", PzEPrefsFontSize, PzESettingsFile
        sPutINISetting "Software\PzEarth", "prefsFontItalics", PzEPrefsFontItalics, PzESettingsFile
        sPutINISetting "Software\PzEarth", "PrefsFontColour", PzEPrefsFontColour, PzESettingsFile
    End If
    
    If fntFont = vbNullString Then fntFont = "arial"
    txtPrefsFont.Text = fntFont
    txtPrefsFont.Font.Name = fntFont
    txtPrefsFont.Font.Size = fntSize
    txtPrefsFont.Font.Italic = fntItalics
    txtPrefsFont.ForeColor = fntColour
    
    txtPrefsFontSize.Text = fntSize

   On Error GoTo 0
   Exit Sub

btnPrefsFont_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure btnPrefsFont_Click of Form panzerEarthPrefs"

End Sub



'---------------------------------------------------------------------------------------
' Procedure : adjustPrefsControls
' Author    : beededea
' Date      : 12/05/2020
' Purpose   : adjust the controls so their startup position matches the last write of the config file
'---------------------------------------------------------------------------------------
'
Private Sub adjustPrefsControls()
    
    Dim fntWeight As Integer: fntWeight = 0
    Dim fntStyle As Boolean: fntStyle = False
    Dim sliGaugeSizeOldValue As Long
    
    On Error GoTo adjustPrefsControls_Error
            
    ' general tab
    chkGaugeFunctions.Value = Val(PzEGaugeFunctions)
    sliAnimationInterval.Value = Val(PzEAnimationInterval)
    chkGenStartup.Value = Val(PzEStartup)
    
    ' configuration tab
    
   
    ' check whether the size has been previously altered via ctrl+mousewheel on the widget
    sliGaugeSizeOldValue = sliGaugeSize.Value
    sliGaugeSize.Value = Val(PzEGaugeSize)
    If sliGaugeSize.Value <> sliGaugeSizeOldValue Then
        btnSave.Visible = True
    End If
    
    cmbScrollWheelDirection.ListIndex = Val(PzEScrollWheelDirection)
    chkEnableTooltips.Value = Val(PzEEnableTooltips)
    chkEnableBalloonTooltips.Value = Val(PzEEnableBalloonTooltips)
    chkShowTaskbar.Value = Val(PzEShowTaskbar)
    
    
    ' sounds tab
    chkEnableSounds.Value = Val(PzEEnableSounds)
    
    ' development
    cmbDebug.ListIndex = Val(PzEDebug)
    txtDblClickCommand.Text = PzEDblClickCommand
    txtOpenFile.Text = PzEOpenFile
    txtDefaultEditor.Text = PzEDefaultEditor
    
    If PzEPrefsFont <> vbNullString Then
        Call changeFormFont(panzerEarthPrefs, PzEPrefsFont, Val(PzEPrefsFontSize), fntWeight, fntStyle, PzEPrefsFontItalics, PzEPrefsFontColour)
    End If
       
    ' fonts tab
    txtPrefsFont.Text = PzEPrefsFont
    txtPrefsFontSize.Text = PzEPrefsFontSize
    
    ' position tab
    cmbAspectHidden.ListIndex = Val(PzEAspectHidden)
    cmbWidgetPosition.ListIndex = Val(PzEWidgetPosition)
        
    If PzEPreventDragging = "1" Then
        If aspectRatio = "landscape" Then
            txtLandscapeHoffset.Text = fMain.globeForm.Left
            txtLandscapeVoffset.Text = fMain.globeForm.Top
            txtLandscapeHoffset.ToolTipText = "Last Sampled Form X Horizontal Position : " & PzEMaximiseFormX & "px"
            txtLandscapeVoffset.ToolTipText = "Last Sampled Form Y Vertical Position : " & PzEMaximiseFormY & "px"
        Else
            txtPortraitHoffset.Text = fMain.globeForm.Left
            txtPortraitYoffset.Text = fMain.globeForm.Top
            txtPortraitHoffset.ToolTipText = "Last Sampled Form X Horizontal Position : " & PzEMaximiseFormX & "px"
            txtPortraitYoffset.ToolTipText = "Last Sampled Form Y Vertical Position : " & PzEMaximiseFormY & "px"
        End If
    End If
    
    
    'cmbWidgetLandscape
    cmbWidgetLandscape.ListIndex = Val(PzEWidgetLandscape)
    cmbWidgetPortrait.ListIndex = Val(PzEWidgetPortrait)
    txtLandscapeHoffset.Text = PzELandscapeFormHoffset
    txtLandscapeVoffset.Text = PzELandscapeFormVoffset
    txtPortraitHoffset.Text = PzEPortraitHoffset
    txtPortraitYoffset.Text = PzEPortraitYoffset

    ' Windows tab
    cmbWindowLevel.ListIndex = Val(PzEWindowLevel)
    chkIgnoreMouse.Value = Val(PzEIgnoreMouse)
    chkPreventDragging.Value = Val(PzEPreventDragging)
    sliOpacity.Value = Val(PzEOpacity)
    chkWidgetHidden.Value = Val(PzEWidgetHidden)
    cmbHidingTime.ListIndex = Val(PzEHidingTime)
        
   On Error GoTo 0
   Exit Sub

adjustPrefsControls_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adjustPrefsControls of Form PanzerEarthPrefs on line " & Erl

End Sub
'
'---------------------------------------------------------------------------------------
' Procedure : populatePrefsComboBoxes
' Author    : beededea
' Date      : 10/09/2022
' Purpose   : all combo boxes in the prefs are populated here with default values
'           : done by preference here rather than in the IDE
'---------------------------------------------------------------------------------------
'
Private Sub populatePrefsComboBoxes()

    On Error GoTo populatePrefsComboBoxes_Error

    cmbScrollWheelDirection.AddItem "up", 0
    cmbScrollWheelDirection.ItemData(0) = 0
    cmbScrollWheelDirection.AddItem "down", 1
    cmbScrollWheelDirection.ItemData(1) = 1
    
    cmbAspectHidden.AddItem "none", 0
    cmbAspectHidden.ItemData(0) = 0
    cmbAspectHidden.AddItem "portrait", 1
    cmbAspectHidden.ItemData(1) = 1
    cmbAspectHidden.AddItem "landscape", 2
    cmbAspectHidden.ItemData(2) = 2

    cmbWidgetPosition.AddItem "disabled", 0
    cmbWidgetPosition.ItemData(0) = 0
    cmbWidgetPosition.AddItem "enabled", 1
    cmbWidgetPosition.ItemData(1) = 1
    
    cmbWidgetLandscape.AddItem "disabled", 0
    cmbWidgetLandscape.ItemData(0) = 0
    cmbWidgetLandscape.AddItem "enabled", 1
    cmbWidgetLandscape.ItemData(1) = 1
    
    cmbWidgetPortrait.AddItem "disabled", 0
    cmbWidgetPortrait.ItemData(0) = 0
    cmbWidgetPortrait.AddItem "enabled", 1
    cmbWidgetPortrait.ItemData(1) = 1
    
    cmbDebug.AddItem "Debug OFF", 0
    cmbDebug.ItemData(0) = 0
    cmbDebug.AddItem "Debug ON", 1
    cmbDebug.ItemData(1) = 1
    
    ' populate comboboxes in the windows tab
    cmbWindowLevel.AddItem "Keep on top of other windows", 0
    cmbWindowLevel.ItemData(0) = 0
    cmbWindowLevel.AddItem "Normal", 0
    cmbWindowLevel.ItemData(1) = 1
    cmbWindowLevel.AddItem "Keep below all other windows", 0
    cmbWindowLevel.ItemData(2) = 2

    ' populate the hiding timer combobox
    cmbHidingTime.AddItem "1 minute", 0
    cmbHidingTime.ItemData(0) = 1
    cmbHidingTime.AddItem "5 minutes", 1
    cmbHidingTime.ItemData(1) = 5
    cmbHidingTime.AddItem "10 minutes", 2
    cmbHidingTime.ItemData(2) = 10
    cmbHidingTime.AddItem "20 minutes", 3
    cmbHidingTime.ItemData(3) = 20
    cmbHidingTime.AddItem "30 minutes", 4
    cmbHidingTime.ItemData(4) = 30
    cmbHidingTime.AddItem "I hour", 5
    cmbHidingTime.ItemData(5) = 60

    On Error GoTo 0
    Exit Sub

populatePrefsComboBoxes_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure populatePrefsComboBoxes of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
                
End Sub

'
'---------------------------------------------------------------------------------------
' Procedure : clearBorderStyle
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : removes all styling from the icon frames and makes the major frames below invisible too, not using control arrays.
'---------------------------------------------------------------------------------------
'
Private Sub clearBorderStyle()

   On Error GoTo clearBorderStyle_Error

    fraGeneral.Visible = False
    fraConfig.Visible = False
    fraFonts.Visible = False
    fraWindow.Visible = False
    fraPosition.Visible = False
    fraDevelopment.Visible = False
    fraSounds.Visible = False
    fraAbout.Visible = False

    fraGeneralButton.BorderStyle = 0
    fraConfigButton.BorderStyle = 0
    fraDevelopmentButton.BorderStyle = 0
    fraPositionButton.BorderStyle = 0
    fraFontsButton.BorderStyle = 0
    fraWindowButton.BorderStyle = 0
    fraSoundsButton.BorderStyle = 0
    fraAboutButton.BorderStyle = 0

   On Error GoTo 0
   Exit Sub

clearBorderStyle_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure clearBorderStyle of Form panzerEarthPrefs"

End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Resize
' Author    : beededea
' Date      : 30/05/2023
' Purpose   : If the form is NOT to be resized then restrain the height/width. Otherwise,
'             maintain the aspect ratio. When minimised and a resize is called then simply exit.
'---------------------------------------------------------------------------------------
'
Private Sub Form_Resize()
    Dim ratio As Double: ratio = 0
    
    On Error GoTo Form_Resize_Error
    
    If WindowState = vbMinimized Then Exit Sub

    ratio = cFormHeight / cFormWidth
    
    If dynamicSizingFlg = True Then
        Me.Width = Me.Height / ratio ' maintain the aspect ratio
        Call resizeControls
        
        Call loadHigherResImages
    Else
        If Me.WindowState = 0 Then
            If Me.Width > 9090 Then Me.Width = 9090
            If Me.Width < 9085 Then Me.Width = 9090
            If lastFormHeight <> 0 Then Me.Height = lastFormHeight
        End If
    End If


    
    On Error GoTo 0
    Exit Sub

Form_Resize_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Resize of Form panzerEarthPrefs"
            Resume Next
          End If
    End With
End Sub

'---------------------------------------------------------------------------------------
' Procedure : Form_Unload
' Author    : beededea
' Date      : 27/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub Form_Unload(Cancel As Integer)
   On Error GoTo Form_Unload_Error

    PzEPrefsLoadedFlg = False
    
    Call writePrefsPosition
    
    DestroyToolTip

   On Error GoTo 0
   Exit Sub

Form_Unload_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure Form_Unload of Form panzerEarthPrefs"
End Sub
Private Sub Form_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fraScrollbarCover.Visible = True
End Sub
Private Sub fraAbout_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraAbout_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fraScrollbarCover.Visible = True
    If PzEEnableTooltips = "1" Then CreateToolTip fraAbout.hwnd, "The About tab tells you all about this program and its creation using VB6.", _
                  TTIconInfo, "Help on the About Tab", , , , True
End Sub
Private Sub fraConfigInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraConfigInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableTooltips = "1" Then CreateToolTip fraConfigInner.hwnd, "The configuration panel is the location for optional configuration items. These items change how Pz Earth operates, configure them to suit your needs and your mode of operation.", _
                  TTIconInfo, "Help on Configuration", , , , True

End Sub
Private Sub fraConfig_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraConfig_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableTooltips = "1" Then CreateToolTip fraConfig.hwnd, "The configuration panel is the location for optional configuration items. These items change how Pz Earth operates, configure them to suit your needs and your mode of operation.", _
                  TTIconInfo, "Help on Configuration", , , , True

End Sub

Private Sub fraDefaultEditor_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblGitHub.ForeColor = &H80000012
End Sub

Private Sub fraDevelopment_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraDevelopment_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraDevelopment.hwnd, "This tab contains elements that will assist in debugging and developing this program further. ", _
                  TTIconInfo, "Help on the Development Tab", , , , True
End Sub


Private Sub fraDevelopmentInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraDevelopmentInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraDevelopmentInner.hwnd, "This tab contains elements that will assist in debugging and developing this program further. ", _
                  TTIconInfo, "Help on the Development Tab", , , , True

End Sub
Private Sub fraFonts_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraFonts.hwnd, "This tab allows you to set a specific font for the preferences only as there are no textual elements in the main program. We suggest Centurion Light SF at 8pt, which you will find bundled in the PzE program folder. Choose a small 8pt font for each.", _
                  TTIconInfo, "Help on Setting the Fonts", , , , True

End Sub
Private Sub fraFontsInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraFontsInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraFontsInner.hwnd, "This tab allows you to set a specific font for the preferences only as there are no textual elements in the main program. We suggest Centurion Light SF at 8pt, which you will find bundled in the PzE program folder. Choose a small 8pt font for each.", _
                  TTIconInfo, "Help on Setting the Fonts", , , , True
End Sub
'Private Sub fraConfigurationButtonInner_MouseDown(Button As Integer, Shift As Integer, x As Single, y As Single)
'    If Button = 2 Then
'        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
'    End If
'End Sub
Private Sub fraGeneral_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraGeneral_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraGeneral.hwnd, "The General Panel contains the most important user-configurable items required for the program to operate correctly.", _
                  TTIconInfo, "Help on Essential Configuration", , , , True
End Sub

Private Sub fraGeneralInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraGeneralInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraGeneralInner.hwnd, "The General Panel contains the most important user-configurable items required for the program to operate correctly.", _
                  TTIconInfo, "Help on Essential Configuration", , , , True
End Sub

Private Sub fraPosition_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
     If PzEEnableTooltips = "1" Then CreateToolTip fraPosition.hwnd, "This tab allows you to determine the X and Y positioning of your widget in landscape and portrait screen modes. Best left well alone unless you use Windows on a tablet.", _
                  TTIconInfo, "Help on Tablet Positioning", , , , True
End Sub
Private Sub fraPositionInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraPositionInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip fraPositionInner.hwnd, "This tab allows you to determine the X and Y positioning of your widget in landscape and portrait screen modes. Best left well alone unless you use Windows on a tablet.", _
                  TTIconInfo, "Help on Tablet Positioning", , , , True
End Sub

Private Sub fraScrollbarCover_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fraScrollbarCover.Visible = False

End Sub
Private Sub fraSounds_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraSounds_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
 If PzEEnableTooltips = "1" Then CreateToolTip fraSounds.hwnd, "The sound panel allows you to configure the sounds that occur within PzE. Some of the animations have associated sounds, you can control these here..", _
                  TTIconInfo, "Help on Configuring Sounds", , , , True
End Sub
Private Sub fraSoundsInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraSoundsInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
     If PzEEnableTooltips = "1" Then CreateToolTip fraSoundsInner.hwnd, "The sound panel allows you to configure the sounds that occur within PzE. Some of the animations have associated sounds, you can control these here..", _
                  TTIconInfo, "Help on Configuring Sounds", , , , True
End Sub

Private Sub fraWindow_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraWindow_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
     If PzEEnableTooltips = "1" Then CreateToolTip fraWindow.hwnd, "The Opacity and Window Level of the program are rather strange characteristics to change in a Windows program, however this widget is a copy of a Yahoo Widget of the same name. All widgets have similar window tab options including the capability to change the opacity and window level. Whether these options are useful to you or anyone is a moot point but as this tool aims to replicate the YWE version functionality it has been reproduced here. It is here as more of an experiment as to how to implement a feature, one carried over from the Yahoo Widget (javascript) version of this program.", _
                  TTIconInfo, "Help on YWE Quirk Mode Options", , , , True
End Sub
Private Sub fraWindowInner_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub
Private Sub fraWindowInner_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
     If PzEEnableTooltips = "1" Then CreateToolTip fraWindowInner.hwnd, "The Opacity and Window Level of the program are rather strange characteristics to change in a Windows program, however this widget is a copy of a Yahoo Widget of the same name. All widgets have similar window tab options including the capability to change the opacity and window level. Whether these options are useful to you or anyone is a moot point but as this tool aims to replicate the YWE version functionality it has been reproduced here. It is here as more of an experiment as to how to implement a feature, one carried over from the Yahoo Widget (javascript) version of this program.", _
                  TTIconInfo, "Help on YWE Quirk Mode Options", , , , True
End Sub





Private Sub imgGeneral_Click()
    imgGeneral.Visible = False
    imgGeneralClicked.Visible = True
End Sub

Private Sub imgGeneral_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("general", imgGeneral, imgGeneralClicked, fraGeneral, fraGeneralButton) ' was imgGeneralMouseUpEvent
End Sub



Private Sub lblGitHub_dblClick()
    Dim answer As VbMsgBoxResult: answer = vbNo
    
    answer = MsgBox("This option opens a browser window and take you straight to Github. Proceed?", vbExclamation + vbYesNo)
    If answer = vbYes Then
       Call ShellExecute(Me.hwnd, "Open", "https://github.com/yereverluvinunclebert/Panzer-Earth-gauge-VB6", vbNullString, App.Path, 1)
    End If
End Sub

Private Sub lblGitHub_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    lblGitHub.ForeColor = &H8000000D
End Sub

Private Sub txtAboutText_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If Button = vbRightButton Then
        txtAboutText.Enabled = False
        txtAboutText.Enabled = True
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub

Private Sub txtAboutText_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    fraScrollbarCover.Visible = False
End Sub

Private Sub imgAbout_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgAbout.Visible = False
    imgAboutClicked.Visible = True
End Sub
Private Sub imgAbout_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("about", imgAbout, imgAboutClicked, fraAbout, fraAboutButton)
End Sub

Private Sub imgDevelopment_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgDevelopment.Visible = False
    imgDevelopmentClicked.Visible = True
End Sub

Private Sub imgDevelopment_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("development", imgDevelopment, imgDevelopmentClicked, fraDevelopment, fraDevelopmentButton)
End Sub

Private Sub imgFonts_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgFonts.Visible = False
    imgFontsClicked.Visible = True
End Sub

Private Sub imgFonts_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("fonts", imgFonts, imgFontsClicked, fraFonts, fraFontsButton)
End Sub

Private Sub imgConfig_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgConfig.Visible = False
    imgConfigClicked.Visible = True
End Sub

Private Sub imgConfig_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("config", imgConfig, imgConfigClicked, fraConfig, fraConfigButton) ' was imgConfigMouseUpEvent
End Sub

Private Sub imgGeneral_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgGeneral.Visible = False
    imgGeneralClicked.Visible = True
End Sub


Private Sub imgPosition_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgPosition.Visible = False
    imgPositionClicked.Visible = True
End Sub

Private Sub imgPosition_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("position", imgPosition, imgPositionClicked, fraPosition, fraPositionButton)
End Sub

Private Sub imgSounds_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    '
    imgSounds.Visible = False
    imgSoundsClicked.Visible = True
End Sub

Private Sub imgSounds_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    'Call imgSoundsMouseUpEvent
    Call picButtonMouseUpEvent("sounds", imgSounds, imgSoundsClicked, fraSounds, fraSoundsButton)
End Sub

Private Sub imgWindow_MouseDown(Button As Integer, Shift As Integer, X As Single, Y As Single)
    imgWindow.Visible = False
    imgWindowClicked.Visible = True
End Sub

Private Sub imgWindow_MouseUp(Button As Integer, Shift As Integer, X As Single, Y As Single)
    Call picButtonMouseUpEvent("window", imgWindow, imgWindowClicked, fraWindow, fraWindowButton)
End Sub

Private Sub sliAnimationInterval_Change()
    globeWidget.RotationSpeed = sliAnimationInterval.Value
    btnSave.Enabled = True ' enable the save button

End Sub

'Private Sub 'sliWidgetSkew_Click()
'    btnSave.Enabled = True ' enable the save button
'    globeWidget.GlobeSkewDeg = 'sliWidgetSkew.Value
'End Sub

Private Sub sliGaugeSize_Change()
    btnSave.Enabled = True ' enable the save button
    globeWidget.Zoom = sliGaugeSize.Value / 100
End Sub

Private Sub sliOpacity_Change()
    btnSave.Enabled = True ' enable the save button
    globeWidget.opacity = sliOpacity.Value / 100
    PzEOpacity = LTrim$(Str$(sliOpacity.Value))
End Sub

Private Sub sliOpacity_Click()
    btnSave.Enabled = True ' enable the save button
End Sub


Private Sub Form_MouseDown(ByRef Button As Integer, ByRef Shift As Integer, ByRef X As Single, ByRef Y As Single)
    If Button = 2 Then

        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
        
    End If
End Sub

'Private Sub fraEmail_MouseDown(ByRef Button As Integer, ByRef Shift As Integer, ByRef x As Single, ByRef y As Single)
'    If Button = 2 Then
'        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
'    End If
'End Sub

'Private Sub fraEmojis_MouseDown(ByRef Button As Integer, ByRef Shift As Integer, ByRef x As Single, ByRef y As Single)
'    If Button = 2 Then
'        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
'    End If
'End Sub

Private Sub fraFonts_MouseDown(ByRef Button As Integer, ByRef Shift As Integer, ByRef X As Single, ByRef Y As Single)
    If Button = 2 Then
        Me.PopupMenu prefsMnuPopmenu, vbPopupMenuRightButton
    End If
End Sub

Private Sub txtDblClickCommand_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtDefaultEditor_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtLandscapeHoffset_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtLandscapeVoffset_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtOpenFile_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtPortraitHoffset_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtPortraitYoffset_Change()
    btnSave.Enabled = True ' enable the save button

End Sub

Private Sub txtPrefsFont_Change()
    btnSave.Enabled = True ' enable the save button
End Sub

'---------------------------------------------------------------------------------------
' Procedure : mnuAbout_Click
' Author    : beededea
' Date      : 13/02/2019
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub mnuAbout_Click()
    
    On Error GoTo mnuAbout_Click_Error

    Call aboutClickEvent

    On Error GoTo 0
    Exit Sub

mnuAbout_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuAbout_Click of form menuForm"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : setPrefsTooltips
' Author    : beededea
' Date      : 27/04/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Public Sub setPrefsTooltips()

   On Error GoTo setPrefsTooltips_Error

    If PzEEnableTooltips = "1" Then
        imgConfig.ToolTipText = "Opens the configuration tab"
        imgConfigClicked.ToolTipText = "Opens the configuration tab"
        imgDevelopment.ToolTipText = "Opens the Development tab"
        imgDevelopmentClicked.ToolTipText = "Opens the Development tab"
        imgPosition.ToolTipText = "Opens the Position tab"
        imgPositionClicked.ToolTipText = "Opens the Position tab"
        btnSave.ToolTipText = "Save the changes you have made to the preferences"
        btnHelp.ToolTipText = "Open the help utility"
        imgSounds.ToolTipText = "Opens the Sounds tab"
        imgSoundsClicked.ToolTipText = "Opens the Sounds tab"
        btnCancel.ToolTipText = "Close the utility"
        imgWindow.ToolTipText = "Opens the Window tab"
        imgWindowClicked.ToolTipText = "Opens the Window tab"
        lblWindow.ToolTipText = "Opens the Window tab"
        imgFonts.ToolTipText = "Opens the Fonts tab"
        imgFonts.ToolTipText = "Opens the Fonts tab"
        imgFontsClicked.ToolTipText = "Opens the Fonts tab"
        imgGeneral.ToolTipText = "Opens the general tab"
        imgGeneralClicked.ToolTipText = "Opens the general tab"
        lblPosition(6).ToolTipText = "Tablets only. Don't fiddle with this unless you really know what you are doing. Here you can choose whether this Pz Earth widget is hidden by default in either landscape or portrait mode or not at all. This option allows you to have certain widgets that do not obscure the screen in either landscape or portrait. If you accidentally set it so you can't find your widget on screen then change the setting here to NONE."
        chkGenStartup.ToolTipText = "Check this box to enable the automatic start of the program when Windows is started."
        chkGaugeFunctions.ToolTipText = "When checked this box enables the spinning earth functionality. Any adjustment takes place instantly. "
        sliAnimationInterval.ToolTipText = "Adjust to make the animation smooth or choppy. Any adjustment in the interval takes place instantly. Lower values are smoother but the smoother it runs the more CPU it uses."
        txtPortraitYoffset.ToolTipText = "Field to hold the vertical offset for the widget position in portrait mode."
        txtPortraitHoffset.ToolTipText = "Field to hold the horizontal offset for the widget position in portrait mode."
        txtLandscapeVoffset.ToolTipText = "Field to hold the horizontal offset for the widget position in landscape mode."
        txtLandscapeHoffset.ToolTipText = "Field to hold the horizontal offset for the widget position in landscape mode."
        cmbWidgetLandscape.ToolTipText = "The widget can be locked into landscape mode, it ensures that the widget always appears where you want it to. Using the fields below, you can assign a default x/y position for Landscape mode. "
        cmbWidgetPortrait.ToolTipText = "The widget can be locked into portrait mode, it ensures that the widget always appears where you want it to. Using the fields below, you can assign a default x/y position for portrait mode. "
        cmbWidgetPosition.ToolTipText = "Tablets only. The widget can be positioned proportionally when switching between portrait/landscape. If you want to enable this, disable the options below."
        cmbAspectHidden.ToolTipText = " Here you can choose whether the widget is hidden by default in either landscape or portrait mode or not at all. This allows you to have certain widgets that do not obscure the screen in one mode or another. If you accidentally set it so you can't find it on screen then change the setting here to none."
        chkEnableSounds.ToolTipText = "Check this box to enable or disable all of the sounds used during any animation on the main screen."
        btnDefaultEditor.ToolTipText = "Click to select the .vbp file to edit the program - You need to have access to the source!"
        txtDblClickCommand.ToolTipText = "Enter a Windows command for the gauge to operate when double-clicked."
        btnOpenFile.ToolTipText = "Click to select a particular file for the gauge to run or open when double-clicked."
        txtOpenFile.ToolTipText = "Enter a particular file for the gauge to run or open when double-clicked."
        cmbDebug.ToolTipText = "Choose to set debug mode."
        txtPrefsFontSize.ToolTipText = "Disabled for manual input. Choose a font size using the font selector to be used within this preferences window only"
        btnPrefsFont.ToolTipText = "The Font Selector."
        txtPrefsFont.ToolTipText = "Disabled for manual input. Choose a font via the font selector to be used only for this preferences window"
        txtPrefsFontSize.ToolTipText = "Choose a font size that fits the text boxes"
        cmbWindowLevel.ToolTipText = "You can determine the window position here. Set to bottom to keep the widget below other windows."
        cmbHidingTime.ToolTipText = "."
        chkEnableResizing.ToolTipText = "Provides an alternative method of supporting high DPI screens."
        chkPreventDragging.ToolTipText = "Checking this box turns off the ability to drag the program with the mouse. The locking in position effect takes place instantly."
        chkIgnoreMouse.ToolTipText = "Checking this box causes the program to ignore all mouse events."
        sliOpacity.ToolTipText = "Set the transparency of the program. Any change in opacity takes place instantly."
        cmbScrollWheelDirection.ToolTipText = "To change the direction of the mouse scroll wheel when resiziing the globe gauge."
        chkEnableBalloonTooltips.ToolTipText = "Check the box to enable larger balloon tooltips for all controls on the main program"
        chkShowTaskbar.ToolTipText = "Check the box to show the widget in the taskbar"
        chkEnableTooltips.ToolTipText = "Check the box to enable tooltips for all controls on the main program"
        sliGaugeSize.ToolTipText = "Adjust to a percentage of the original size. Any adjustment in size takes place instantly (you can also use Ctrl+Mousewheel hovering over the globe itself)."
        'sliWidgetSkew.ToolTipText = "Adjust to a degree skew of the original position. Any adjustment in direction takes place instantly (you can also use the Mousewheel hovering over the globe itself."
        btnFacebook.ToolTipText = "This will link you to the our Steampunk/Dieselpunk program users Group."
        imgAbout.ToolTipText = "Opens the About tab"
        btnAboutDebugInfo.ToolTipText = "This gives access to the debugging tool"
        btnDonate.ToolTipText = "Buy me a Kofi! This button opens a browser window and connects to Kofi donation page"
        btnUpdate.ToolTipText = "Here you can visit the update location where you can download new versions of the programs."
        lblFontsTab(0).ToolTipText = "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
        lblFontsTab(1).ToolTipText = "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
        lblFontsTab(2).ToolTipText = "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
        lblFontsTab(6).ToolTipText = "We suggest Centurion Light SF at 8pt - which you will find in the FCW program folder"
        lblFontsTab(7).ToolTipText = "Choose a font size that fits the text boxes"
        txtPrefsFontCurrentSize.ToolTipText = "Disabled for manual input. Shows the current font size when form resizing is enabled."
        lblCurrentFontsTab.ToolTipText = "Disabled for manual input. Shows the current font size when form resizing is enabled."
        
    Else
        imgConfig.ToolTipText = vbNullString
        imgConfigClicked.ToolTipText = vbNullString
        imgDevelopment.ToolTipText = vbNullString
        imgDevelopmentClicked.ToolTipText = vbNullString
        imgPosition.ToolTipText = vbNullString
        imgPositionClicked.ToolTipText = vbNullString
        btnSave.ToolTipText = vbNullString
        btnHelp.ToolTipText = vbNullString
        imgSounds.ToolTipText = vbNullString
        imgSoundsClicked.ToolTipText = vbNullString
        btnCancel.ToolTipText = vbNullString
        imgWindow.ToolTipText = vbNullString
        imgWindowClicked.ToolTipText = vbNullString
        imgFonts.ToolTipText = vbNullString
        imgFontsClicked.ToolTipText = vbNullString
        imgGeneral.ToolTipText = vbNullString
        imgGeneralClicked.ToolTipText = vbNullString
        chkGenStartup.ToolTipText = vbNullString
        chkGaugeFunctions.ToolTipText = vbNullString
        sliAnimationInterval.ToolTipText = vbNullString
        txtPortraitYoffset.ToolTipText = vbNullString
        txtPortraitHoffset.ToolTipText = vbNullString
        txtLandscapeVoffset.ToolTipText = vbNullString
        txtLandscapeHoffset.ToolTipText = vbNullString
        cmbWidgetLandscape.ToolTipText = vbNullString
        cmbWidgetPortrait.ToolTipText = vbNullString
        cmbWidgetPosition.ToolTipText = vbNullString
        cmbAspectHidden.ToolTipText = vbNullString
        chkEnableSounds.ToolTipText = vbNullString
        btnDefaultEditor.ToolTipText = vbNullString
        txtDblClickCommand.ToolTipText = vbNullString
        btnOpenFile.ToolTipText = vbNullString
        txtOpenFile.ToolTipText = vbNullString
        cmbDebug.ToolTipText = vbNullString
        txtPrefsFontSize.ToolTipText = vbNullString
        btnPrefsFont.ToolTipText = vbNullString
        txtPrefsFont.ToolTipText = vbNullString
        cmbWindowLevel.ToolTipText = vbNullString
        cmbHidingTime.ToolTipText = vbNullString
        chkEnableResizing.ToolTipText = ""
        chkPreventDragging.ToolTipText = vbNullString
        chkIgnoreMouse.ToolTipText = vbNullString
        sliOpacity.ToolTipText = vbNullString
        cmbScrollWheelDirection.ToolTipText = vbNullString
        chkEnableBalloonTooltips.ToolTipText = vbNullString
        chkShowTaskbar.ToolTipText = vbNullString
        chkEnableTooltips.ToolTipText = vbNullString
        sliGaugeSize.ToolTipText = vbNullString
        'sliWidgetSkew.ToolTipText = ""
        btnFacebook.ToolTipText = vbNullString
        imgAbout.ToolTipText = vbNullString
        btnAboutDebugInfo.ToolTipText = vbNullString
        btnDonate.ToolTipText = vbNullString
        btnUpdate.ToolTipText = vbNullString
        lblFontsTab(0).ToolTipText = vbNullString
        lblFontsTab(1).ToolTipText = vbNullString
        lblFontsTab(2).ToolTipText = vbNullString
        lblFontsTab(6).ToolTipText = vbNullString
        lblFontsTab(7).ToolTipText = vbNullString
        txtPrefsFontCurrentSize.ToolTipText = vbNullString
        lblCurrentFontsTab.ToolTipText = vbNullString
    End If

   On Error GoTo 0
   Exit Sub

setPrefsTooltips_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setPrefsTooltips of Form panzerEarthPrefs"

End Sub
'---------------------------------------------------------------------------------------
' Procedure : DestroyToolTip
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : It's not a bad idea to put this in the Form_Unload event just to make sure.
'---------------------------------------------------------------------------------------
'
Public Sub DestroyToolTip()
    '
   On Error GoTo DestroyToolTip_Error

    If hwndTT <> 0& Then DestroyWindow hwndTT
    hwndTT = 0&

   On Error GoTo 0
   Exit Sub

DestroyToolTip_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure DestroyToolTip of Form panzerEarthPrefs"
End Sub
'---------------------------------------------------------------------------------------
' Procedure : loadPrefsAboutText
' Author    : beededea
' Date      : 12/03/2020
' Purpose   : The text for the about page is stored here
'---------------------------------------------------------------------------------------
'
Private Sub loadPrefsAboutText()
    On Error GoTo loadPrefsAboutText_Error
    'If debugflg = 1 Then Debug.Print "%loadPrefsAboutText"
    
    lblMajorVersion.Caption = App.Major
    lblMinorVersion.Caption = App.Minor
    lblRevisionNum.Caption = App.Revision
    
    Call LoadFileToTB(txtAboutText, App.Path & "\resources\txt\about.txt", False)

   On Error GoTo 0
   Exit Sub

loadPrefsAboutText_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure loadPrefsAboutText of Form PanzerEarthPrefs"
    
End Sub

'
'---------------------------------------------------------------------------------------
' Procedure : picButtonMouseUpEvent
' Author    : beededea
' Date      : 02/05/2023
' Purpose   : capture the icon button clicks avoiding creating a control array
'---------------------------------------------------------------------------------------
'
Private Sub picButtonMouseUpEvent(ByVal thisTabName As String, ByRef thisPicName As Image, ByRef thisPicNameClicked As Image, ByRef thisFraName As Frame, Optional ByRef thisFraButtonName As Frame)
    
    On Error GoTo picButtonMouseUpEvent_Error
    
    Dim padding As Long: padding = 0
    Dim borderWidth As Long: borderWidth = 0
    Dim captionHeight As Long: captionHeight = 0
    
    
    thisPicNameClicked.Visible = False
    thisPicName.Visible = True
      
    btnSave.Visible = False
    btnCancel.Visible = False
    btnHelp.Visible = False
    
    Call clearBorderStyle

    PzELastSelectedTab = thisTabName
    sPutINISetting "Software\PzEarth", "lastSelectedTab", PzELastSelectedTab, PzESettingsFile

    thisFraName.Visible = True
    thisFraButtonName.BorderStyle = 1
    
    btnSave.Top = thisFraName.Top + thisFraName.Height + 150
    btnCancel.Top = btnSave.Top
    btnHelp.Top = btnSave.Top
    
    btnSave.Visible = True
    btnCancel.Visible = True
    btnHelp.Visible = True
    
    lblAsterix.Top = btnSave.Top
    chkEnableResizing.Top = btnSave.Top
    'chkEnableResizing.Left = lblAsterix.Left
    
    borderWidth = (Me.Width - Me.ScaleWidth) / 2
    captionHeight = Me.Height - Me.ScaleHeight - borderWidth
        
    ' under windows 10+ the internal window calcs are all wrong due to the bigger title bars
    If dynamicSizingFlg = False Then
        padding = 200 ' add normal padding below the help button to position the bottom of the form

        lastFormHeight = btnHelp.Top + btnHelp.Height + captionHeight + borderWidth + padding
        panzerEarthPrefs.Height = lastFormHeight
    End If
    
    If thisTabName = "about" Then
        lblAsterix.Visible = False
        chkEnableResizing.Visible = True
    Else
        lblAsterix.Visible = True
        chkEnableResizing.Visible = False
    End If
    
   On Error GoTo 0
   Exit Sub

picButtonMouseUpEvent_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure picButtonMouseUpEvent of Form panzerEarthPrefs"

End Sub





''---------------------------------------------------------------------------------------
'' Procedure : scrollFrameDownward
'' Author    : beededea
'' Date      : 02/05/2023
'' Purpose   : unused as the scrolling causes blinking, will reduce the interval and re-test
''---------------------------------------------------------------------------------------
''
'Private Sub scrollFrameDownward(ByVal frameToextend As Frame, ByVal fromPosition As Integer, ByVal toPosition As Integer)
'
'    Dim useloop As Integer: useloop = 0
'    Dim currentHeight As Long: currentHeight = 0
'    Dim loopEnd As Long: loopEnd = 0
'    Dim frmCount  As Integer: frmCount = 0
'    Dim frameCount  As Integer: frameCount = 0
'    Dim stepAmount  As Integer: stepAmount = 0
'
'   On Error GoTo scrollFrameDownward_Error
'
'    currentHeight = fromPosition
'    If toPosition > fromPosition Then
'            loopEnd = toPosition - fromPosition
'            stepAmount = 1
'    Else
'            loopEnd = fromPosition - toPosition
'            stepAmount = -1
'    End If
'    For useloop = 1 To loopEnd
'        frameToextend.Height = currentHeight
'        If stepAmount = 1 Then
'            currentHeight = currentHeight + 1
'            If currentHeight >= toPosition Then
'                currentHeight = toPosition
'                Exit For
'            End If
'        End If
'        If stepAmount = -1 Then
'            currentHeight = currentHeight - 1
'            If currentHeight <= toPosition Then
'                currentHeight = toPosition
'                Exit For
'            End If
'        End If
'
'        frameCount = frameCount + 1
'        If frameCount >= 50 Then
'            frameCount = 0
'            frameToextend.Refresh
'        End If
'
'        frmCount = frmCount + 1
'        If frmCount >= 500 Then
'            frmCount = 0
'            panzerEarthPrefs.Refresh
'        End If
'    Next useloop
'
'   On Error GoTo 0
'   Exit Sub
'
'scrollFrameDownward_Error:
'
'    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure scrollFrameDownward of Form panzerEarthPrefs"
'
'End Sub


'---------------------------------------------------------------------------------------
' Procedure : themeTimer_Timer
' Author    : beededea
' Date      : 13/06/2020
' Purpose   : a timer to apply a theme automatically
'---------------------------------------------------------------------------------------
'
Private Sub themeTimer_Timer()
        
    Dim SysClr As Long: SysClr = 0

    On Error GoTo themeTimer_Timer_Error

    SysClr = GetSysColor(COLOR_BTNFACE)

    If SysClr <> storeThemeColour Then
        Call setThemeColour
    End If

   On Error GoTo 0
   Exit Sub

themeTimer_Timer_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure themeTimer_Timer of Form PanzerEarthPrefs"

End Sub



'---------------------------------------------------------------------------------------
' Procedure : mnuCoffee_Click
' Author    : beededea
' Date      : 13/02/2019
' Purpose   : main menu item to buy the developer a coffee
'---------------------------------------------------------------------------------------
'
Private Sub mnuCoffee_Click()
        
    Call mnuCoffee_ClickEvent

    On Error GoTo 0
    Exit Sub
mnuCoffee_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuCoffee_Click of Form panzerEarthPrefs"
End Sub


'
'---------------------------------------------------------------------------------------
' Procedure : mnuLicenceA_Click
' Author    : beededea
' Date      : 17/08/2022
' Purpose   : menu option to show licence
'---------------------------------------------------------------------------------------
'
Private Sub mnuLicenceA_Click()
    On Error GoTo mnuLicenceA_Click_Error

    Call mnuLicence_ClickEvent

    On Error GoTo 0
    Exit Sub

mnuLicenceA_Click_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuLicenceA_Click of Form panzerEarthPrefs"
            Resume Next
          End If
    End With

End Sub



'---------------------------------------------------------------------------------------
' Procedure : mnuSupport_Click
' Author    : beededea
' Date      : 13/02/2019
' Purpose   : menu option to open support page
'---------------------------------------------------------------------------------------
'
Private Sub mnuSupport_Click()
    
    On Error GoTo mnuSupport_Click_Error

    Call mnuSupport_ClickEvent

    On Error GoTo 0
    Exit Sub

mnuSupport_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuSupport_Click of Form panzerEarthPrefs"
End Sub




Private Sub mnuClosePreferences_Click()
    Call btnCancel_Click
End Sub


'---------------------------------------------------------------------------------------
' Procedure : mnuAuto_Click
' Author    : beededea
' Date      : 19/05/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub mnuAuto_Click()
    
   On Error GoTo mnuAuto_Click_Error

    If panzerEarthPrefs.themeTimer.Enabled = True Then
            MsgBox "Automatic Theme Selection is now Disabled"
            panzerEarthPrefs.mnuAuto.Caption = "Auto Theme Disabled - Click to Enable"
            panzerEarthPrefs.mnuAuto.Checked = False
            
            panzerEarthPrefs.themeTimer.Enabled = False
    Else
            MsgBox "Auto Theme Selection Enabled. If the o/s theme changes the utility should automatically skin the utility to suit the theme."
            panzerEarthPrefs.mnuAuto.Caption = "Auto Theme Enabled - Click to Disable"
            panzerEarthPrefs.mnuAuto.Checked = True
            
            panzerEarthPrefs.themeTimer.Enabled = True
            Call setThemeColour
    End If

   On Error GoTo 0
   Exit Sub

mnuAuto_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuAuto_Click of Form PanzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : mnuDark_Click
' Author    : beededea
' Date      : 19/05/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub mnuDark_Click()
   On Error GoTo mnuDark_Click_Error

    panzerEarthPrefs.mnuAuto.Caption = "Auto Theme Disabled - Click to Enable"
    panzerEarthPrefs.mnuAuto.Checked = False
    panzerEarthPrefs.mnuDark.Caption = "Dark Theme Enabled"
    panzerEarthPrefs.mnuLight.Caption = "Light Theme Enable"
    panzerEarthPrefs.themeTimer.Enabled = False
    
    PzESkinTheme = "dark"

    Call setThemeShade(212, 208, 199)

   On Error GoTo 0
   Exit Sub

mnuDark_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuDark_Click of Form PanzerEarthPrefs"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : mnuLight_Click
' Author    : beededea
' Date      : 19/05/2020
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub mnuLight_Click()
    'MsgBox "Auto Theme Selection Manually Disabled"
   On Error GoTo mnuLight_Click_Error
    
    panzerEarthPrefs.mnuAuto.Caption = "Auto Theme Disabled - Click to Enable"
    panzerEarthPrefs.mnuAuto.Checked = False
    panzerEarthPrefs.mnuDark.Caption = "Dark Theme Enable"
    panzerEarthPrefs.mnuLight.Caption = "Light Theme Enabled"
    panzerEarthPrefs.themeTimer.Enabled = False
    
    PzESkinTheme = "light"

    Call setThemeShade(240, 240, 240)

   On Error GoTo 0
   Exit Sub

mnuLight_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure mnuLight_Click of Form PanzerEarthPrefs"
End Sub




'
'---------------------------------------------------------------------------------------
' Procedure : setThemeShade
' Author    : beededea
' Date      : 06/05/2023
' Purpose   : set the theme shade, Windows classic dark/new lighter theme colours
'---------------------------------------------------------------------------------------
'
Private Sub setThemeShade(ByVal redC As Integer, ByVal greenC As Integer, ByVal blueC As Integer)
    
    Dim ctrl As Control
    
    On Error GoTo setThemeShade_Error

    ' RGB(redC, greenC, blueC) is the background colour used by the lighter themes
    
    panzerEarthPrefs.BackColor = RGB(redC, greenC, blueC)
    
    ' all buttons must be set to graphical
    For Each ctrl In panzerEarthPrefs.Controls
        If (TypeOf ctrl Is CommandButton) Or (TypeOf ctrl Is CheckBox) Or (TypeOf ctrl Is Label) Or (TypeOf ctrl Is OptionButton) Or (TypeOf ctrl Is Frame) Then
          ctrl.BackColor = RGB(redC, greenC, blueC)
        End If
    Next
    
    If redC = 212 Then
        'classicTheme = True
        panzerEarthPrefs.mnuLight.Checked = False
        panzerEarthPrefs.mnuDark.Checked = True
        
        Call setIconImagesDark
        
    Else
        'classicTheme = False
        panzerEarthPrefs.mnuLight.Checked = True
        panzerEarthPrefs.mnuDark.Checked = False
        
        Call setIconImagesLight
                
    End If
    
    'now change the color of the sliders.
    panzerEarthPrefs.sliAnimationInterval.BackColor = RGB(redC, greenC, blueC)
    'panzerEarthPrefs.'sliWidgetSkew.BackColor = RGB(redC, greenC, blueC)
    panzerEarthPrefs.sliGaugeSize.BackColor = RGB(redC, greenC, blueC)
    panzerEarthPrefs.sliOpacity.BackColor = RGB(redC, greenC, blueC)
    panzerEarthPrefs.txtAboutText.BackColor = RGB(redC, greenC, blueC)
    
    sPutINISetting "Software\PzEarth", "skinTheme", PzESkinTheme, PzESettingsFile ' now saved to the toolsettingsfile

    On Error GoTo 0
    Exit Sub

setThemeShade_Error:

    With Err
         If .Number <> 0 Then
            MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setThemeShade of Module Module1"
            Resume Next
          End If
    End With
End Sub



'---------------------------------------------------------------------------------------
' Procedure : setThemeColour
' Author    : beededea
' Date      : 19/09/2019
' Purpose   : if the o/s is capable of supporting the classic theme it tests every 10 secs
'             to see if a theme has been switched
'
'---------------------------------------------------------------------------------------
'
Private Sub setThemeColour()
    
    Dim SysClr As Long: SysClr = 0
    
   On Error GoTo setThemeColour_Error
   'If debugflg = 1  Then Debug.Print "%setThemeColour"

    If IsThemeActive() = False Then
        'MsgBox "Windows Classic Theme detected"
        'set themed buttons to none
        Call setThemeShade(212, 208, 199)
        SysClr = GetSysColor(COLOR_BTNFACE)
        PzESkinTheme = "dark"
        
        panzerEarthPrefs.mnuDark.Caption = "Dark Theme Enabled"
        panzerEarthPrefs.mnuLight.Caption = "Light Theme Enable"

    Else
        Call setModernThemeColours
        panzerEarthPrefs.mnuDark.Caption = "Dark Theme Enable"
        panzerEarthPrefs.mnuLight.Caption = "Light Theme Enabled"
    End If

    storeThemeColour = SysClr

   On Error GoTo 0
   Exit Sub

setThemeColour_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setThemeColour of module module1"
End Sub
'---------------------------------------------------------------------------------------
' Procedure : adjustPrefsTheme
' Author    : beededea
' Date      : 25/04/2023
' Purpose   : adjust the theme used by the prefs alone
'---------------------------------------------------------------------------------------
'
Private Sub adjustPrefsTheme()
   On Error GoTo adjustPrefsTheme_Error

    If PzESkinTheme <> vbNullString Then
        If PzESkinTheme = "dark" Then
            Call setThemeShade(212, 208, 199)
        Else
            Call setThemeShade(240, 240, 240)
        End If
    Else
        If classicThemeCapable = True Then
            mnuAuto.Caption = "Auto Theme Enabled - Click to Disable"
            panzerEarthPrefs.themeTimer.Enabled = True
        Else
            PzESkinTheme = "light"
            Call setModernThemeColours
        End If
    End If

   On Error GoTo 0
   Exit Sub

adjustPrefsTheme_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure adjustPrefsTheme of Form panzerEarthPrefs"
    
End Sub

'---------------------------------------------------------------------------------------
' Procedure : setModernThemeColours
' Author    : beededea
' Date      : 02/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub setModernThemeColours()
         
    Dim SysClr As Long: SysClr = 0
    
    On Error GoTo setModernThemeColours_Error
    
    'Pz EarthPrefs.mnuAuto.Caption = "Auto Theme Selection Cannot be Enabled"

    'MsgBox "Windows Alternate Theme detected"
    SysClr = GetSysColor(COLOR_BTNFACE)
    If SysClr = 13160660 Then
        Call setThemeShade(212, 208, 199)
        PzESkinTheme = "dark"
    Else ' 15790320
        Call setThemeShade(240, 240, 240)
        PzESkinTheme = "light"
    End If

   On Error GoTo 0
   Exit Sub

setModernThemeColours_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setModernThemeColours of Module Module1"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : SaveSizes
' Author    : Rod Stephens vb-helper.com
' Date      : 16/04/2021
' Purpose   : Resize controls to fit when a form resizes
'             Save the form's and controls' dimensions.
' Credit    : Rod Stephens vb-helper.com
'---------------------------------------------------------------------------------------
'
Private Sub SaveSizes()
    Dim i As Integer: i = 0
    Dim a As Integer: a = 0
    Dim ctrl As Control

    ' Save the controls' positions and sizes.
    On Error GoTo SaveSizes_Error

    ReDim m_ControlPositions(1 To Controls.Count)
    i = 1
    For Each ctrl In Controls
        With m_ControlPositions(i)
            If (TypeOf ctrl Is CommandButton) Or (TypeOf ctrl Is ListBox) Or (TypeOf ctrl Is TextBox) Or (TypeOf ctrl Is FileListBox) Or (TypeOf ctrl Is Label) Or (TypeOf ctrl Is ComboBox) Or (TypeOf ctrl Is CheckBox) Or (TypeOf ctrl Is OptionButton) Or (TypeOf ctrl Is Frame) Or (TypeOf ctrl Is Image) Or (TypeOf ctrl Is PictureBox) Or (TypeOf ctrl Is Slider) Then
                a = 1
                .Left = ctrl.Left
                .Top = ctrl.Top
                .Width = ctrl.Width
                .Height = ctrl.Height
                On Error Resume Next
                .FontSize = ctrl.Font.Size
                On Error GoTo 0
            End If
        End With
        i = i + 1
    Next ctrl

    ' Save the form's size.
    m_FormWid = ScaleWidth
    m_FormHgt = ScaleHeight

   On Error GoTo 0
   Exit Sub

SaveSizes_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure SaveSizes of Form formSoftwareList"
End Sub


'---------------------------------------------------------------------------------------
' Procedure : ResizeControls
' Author    : Rod Stephens vb-helper.com
' Date      : 16/04/2021
' Purpose   : Arrange the controls for the new size.
'---------------------------------------------------------------------------------------
'
Private Sub resizeControls()
    Dim i As Integer: i = 0
    Dim ctrl As Control
    Dim x_scale As Single: x_scale = 0
    Dim y_scale As Single: y_scale = 0
    Dim currFontSize As Single: currFontSize = 0
        
    On Error GoTo ResizeControls_Error

    ' Get the form's current scale factors.
    x_scale = ScaleWidth / m_FormWid
    y_scale = ScaleHeight / m_FormHgt

    ' Position the controls.
    i = 1
    For Each ctrl In Controls
        With m_ControlPositions(i)
            If (TypeOf ctrl Is CommandButton) Or (TypeOf ctrl Is ListBox) Or (TypeOf ctrl Is TextBox) Or (TypeOf ctrl Is FileListBox) Or (TypeOf ctrl Is Label) Or (TypeOf ctrl Is ComboBox) Or (TypeOf ctrl Is CheckBox) Or (TypeOf ctrl Is OptionButton) Or (TypeOf ctrl Is Frame) Or (TypeOf ctrl Is Slider) Then
                ctrl.Left = x_scale * .Left
                ctrl.Top = y_scale * .Top
                ctrl.Width = x_scale * .Width
                If Not (TypeOf ctrl Is ComboBox) Then
                    ' Cannot change height of ComboBoxes.
                    ctrl.Height = y_scale * .Height
                End If
                On Error Resume Next
                ctrl.Font.Size = y_scale * .FontSize
                ctrl.Refresh
                On Error GoTo 0
            ElseIf (TypeOf ctrl Is Image) Then
                    
                ctrl.Stretch = True
                ctrl.Left = x_scale * .Left
                ctrl.Top = y_scale * .Top
                ctrl.Width = x_scale * .Width
                ctrl.Height = ctrl.Width
                
                ctrl.Refresh
            End If
        End With
        i = i + 1
    Next ctrl

    
    currFontSize = y_scale * txtPrefsFontCurrentSize.FontSize
    txtPrefsFontCurrentSize.Text = currFontSize
    
   On Error GoTo 0
   Exit Sub

ResizeControls_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure ResizeControls of Form formSoftwareList"
End Sub

'---------------------------------------------------------------------------------------
' Procedure : loadHigherResImages
' Author    : beededea
' Date      : 18/06/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub loadHigherResImages()
    Dim ratio As Double: ratio = 0
    Dim resourcePath As String: resourcePath = vbNullString
    
    On Error GoTo loadHigherResImages_Error
   
    resourcePath = App.Path & "\resources\images"
   
    If WindowState = vbMinimized Then Exit Sub
    
    'ratio = cFormHeight / cFormWidth

    If dynamicSizingFlg = False Then
        Exit Sub
    End If
    
    If Me.Width < 10500 Then
        topIconWidth = 600
    End If
    
    If Me.Width >= 10500 And Me.Width < 12000 Then 'Me.Height / ratio ' maintain the aspect ratio
        topIconWidth = 730
    End If
            
    If Me.Width >= 12000 And Me.Width < 13500 Then 'Me.Height / ratio ' maintain the aspect ratio
        topIconWidth = 834
    End If
            
    If Me.Width >= 13500 And Me.Width < 15000 Then 'Me.Height / ratio ' maintain the aspect ratio
        topIconWidth = 940
    End If
            
    If Me.Width >= 15000 Then 'Me.Height / ratio ' maintain the aspect ratio
        topIconWidth = 1010
    End If
    
    If panzerEarthPrefs.mnuDark.Checked = True Then
        Call setIconImagesDark
    Else
        Call setIconImagesLight
    End If
    
   On Error GoTo 0
   Exit Sub

loadHigherResImages_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure loadHigherResImages of Form panzerEarthPrefs"
End Sub
'---------------------------------------------------------------------------------------
' Procedure : positionTimer_Timer
' Author    : beededea
' Date      : 27/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub positionTimer_Timer()
    ' save the current X and y position of this form to allow repositioning when restarting
    On Error GoTo positionTimer_Timer_Error
   
    Call writePrefsPosition

   On Error GoTo 0
   Exit Sub

positionTimer_Timer_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure positionTimer_Timer of Form panzerEarthPrefs"
End Sub



'---------------------------------------------------------------------------------------
' Procedure : chkEnableResizing_Click
' Author    : beededea
' Date      : 27/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub chkEnableResizing_Click()
   On Error GoTo chkEnableResizing_Click_Error

    If chkEnableResizing.Value = 1 Then
        dynamicSizingFlg = True
        txtPrefsFontCurrentSize.Visible = True
        lblCurrentFontsTab.Visible = True
        Call writePrefsPosition
        chkEnableResizing.Caption = "Disable Corner Resizing"
    Else
        dynamicSizingFlg = False
        txtPrefsFontCurrentSize.Visible = False
        lblCurrentFontsTab.Visible = False
        Unload panzerEarthPrefs
        panzerEarthPrefs.show
        Call readPrefsPosition
        chkEnableResizing.Caption = "Enable Corner Resizing"
    End If
    
    Call setframeHeights

   On Error GoTo 0
   Exit Sub

chkEnableResizing_Click_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure chkEnableResizing_Click of Form panzerEarthPrefs"

End Sub

Private Sub chkEnableResizing_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableTooltips = "1" Then CreateToolTip chkEnableResizing.hwnd, "This allows you to resize the whole prefs window by dragging the bottom right corner of the window. It provides an alternative method of supporting high DPI screens.", _
                  TTIconInfo, "Help on Resizing", , , , True
End Sub
 



'---------------------------------------------------------------------------------------
' Procedure : setframeHeights
' Author    : beededea
' Date      : 28/05/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub setframeHeights()
   On Error GoTo setframeHeights_Error

    If dynamicSizingFlg = True Then
        fraGeneral.Height = fraAbout.Height
        fraFonts.Height = fraAbout.Height
        fraConfig.Height = fraAbout.Height
        fraSounds.Height = fraAbout.Height
        fraPosition.Height = fraAbout.Height
        fraDevelopment.Height = fraAbout.Height
        fraWindow.Height = fraAbout.Height
        
        fraGeneral.Width = fraAbout.Width
        fraFonts.Width = fraAbout.Width
        fraConfig.Width = fraAbout.Width
        fraSounds.Width = fraAbout.Width
        fraPosition.Width = fraAbout.Width
        fraDevelopment.Width = fraAbout.Width
        fraWindow.Width = fraAbout.Width
    
        Call SaveSizes
    Else
        fraGeneral.Height = 3750
        fraConfig.Height = 4852
        fraSounds.Height = 1965
        fraPosition.Height = 7440
        fraFonts.Height = 3615
        fraWindow.Height = 6300
        fraDevelopment.Height = 6191
        fraAbout.Height = 8580
    End If

   On Error GoTo 0
   Exit Sub

setframeHeights_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setframeHeights of Form panzerEarthPrefs"
End Sub




'---------------------------------------------------------------------------------------
' Procedure : setIconImagesDark
' Author    : beededea
' Date      : 22/06/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub setIconImagesDark()
    Dim resourcePath As String: resourcePath = vbNullString
    
    On Error GoTo setIconImagesDark_Error
    
    resourcePath = App.Path & "\resources\images"

    If fFExists(resourcePath & "\config-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgConfig.Picture = LoadPicture(resourcePath & "\config-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\general-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgGeneral.Picture = LoadPicture(resourcePath & "\general-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\position-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgPosition.Picture = LoadPicture(resourcePath & "\position-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\font-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgFonts.Picture = LoadPicture(resourcePath & "\font-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\development-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgDevelopment.Picture = LoadPicture(resourcePath & "\development-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\sounds-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgSounds.Picture = LoadPicture(resourcePath & "\sounds-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\windows-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgWindow.Picture = LoadPicture(resourcePath & "\windows-icon-dark-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\about-icon-dark-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgAbout.Picture = LoadPicture(resourcePath & "\about-icon-dark-" & topIconWidth & ".jpg")
    
    ' I may yet create clicked versions of all the icons but not now!
    If fFExists(resourcePath & "\config-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgConfigClicked.Picture = LoadPicture(resourcePath & "\config-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\general-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgGeneralClicked.Picture = LoadPicture(resourcePath & "\general-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\position-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgPositionClicked.Picture = LoadPicture(resourcePath & "\position-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\font-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgFontsClicked.Picture = LoadPicture(resourcePath & "\font-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\development-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgDevelopmentClicked.Picture = LoadPicture(resourcePath & "\development-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\sounds-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgSoundsClicked.Picture = LoadPicture(resourcePath & "\sounds-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\windows-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgWindowClicked.Picture = LoadPicture(resourcePath & "\windows-icon-dark-600-clicked.jpg")
    If fFExists(resourcePath & "\about-icon-dark-600-clicked.jpg") Then panzerEarthPrefs.imgAboutClicked.Picture = LoadPicture(resourcePath & "\about-icon-dark-600-clicked.jpg")

   On Error GoTo 0
   Exit Sub

setIconImagesDark_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setIconImagesDark of Form panzerEarthPrefs"

End Sub


'---------------------------------------------------------------------------------------
' Procedure : setIconImagesLight
' Author    : beededea
' Date      : 22/06/2023
' Purpose   :
'---------------------------------------------------------------------------------------
'
Private Sub setIconImagesLight()
    
    Dim resourcePath As String: resourcePath = vbNullString
    
    On Error GoTo setIconImagesLight_Error
    
    resourcePath = App.Path & "\resources\images"
    
    If fFExists(resourcePath & "\config-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgConfig.Picture = LoadPicture(resourcePath & "\config-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\general-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgGeneral.Picture = LoadPicture(resourcePath & "\general-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\position-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgPosition.Picture = LoadPicture(resourcePath & "\position-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\font-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgFonts.Picture = LoadPicture(resourcePath & "\font-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\development-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgDevelopment.Picture = LoadPicture(resourcePath & "\development-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\sounds-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgSounds.Picture = LoadPicture(resourcePath & "\sounds-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\windows-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgWindow.Picture = LoadPicture(resourcePath & "\windows-icon-light-" & topIconWidth & ".jpg")
    If fFExists(resourcePath & "\about-icon-light-" & topIconWidth & ".jpg") Then panzerEarthPrefs.imgAbout.Picture = LoadPicture(resourcePath & "\about-icon-light-" & topIconWidth & ".jpg")
    
    ' I may yet create clicked versions of all the icons but not now!
    If fFExists(resourcePath & "\config-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgConfigClicked.Picture = LoadPicture(resourcePath & "\config-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\general-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgGeneralClicked.Picture = LoadPicture(resourcePath & "\general-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\position-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgPositionClicked.Picture = LoadPicture(resourcePath & "\position-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\font-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgFontsClicked.Picture = LoadPicture(resourcePath & "\font-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\development-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgDevelopmentClicked.Picture = LoadPicture(resourcePath & "\development-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\sounds-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgSoundsClicked.Picture = LoadPicture(resourcePath & "\sounds-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\windows-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgWindowClicked.Picture = LoadPicture(resourcePath & "\windows-icon-light-600-clicked.jpg")
    If fFExists(resourcePath & "\about-icon-light-600-clicked.jpg") Then panzerEarthPrefs.imgAboutClicked.Picture = LoadPicture(resourcePath & "\about-icon-light-600-clicked.jpg")

   On Error GoTo 0
   Exit Sub

setIconImagesLight_Error:

    MsgBox "Error " & Err.Number & " (" & Err.Description & ") in procedure setIconImagesLight of Form panzerEarthPrefs"

End Sub

Private Sub txtPrefsFontCurrentSize_MouseMove(Button As Integer, Shift As Integer, X As Single, Y As Single)
    If PzEEnableBalloonTooltips = "1" Then CreateToolTip txtPrefsFontCurrentSize.hwnd, "This is a read-only text box. It displays the current font as set when dynamic form resizing is enabled. Drag the right hand corner of the window downward and the form will auto-resize. This text box will display the resized font currently in operation for informational purposes only.", _
                  TTIconInfo, "Help on Setting the Font size Dynamically", , , , True
End Sub
