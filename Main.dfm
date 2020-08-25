object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Flextrak Configuration Tool V1.0'
  ClientHeight = 614
  ClientWidth = 606
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 19
  object Label1: TLabel
    Left = 24
    Top = 24
    Width = 79
    Height = 19
    Alignment = taRightJustify
    Caption = 'Serial Port:'
  end
  object Label6: TLabel
    Left = 47
    Top = 76
    Width = 59
    Height = 19
    Alignment = taRightJustify
    Caption = 'Version:'
  end
  object Label14: TLabel
    Left = 242
    Top = 220
    Width = 78
    Height = 19
    Alignment = taRightJustify
    Caption = 'Frequency:'
  end
  object Label15: TLabel
    Left = 428
    Top = 220
    Width = 30
    Height = 19
    Caption = 'MHz'
  end
  object Label2: TLabel
    Left = 62
    Top = 260
    Width = 44
    Height = 19
    Alignment = taRightJustify
    Caption = 'Mode:'
  end
  object Label12: TLabel
    Left = 49
    Top = 220
    Width = 61
    Height = 19
    Alignment = taRightJustify
    Caption = 'Callsign:'
  end
  object Label3: TLabel
    Left = 270
    Top = 76
    Width = 72
    Height = 19
    Alignment = taRightJustify
    Caption = 'Temp Int:'
  end
  object Label4: TLabel
    Left = 457
    Top = 76
    Width = 74
    Height = 19
    Alignment = taRightJustify
    Caption = 'Temp Ext:'
  end
  object Label5: TLabel
    Left = 68
    Top = 116
    Width = 38
    Height = 19
    Alignment = taRightJustify
    Caption = 'Date:'
  end
  object Label7: TLabel
    Left = 361
    Top = 116
    Width = 42
    Height = 19
    Alignment = taRightJustify
    Caption = 'Time:'
  end
  object Label8: TLabel
    Left = 79
    Top = 156
    Width = 27
    Height = 19
    Alignment = taRightJustify
    Caption = 'Lat:'
  end
  object Label9: TLabel
    Left = 255
    Top = 156
    Width = 32
    Height = 19
    Alignment = taRightJustify
    Caption = 'Lon:'
  end
  object Label10: TLabel
    Left = 457
    Top = 156
    Width = 26
    Height = 19
    Alignment = taRightJustify
    Caption = 'Alt:'
  end
  object Label11: TLabel
    Left = 30
    Top = 337
    Width = 80
    Height = 19
    Alignment = taRightJustify
    Caption = 'Bandwidth:'
  end
  object Label13: TLabel
    Left = 277
    Top = 301
    Width = 56
    Height = 19
    Alignment = taRightJustify
    Caption = 'Coding:'
  end
  object Label16: TLabel
    Left = 44
    Top = 298
    Width = 77
    Height = 19
    Alignment = taRightJustify
    Caption = 'Spreading:'
  end
  object lstCommands: TListBox
    Left = 477
    Top = 385
    Width = 121
    Height = 57
    ItemHeight = 19
    TabOrder = 6
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 120
    Top = 21
    Width = 181
    Height = 27
    Style = csDropDownList
    ItemHeight = 19
    Sorted = True
    TabOrder = 0
    OnCloseUp = ComboBox1CloseUp
  end
  object pnlCommStatus: TPanel
    Left = 332
    Top = 20
    Width = 265
    Height = 27
    BevelOuter = bvLowered
    Caption = 'Please choose serial port'
    TabOrder = 1
  end
  object pnlVersion: TPanel
    Left = 120
    Top = 72
    Width = 69
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object btnSet: TButton
    Left = 472
    Top = 220
    Width = 121
    Height = 64
    Caption = 'Set'
    TabOrder = 3
    OnClick = btnSetClick
  end
  object edtFrequency: TEdit
    Left = 337
    Top = 217
    Width = 85
    Height = 27
    TabOrder = 4
    Text = '434.450'
  end
  object Panel1: TPanel
    Left = 6
    Top = 198
    Width = 585
    Height = 5
    BevelOuter = bvLowered
    TabOrder = 5
  end
  object lstLines: TListBox
    Left = 8
    Top = 376
    Width = 590
    Height = 229
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -16
    Font.Name = 'Courier New'
    Font.Style = []
    ItemHeight = 18
    ParentFont = False
    TabOrder = 7
  end
  object Panel3: TPanel
    Left = 13
    Top = 61
    Width = 585
    Height = 5
    BevelOuter = bvLowered
    TabOrder = 8
  end
  object edtCallsign: TEdit
    Left = 127
    Top = 217
    Width = 85
    Height = 27
    TabOrder = 9
    Text = 'M0RPI'
  end
  object pnlInternal: TPanel
    Left = 354
    Top = 72
    Width = 49
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 10
  end
  object pnlExternal: TPanel
    Left = 544
    Top = 72
    Width = 49
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 11
  end
  object pnlDate: TPanel
    Left = 120
    Top = 112
    Width = 181
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 12
  end
  object pnlTime: TPanel
    Left = 417
    Top = 112
    Width = 181
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 13
  end
  object pnlLat: TPanel
    Left = 120
    Top = 152
    Width = 121
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 14
  end
  object pnlLon: TPanel
    Left = 301
    Top = 152
    Width = 121
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 15
  end
  object pnlAlt: TPanel
    Left = 492
    Top = 152
    Width = 106
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 16
  end
  object chkRxImplicit: TCheckBox
    Left = 277
    Top = 344
    Width = 145
    Height = 17
    Caption = 'Implicit Headers'
    TabOrder = 17
  end
  object chkRxLowOpt: TCheckBox
    Left = 451
    Top = 339
    Width = 145
    Height = 17
    Caption = 'Low Speed Opt.'
    TabOrder = 18
  end
  object cmbRxCoding: TComboBox
    Left = 339
    Top = 298
    Width = 85
    Height = 27
    ItemHeight = 19
    TabOrder = 19
    Items.Strings = (
      '5'
      '6'
      '7'
      '8')
  end
  object cmbRxSpreading: TComboBox
    Left = 127
    Top = 298
    Width = 85
    Height = 27
    ItemHeight = 19
    TabOrder = 20
    Items.Strings = (
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12')
  end
  object cmbRxBandwidth: TComboBox
    Left = 127
    Top = 334
    Width = 85
    Height = 27
    ItemHeight = 19
    TabOrder = 21
    Items.Strings = (
      '7K8'
      '10K4'
      '15K6'
      '20K8'
      '31K25'
      '41K7'
      '62K5'
      '125K'
      '250K'
      '500K')
  end
  object cmbRxMode: TComboBox
    Left = 127
    Top = 257
    Width = 297
    Height = 27
    DropDownCount = 10
    ItemHeight = 19
    ItemIndex = 0
    TabOrder = 22
    Text = 'Choose Mode ...'
    OnCloseUp = cmbRxModeCloseUp
    Items.Strings = (
      'Choose Mode ...'
      '0 - Slow'
      '1 - Fast'
      '2 - Repeater'
      '3 - Turbo'
      '4 - TurboX'
      '5 - Calling'
      '6 - Uplink'
      '7 - Telnet'
      '8 - SSDV Repeater')
  end
  object VaComm1: TVaComm
    Baudrate = br38400
    FlowControl.OutCtsFlow = False
    FlowControl.OutDsrFlow = False
    FlowControl.ControlDtr = dtrEnabled
    FlowControl.ControlRts = rtsEnabled
    FlowControl.XonXoffOut = False
    FlowControl.XonXoffIn = False
    FlowControl.DsrSensitivity = False
    FlowControl.TxContinueOnXoff = False
    DeviceName = 'COM%d'
    SettingsStore.RegRoot = rrCURRENTUSER
    SettingsStore.Location = slINIFile
    OnRxChar = VaComm1RxChar
    Version = '2.1.0.1'
    Left = 372
    Top = 12
  end
  object tmrCommands: TTimer
    Interval = 100
    OnTimer = tmrCommandsTimer
    Left = 497
    Top = 116
  end
  object IdHTTP1: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 556
    Top = 84
  end
  object tmrScreenUpdates: TTimer
    Left = 464
    Top = 24
  end
  object IdHTTP2: TIdHTTP
    AllowCookies = True
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    HTTPOptions = [hoForceEncodeParams]
    Left = 556
    Top = 140
  end
end
