object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Flextrak Configuration Tool V2.5'
  ClientHeight = 672
  ClientWidth = 1106
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -16
  Font.Name = 'Tahoma'
  Font.Style = []
  OnCreate = FormCreate
  DesignSize = (
    1106
    672)
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
    Left = 996
    Top = 84
    Width = 30
    Height = 19
    Alignment = taRightJustify
    Anchors = [akTop, akRight]
    Caption = 'Ver:'
    ExplicitLeft = 500
  end
  object Label17: TLabel
    Left = 43
    Top = 84
    Width = 60
    Height = 19
    Alignment = taRightJustify
    Caption = 'Product:'
  end
  object Label18: TLabel
    Left = 221
    Top = 84
    Width = 39
    Height = 19
    Alignment = taRightJustify
    Caption = 'Desc:'
  end
  object lstCommands: TListBox
    Left = 237
    Top = 229
    Width = 121
    Height = 57
    ItemHeight = 19
    TabOrder = 3
    Visible = False
  end
  object ComboBox1: TComboBox
    Left = 109
    Top = 21
    Width = 181
    Height = 27
    Style = csDropDownList
    Sorted = True
    TabOrder = 0
    OnCloseUp = ComboBox1CloseUp
  end
  object pnlCommStatus: TPanel
    Left = 332
    Top = 20
    Width = 761
    Height = 27
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    Caption = 'Please choose serial port'
    TabOrder = 1
  end
  object pnlVersion: TPanel
    Left = 1032
    Top = 80
    Width = 60
    Height = 27
    Anchors = [akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 2
  end
  object Panel3: TPanel
    Left = 13
    Top = 61
    Width = 1081
    Height = 5
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 4
  end
  object pnlProduct: TPanel
    Left = 109
    Top = 80
    Width = 88
    Height = 27
    BevelOuter = bvLowered
    TabOrder = 5
  end
  object pnlDescription: TPanel
    Left = 266
    Top = 80
    Width = 699
    Height = 27
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 6
  end
  object Panel2: TPanel
    Left = 13
    Top = 118
    Width = 1081
    Height = 5
    Anchors = [akLeft, akTop, akRight]
    BevelOuter = bvLowered
    TabOrder = 7
  end
  object PageControl1: TPageControl
    Left = 13
    Top = 136
    Width = 1081
    Height = 489
    ActivePage = TabSheet2
    Anchors = [akLeft, akTop, akRight, akBottom]
    TabOrder = 8
    object TabSheet1: TTabSheet
      Caption = 'Status'
      object Label7: TLabel
        Left = 8
        Top = 16
        Width = 42
        Height = 19
        Alignment = taRightJustify
        Caption = 'Time:'
      end
      object Label8: TLabel
        Left = 155
        Top = 16
        Width = 27
        Height = 19
        Alignment = taRightJustify
        Caption = 'Lat:'
      end
      object Label9: TLabel
        Left = 314
        Top = 16
        Width = 32
        Height = 19
        Alignment = taRightJustify
        Caption = 'Lon:'
      end
      object Label10: TLabel
        Left = 465
        Top = 16
        Width = 26
        Height = 19
        Alignment = taRightJustify
        Caption = 'Alt:'
      end
      object Label25: TLabel
        Left = 599
        Top = 16
        Width = 33
        Height = 19
        Alignment = taRightJustify
        Caption = 'Batt:'
      end
      object Label27: TLabel
        Left = 111
        Top = 52
        Width = 10
        Height = 19
        Caption = 'V'
      end
      object Label28: TLabel
        Left = 740
        Top = 16
        Width = 26
        Height = 19
        Alignment = taRightJustify
        Caption = 'Int:'
      end
      object Label29: TLabel
        Left = 829
        Top = 16
        Width = 10
        Height = 19
        Caption = 'C'
      end
      object Label57: TLabel
        Left = 997
        Top = 16
        Width = 10
        Height = 19
        Caption = 'C'
      end
      object Label58: TLabel
        Left = 906
        Top = 16
        Width = 28
        Height = 19
        Alignment = taRightJustify
        Caption = 'Ext:'
      end
      object pnlTime: TPanel
        Left = 56
        Top = 12
        Width = 81
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 0
      end
      object pnlLat: TPanel
        Left = 188
        Top = 12
        Width = 96
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 1
      end
      object pnlLon: TPanel
        Left = 356
        Top = 12
        Width = 91
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 2
      end
      object pnlAlt: TPanel
        Left = 500
        Top = 12
        Width = 53
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 3
      end
      object lstLines: TListBox
        AlignWithMargins = True
        Left = 3
        Top = 52
        Width = 1067
        Height = 400
        Align = alBottom
        Anchors = [akLeft, akTop, akRight, akBottom]
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        ItemHeight = 18
        ParentFont = False
        TabOrder = 4
      end
      object pnlBattery: TPanel
        Left = 638
        Top = 12
        Width = 47
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 5
      end
      object pnlInternal: TPanel
        Left = 772
        Top = 12
        Width = 47
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 6
      end
      object pnlExternal: TPanel
        Left = 940
        Top = 12
        Width = 47
        Height = 27
        BevelOuter = bvLowered
        TabOrder = 7
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Common'
      ImageIndex = 1
      DesignSize = (
        1073
        455)
      object Label12: TLabel
        Left = 62
        Top = 25
        Width = 61
        Height = 19
        Alignment = taRightJustify
        Caption = 'Callsign:'
      end
      object Label3: TLabel
        Left = 55
        Top = 66
        Width = 68
        Height = 19
        Alignment = taRightJustify
        Caption = 'Field List:'
      end
      object Label4: TLabel
        Left = 10
        Top = 153
        Width = 113
        Height = 19
        Alignment = taRightJustify
        Caption = 'Flight Mode Alt:'
      end
      object Label19: TLabel
        Left = 225
        Top = 153
        Width = 48
        Height = 19
        Caption = 'metres'
      end
      object Label59: TLabel
        Left = 38
        Top = 110
        Width = 78
        Height = 19
        Alignment = taRightJustify
        Caption = 'GPS Mode:'
      end
      object edtCallsign: TEdit
        Left = 129
        Top = 23
        Width = 128
        Height = 27
        TabOrder = 0
      end
      object btnSet: TButton
        Left = 936
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 1
        OnClick = btnSetClick
      end
      object edtFields: TEdit
        Left = 129
        Top = 63
        Width = 196
        Height = 27
        TabOrder = 2
        OnChange = edtFieldsChange
      end
      object lstFields: TCheckListBox
        Left = 455
        Top = 10
        Width = 290
        Height = 442
        ItemHeight = 19
        Items.Strings = (
          '0: PayloadID'
          '1: Counter'
          '2: Time'
          '3: Latitude'
          '4: Longitude'
          '5: Altitude'
          '6: Satellites'
          '7: Speed'
          '8: Direction'
          '9: Battery Voltage'
          'A: Internal Temperature'
          'B: External Temperature'
          'C: Predicted Latitude'
          'D: Predicted Longitude'
          'E: Cutdown Status'
          'F: Last Rx SNR'
          'G: Last Rx RSSI'
          'H: Rx Count'
          'I: User Defined'
          'J: User Defined'
          'IK User Defined'
          'L: User Defined'
          'M: User Defined'
          'N: User Defined'
          'O: Maximum Altitude')
        TabOrder = 3
        OnClickCheck = lstFieldsClickCheck
      end
      object edtFlightModeAltitude: TEdit
        Left = 129
        Top = 150
        Width = 85
        Height = 27
        TabOrder = 4
      end
      object cmbGPSMode: TComboBox
        Left = 129
        Top = 107
        Width = 264
        Height = 27
        DropDownCount = 10
        TabOrder = 5
        Text = 'Choose Mode ...'
        OnCloseUp = cmbRxModeCloseUp
        Items.Strings = (
          'Automatic (Airborne / Pedestrian)'
          'Portable'
          'Stationary'
          'Pedestrian'
          'Automotive'
          'Sea'
          'Airborne <1g'
          'Airborne <2g'
          'Airborne <4g')
      end
      object Panel1: TPanel
        Left = 128
        Top = 196
        Width = 241
        Height = 89
        BevelOuter = bvLowered
        TabOrder = 6
        object Label60: TLabel
          AlignWithMargins = True
          Left = 4
          Top = 4
          Width = 233
          Height = 81
          Align = alClient
          Alignment = taCenter
          Caption = 
            'For automatic mode, "Pedestrian" mode is used when below "Flight' +
            ' mode alt" and "Airborne <1g" is used above.'
          WordWrap = True
          ExplicitWidth = 232
          ExplicitHeight = 76
        end
      end
    end
    object LoRa: TTabSheet
      Caption = 'LoRa'
      ImageIndex = 2
      OnShow = LoRaShow
      DesignSize = (
        1073
        455)
      object Label14: TLabel
        Left = 32
        Top = 25
        Width = 78
        Height = 19
        Alignment = taRightJustify
        Caption = 'Frequency:'
      end
      object Label15: TLabel
        Left = 214
        Top = 25
        Width = 30
        Height = 19
        Caption = 'MHz'
      end
      object Label2: TLabel
        Left = 66
        Top = 66
        Width = 44
        Height = 19
        Alignment = taRightJustify
        Caption = 'Mode:'
      end
      object Label24: TLabel
        Left = 29
        Top = 229
        Width = 81
        Height = 19
        Alignment = taRightJustify
        Caption = 'TDM Cycle:'
      end
      object lblCallingCount2: TLabel
        Left = 178
        Top = 273
        Width = 381
        Height = 19
        Caption = '(Send calling packet every n LoRa packets, 0 disables)'
      end
      object Label26: TLabel
        Left = 212
        Top = 229
        Width = 33
        Height = 19
        Alignment = taRightJustify
        Caption = 'Slot:'
      end
      object lblRepeat1: TLabel
        Left = 349
        Top = 229
        Width = 44
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rpt 1:'
      end
      object lblRepeat2: TLabel
        Left = 460
        Top = 229
        Width = 44
        Height = 19
        Alignment = taRightJustify
        Caption = 'Rpt 2:'
      end
      object lblCallingCount1: TLabel
        Left = 9
        Top = 273
        Width = 101
        Height = 19
        Alignment = taRightJustify
        Caption = 'Calling Count:'
      end
      object Label30: TLabel
        Left = 178
        Top = 229
        Width = 7
        Height = 19
        Caption = 's'
      end
      object edtFrequency: TEdit
        Left = 123
        Top = 22
        Width = 85
        Height = 27
        TabOrder = 0
        Text = '434.450'
      end
      object cmbRxMode: TComboBox
        Left = 123
        Top = 63
        Width = 297
        Height = 27
        DropDownCount = 10
        TabOrder = 1
        Text = 'Choose Mode ...'
        OnCloseUp = cmbRxModeCloseUp
        Items.Strings = (
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
      object Button1: TButton
        Left = 932
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 2
        OnClick = Button1Click
      end
      object pnlFlexTrak: TPanel
        Left = 123
        Top = 104
        Width = 421
        Height = 109
        BorderStyle = bsSingle
        TabOrder = 3
        object Label16: TLabel
          Left = 21
          Top = 14
          Width = 77
          Height = 19
          Alignment = taRightJustify
          Caption = 'Spreading:'
        end
        object Label13: TLabel
          Left = 261
          Top = 17
          Width = 56
          Height = 19
          Alignment = taRightJustify
          Caption = 'Coding:'
        end
        object Label11: TLabel
          Left = 18
          Top = 53
          Width = 80
          Height = 19
          Alignment = taRightJustify
          Caption = 'Bandwidth:'
        end
        object cmbRxSpreading: TComboBox
          Left = 111
          Top = 14
          Width = 85
          Height = 27
          TabOrder = 0
          Items.Strings = (
            '6'
            '7'
            '8'
            '9'
            '10'
            '11'
            '12')
        end
        object cmbRxCoding: TComboBox
          Left = 323
          Top = 14
          Width = 85
          Height = 27
          TabOrder = 1
          Items.Strings = (
            '5'
            '6'
            '7'
            '8')
        end
        object chkRxImplicit: TCheckBox
          Left = 259
          Top = 52
          Width = 145
          Height = 17
          Caption = 'Implicit Headers'
          TabOrder = 2
        end
        object chkRxLowOpt: TCheckBox
          Left = 259
          Top = 75
          Width = 145
          Height = 17
          Caption = 'Low Speed Opt.'
          TabOrder = 3
        end
        object cmbRxBandwidth: TComboBox
          Left = 111
          Top = 50
          Width = 85
          Height = 27
          TabOrder = 4
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
      end
      object edtCycleCount: TEdit
        Left = 123
        Top = 226
        Width = 49
        Height = 27
        TabOrder = 4
      end
      object edtSlot: TEdit
        Left = 251
        Top = 226
        Width = 34
        Height = 27
        TabOrder = 5
      end
      object edtRepeat1: TEdit
        Left = 399
        Top = 226
        Width = 34
        Height = 27
        TabOrder = 6
      end
      object edtRepeat2: TEdit
        Left = 510
        Top = 226
        Width = 34
        Height = 27
        TabOrder = 7
      end
      object edtCallingCount: TEdit
        Left = 123
        Top = 270
        Width = 49
        Height = 27
        TabOrder = 8
      end
    end
    object RTTY: TTabSheet
      Caption = 'RTTY'
      ImageIndex = 3
      DesignSize = (
        1073
        455)
      object Label31: TLabel
        Left = 129
        Top = 57
        Width = 78
        Height = 19
        Alignment = taRightJustify
        Caption = 'Frequency:'
      end
      object Label32: TLabel
        Left = 311
        Top = 57
        Width = 30
        Height = 19
        Caption = 'MHz'
      end
      object Label37: TLabel
        Left = 130
        Top = 98
        Width = 77
        Height = 19
        Alignment = taRightJustify
        Caption = 'Baud Rate:'
      end
      object Label45: TLabel
        Left = 122
        Top = 138
        Width = 85
        Height = 19
        Alignment = taRightJustify
        Caption = 'Audio Shift:'
      end
      object Label46: TLabel
        Left = 281
        Top = 138
        Width = 18
        Height = 19
        Caption = 'Hz'
      end
      object Label38: TLabel
        Left = 159
        Top = 178
        Width = 48
        Height = 19
        Alignment = taRightJustify
        Caption = 'Count:'
      end
      object Label39: TLabel
        Left = 162
        Top = 218
        Width = 45
        Height = 19
        Alignment = taRightJustify
        Caption = 'Every:'
      end
      object Label40: TLabel
        Left = 135
        Top = 258
        Width = 72
        Height = 19
        Alignment = taRightJustify
        Caption = 'Preamble:'
      end
      object Label41: TLabel
        Left = 281
        Top = 178
        Width = 214
        Height = 19
        Caption = 'Number of RTTY Packets Sent'
      end
      object Label42: TLabel
        Left = 281
        Top = 218
        Width = 266
        Height = 19
        Caption = 'RTTY is sent after these LoRa packets'
      end
      object Button2: TButton
        Left = 924
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 0
        OnClick = Button2Click
      end
      object edtRTTYFrequency: TEdit
        Left = 220
        Top = 54
        Width = 85
        Height = 27
        TabOrder = 1
        Text = '434.400'
      end
      object edtRTTYBaudRate: TEdit
        Left = 220
        Top = 95
        Width = 49
        Height = 27
        TabOrder = 2
      end
      object edtRTTYAudioShift: TEdit
        Left = 220
        Top = 135
        Width = 49
        Height = 27
        TabOrder = 3
      end
      object edtRTTYCount: TEdit
        Left = 220
        Top = 175
        Width = 49
        Height = 27
        TabOrder = 4
      end
      object edtRTTYEvery: TEdit
        Left = 220
        Top = 215
        Width = 49
        Height = 27
        TabOrder = 5
      end
      object edtRTTYPreamble: TEdit
        Left = 220
        Top = 255
        Width = 49
        Height = 27
        TabOrder = 6
      end
    end
    object APRS: TTabSheet
      Caption = 'APRS'
      ImageIndex = 4
      DesignSize = (
        1073
        455)
      object Label5: TLabel
        Left = 34
        Top = 21
        Width = 78
        Height = 19
        Alignment = taRightJustify
        Caption = 'Frequency:'
      end
      object Label47: TLabel
        Left = 216
        Top = 21
        Width = 30
        Height = 19
        Caption = 'MHz'
      end
      object Label48: TLabel
        Left = 13
        Top = 62
        Width = 99
        Height = 19
        Alignment = taRightJustify
        Caption = 'Ham Callsign:'
      end
      object Label49: TLabel
        Left = 71
        Top = 102
        Width = 41
        Height = 19
        Alignment = taRightJustify
        Caption = 'SSID:'
      end
      object Label51: TLabel
        Left = 15
        Top = 142
        Width = 97
        Height = 19
        Alignment = taRightJustify
        Caption = 'Path Altitude:'
      end
      object Label52: TLabel
        Left = 67
        Top = 222
        Width = 45
        Height = 19
        Alignment = taRightJustify
        Caption = 'Every:'
      end
      object Label53: TLabel
        Left = 25
        Top = 346
        Width = 87
        Height = 19
        Alignment = taRightJustify
        Caption = 'Telem Intvl:'
      end
      object Label50: TLabel
        Left = 180
        Top = 142
        Width = 14
        Height = 19
        Caption = 'm'
      end
      object Label54: TLabel
        Left = 180
        Top = 222
        Width = 7
        Height = 19
        Caption = 's'
      end
      object Label55: TLabel
        Left = 47
        Top = 266
        Width = 65
        Height = 19
        Alignment = taRightJustify
        Caption = 'Random:'
      end
      object Label56: TLabel
        Left = 180
        Top = 266
        Width = 7
        Height = 19
        Caption = 's'
      end
      object btnSetAPRS: TButton
        Left = 932
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 0
        OnClick = btnSetAPRSClick
      end
      object edtAPRSFrequency: TEdit
        Left = 125
        Top = 18
        Width = 85
        Height = 27
        TabOrder = 1
        Text = '144.390'
      end
      object edtAPRSCallsign: TEdit
        Left = 125
        Top = 59
        Width = 85
        Height = 27
        MaxLength = 6
        TabOrder = 2
      end
      object edtAPRSSSID: TEdit
        Left = 125
        Top = 99
        Width = 49
        Height = 27
        TabOrder = 3
        Text = '11'
      end
      object edtPathAltitude: TEdit
        Left = 125
        Top = 139
        Width = 49
        Height = 27
        TabOrder = 4
        Text = '1000'
      end
      object edtAPRSInterval: TEdit
        Left = 125
        Top = 219
        Width = 49
        Height = 27
        TabOrder = 5
        Text = '60'
      end
      object edtTelemetry: TEdit
        Left = 125
        Top = 343
        Width = 49
        Height = 27
        TabOrder = 6
        Text = '0'
      end
      object Memo1: TMemo
        Left = 272
        Top = 30
        Width = 781
        Height = 335
        Anchors = [akLeft, akTop, akRight]
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Courier New'
        Font.Style = []
        Lines.Strings = (
          'These supplied as a guide.'
          ''
          '** Please confirm online **'
          ''
          
            '144.390 MHz '#8212' North America, Colombia, Chile, Indonesia, Malaysi' +
            'a, Thailand'
          '144.575 MHz '#8212' New Zealand'
          '144.640 MHz '#8212' Taiwan'
          '144.660 MHz '#8212' Japan'
          '144.800 MHz '#8212' South Africa, Europe, Russia'
          '144.930 MHz '#8212' Argentina, Uruguay'
          '145.175 MHz '#8212' Australia'
          '145.570 MHz '#8212' Brazil'
          ''
          'IMPORTANT - Use of APRS REQUIRES a suitable ham radio licence.'
          ''
          
            'IMPORTANT - Some countries e.g. UK do not allow APRS frequencies' +
            ' to be used '
          'from an airborne device e.g. balloon.')
        ParentFont = False
        ReadOnly = True
        TabOrder = 7
      end
      object chkAPRSWide: TCheckBox
        Left = 125
        Top = 184
        Width = 97
        Height = 17
        Caption = 'Use Wide'
        TabOrder = 8
      end
      object edtAPRSRandom: TEdit
        Left = 125
        Top = 263
        Width = 49
        Height = 27
        TabOrder = 9
        Text = '15'
      end
      object chkPreEmphasis: TCheckBox
        Left = 125
        Top = 308
        Width = 121
        Height = 17
        Caption = 'Pre-emphasis'
        TabOrder = 10
      end
    end
    object TabSheet3: TTabSheet
      Caption = 'Uplink'
      ImageIndex = 5
      DesignSize = (
        1073
        455)
      object Label33: TLabel
        Left = 50
        Top = 80
        Width = 122
        Height = 19
        Alignment = taRightJustify
        Caption = 'Encryption Code:'
      end
      object Button4: TButton
        Left = 932
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 0
        OnClick = Button4Click
      end
      object chkUplink: TCheckBox
        Left = 186
        Top = 40
        Width = 145
        Height = 17
        Caption = 'Enable Uplink'
        TabOrder = 1
      end
      object edtUplinkCode: TEdit
        Left = 186
        Top = 77
        Width = 171
        Height = 27
        MaxLength = 15
        TabOrder = 2
      end
    end
    object TabSheet4: TTabSheet
      Caption = 'Cutdown'
      ImageIndex = 6
      DesignSize = (
        1073
        455)
      object Label20: TLabel
        Left = 62
        Top = 78
        Width = 117
        Height = 19
        Alignment = taRightJustify
        Caption = 'Cutdown on for:'
      end
      object Label21: TLabel
        Left = 35
        Top = 37
        Width = 144
        Height = 19
        Alignment = taRightJustify
        Caption = 'Cutdown at altitude:'
      end
      object Label22: TLabel
        Left = 281
        Top = 38
        Width = 48
        Height = 19
        Caption = 'metres'
      end
      object Label23: TLabel
        Left = 281
        Top = 78
        Width = 21
        Height = 19
        Caption = 'ms'
      end
      object edtCutdownAltitude: TEdit
        Left = 185
        Top = 35
        Width = 85
        Height = 27
        TabOrder = 0
      end
      object edtCutdownPeriod: TEdit
        Left = 185
        Top = 75
        Width = 85
        Height = 27
        TabOrder = 1
      end
      object Button5: TButton
        Left = 924
        Top = 375
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 2
        OnClick = Button5Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = 'Prediction'
      ImageIndex = 7
      DesignSize = (
        1073
        455)
      object Label34: TLabel
        Left = 135
        Top = 72
        Width = 121
        Height = 19
        Alignment = taRightJustify
        Caption = 'Parachute CD*A:'
      end
      object Label35: TLabel
        Left = 156
        Top = 116
        Width = 100
        Height = 19
        Alignment = taRightJustify
        Caption = 'Payload Mass:'
      end
      object Label36: TLabel
        Left = 337
        Top = 116
        Width = 17
        Height = 19
        Caption = 'kg'
      end
      object Label43: TLabel
        Left = 77
        Top = 160
        Width = 179
        Height = 19
        Alignment = taRightJustify
        Caption = 'Approx Landing Altitude:'
      end
      object Label44: TLabel
        Left = 337
        Top = 160
        Width = 48
        Height = 19
        Caption = 'metres'
      end
      object edtCDA: TEdit
        Left = 270
        Top = 69
        Width = 51
        Height = 27
        MaxLength = 15
        TabOrder = 0
      end
      object edtPayloadMass: TEdit
        Left = 270
        Top = 113
        Width = 51
        Height = 27
        MaxLength = 15
        TabOrder = 1
      end
      object edtLandingAltitude: TEdit
        Left = 270
        Top = 157
        Width = 51
        Height = 27
        MaxLength = 15
        TabOrder = 2
      end
      object Button6: TButton
        Left = 920
        Top = 379
        Width = 121
        Height = 64
        Anchors = [akRight, akBottom]
        Caption = 'Set'
        TabOrder = 3
        OnClick = Button6Click
      end
    end
  end
  object pnlLatest: TPanel
    Left = 17
    Top = 631
    Width = 1070
    Height = 27
    Anchors = [akLeft, akTop, akRight, akBottom]
    BevelOuter = bvLowered
    TabOrder = 9
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
    Version = '2.2.0.1'
    Left = 372
    Top = 12
  end
  object tmrCommands: TTimer
    Interval = 100
    OnTimer = tmrCommandsTimer
    Left = 565
    Top = 132
  end
  object tmrScreenUpdates: TTimer
    Left = 464
    Top = 24
  end
  object IdHTTP1: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 572
    Top = 220
  end
  object IdHTTP2: TIdHTTP
    ProxyParams.BasicAuthentication = False
    ProxyParams.ProxyPort = 0
    Request.ContentLength = -1
    Request.ContentRangeEnd = -1
    Request.ContentRangeStart = -1
    Request.ContentRangeInstanceLength = -1
    Request.Accept = 'text/html, */*'
    Request.BasicAuthentication = False
    Request.UserAgent = 'Mozilla/3.0 (compatible; Indy Library)'
    Request.Ranges.Units = 'bytes'
    Request.Ranges = <>
    HTTPOptions = [hoForceEncodeParams]
    Left = 564
    Top = 272
  end
end
