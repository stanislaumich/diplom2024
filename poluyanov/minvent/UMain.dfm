object FMain: TFMain
  Left = 0
  Top = 0
  Caption = #1048#1085#1074#1077#1085#1090#1072#1088#1080#1079#1072#1094#1080#1103' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1103
  ClientHeight = 495
  ClientWidth = 860
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnActivate = FormActivate
  OnClose = FormClose
  OnCreate = FormCreate
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 41
    Width = 860
    Height = 435
    ActivePage = TabSheet7
    Align = alClient
    TabOrder = 0
    ExplicitWidth = 856
    ExplicitHeight = 434
    object TabSheet1: TTabSheet
      Caption = #1054#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
      object Label1: TLabel
        Left = 2
        Top = 131
        Width = 52
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label2: TLabel
        Left = 26
        Top = 158
        Width = 28
        Height = 13
        Caption = #1041#1072#1085#1082':'
      end
      object Label3: TLabel
        Left = 25
        Top = 185
        Width = 29
        Height = 13
        Caption = #1057#1095#1077#1090':'
      end
      object DBGrid1: TDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 120
        Align = alTop
        DataSource = DataModule1.DataSource1
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'bank'
            Title.Caption = #1041#1072#1085#1082
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'schet'
            Title.Caption = #1057#1095#1077#1090
            Width = 200
            Visible = True
          end>
      end
      object Edit1: TEdit
        Left = 60
        Top = 128
        Width = 361
        Height = 21
        TabOrder = 1
      end
      object Edit2: TEdit
        Left = 60
        Top = 155
        Width = 361
        Height = 21
        TabOrder = 2
      end
      object Edit3: TEdit
        Left = 60
        Top = 182
        Width = 361
        Height = 21
        TabOrder = 3
      end
      object Button1: TButton
        Left = 427
        Top = 126
        Width = 75
        Height = 25
        Caption = #1047#1072#1087#1080#1089#1072#1090#1100
        TabOrder = 4
        OnClick = Button1Click
      end
      object Button2: TButton
        Left = 427
        Top = 180
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 5
        OnClick = Button2Click
      end
      object Button3: TButton
        Left = 427
        Top = 153
        Width = 75
        Height = 25
        Caption = #1048#1089#1087#1088#1072#1074#1080#1090#1100
        TabOrder = 6
        OnClick = Button3Click
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1083#1091#1078#1073#1099
      ImageIndex = 1
      DesignSize = (
        852
        407)
      object Label4: TLabel
        Left = 8
        Top = 133
        Width = 52
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label5: TLabel
        Left = 8
        Top = 160
        Width = 53
        Height = 13
        Caption = #1054#1087#1080#1089#1072#1085#1080#1077':'
      end
      object DBGrid2: TDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 120
        Align = alTop
        DataSource = DataModule1.DataSource2
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'work'
            Title.Caption = #1054#1087#1080#1089#1072#1085#1080#1077
            Width = 200
            Visible = True
          end>
      end
      object DBEdit1: TDBEdit
        Left = 67
        Top = 130
        Width = 250
        Height = 21
        DataField = 'name'
        DataSource = DataModule1.DataSource2
        TabOrder = 1
      end
      object DBEdit2: TDBEdit
        Left = 67
        Top = 157
        Width = 250
        Height = 21
        DataField = 'work'
        DataSource = DataModule1.DataSource2
        TabOrder = 2
      end
      object DBNavigator1: TDBNavigator
        Left = 323
        Top = 126
        Width = 280
        Height = 25
        DataSource = DataModule1.DataSource2
        TabOrder = 3
      end
      object DBGrid7: TDBGrid
        Left = 609
        Top = 126
        Width = 241
        Height = 120
        Anchors = [akTop, akRight]
        DataSource = DataModule1.DataSource1
        TabOrder = 4
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1086#1088#1075#1072#1085#1080#1079#1072#1094#1080#1080
            Width = 200
            Visible = True
          end>
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082#1080' '#1080' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
      ImageIndex = 2
      object Label6: TLabel
        Left = 67
        Top = 128
        Width = 27
        Height = 13
        Caption = #1060#1048#1054':'
      end
      object Label7: TLabel
        Left = 10
        Top = 155
        Width = 84
        Height = 13
        Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103':'
      end
      object Label8: TLabel
        Left = 3
        Top = 211
        Width = 61
        Height = 13
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1080':'
      end
      object Label9: TLabel
        Left = 408
        Top = 223
        Width = 52
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label10: TLabel
        Left = 408
        Top = 245
        Width = 52
        Height = 13
        Caption = #1047#1072#1088#1087#1083#1072#1090#1072':'
      end
      object Label11: TLabel
        Left = 526
        Top = 245
        Width = 41
        Height = 13
        Caption = #1055#1088#1077#1084#1080#1103':'
      end
      object Label12: TLabel
        Left = 228
        Top = 156
        Width = 61
        Height = 13
        Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100':'
      end
      object DBGrid3: TDBGrid
        Left = 0
        Top = 0
        Width = 469
        Height = 120
        DataSource = DataModule1.DataSource3
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid3CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1060#1048#1054
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtborn'
            Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076'.'
            Width = 80
            Visible = True
          end>
      end
      object DBGrid8: TDBGrid
        Left = 475
        Top = -2
        Width = 321
        Height = 120
        DataSource = DataModule1.DataSource2
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1089#1083#1091#1078#1073#1099
            Width = 200
            Visible = True
          end>
      end
      object Button4: TButton
        Left = 10
        Top = 180
        Width = 80
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 2
        OnClick = Button4Click
      end
      object Button5: TButton
        Left = 96
        Top = 180
        Width = 94
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 3
        OnClick = Button5Click
      end
      object Button6: TButton
        Left = 196
        Top = 180
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 4
        OnClick = Button6Click
      end
      object DBGrid9: TDBGrid
        Left = 3
        Top = 230
        Width = 387
        Height = 120
        DataSource = DataModule1.DataSource4
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'salary'
            Title.Caption = #1047#1072#1088#1087#1083#1072#1090#1072', '#1088#1091#1073'.'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'premia'
            Title.Caption = #1055#1088#1077#1084#1080#1103', %'
            Visible = True
          end>
      end
      object DBNavigator3: TDBNavigator
        Left = 406
        Top = 269
        Width = 300
        Height = 25
        DataSource = DataModule1.DataSource4
        TabOrder = 6
      end
      object DBEdit5: TDBEdit
        Left = 466
        Top = 220
        Width = 239
        Height = 21
        DataField = 'name'
        DataSource = DataModule1.DataSource4
        TabOrder = 7
      end
      object DBEdit6: TDBEdit
        Left = 466
        Top = 242
        Width = 51
        Height = 21
        DataField = 'salary'
        DataSource = DataModule1.DataSource4
        TabOrder = 8
      end
      object DBEdit7: TDBEdit
        Left = 573
        Top = 242
        Width = 57
        Height = 21
        DataField = 'premia'
        DataSource = DataModule1.DataSource4
        TabOrder = 9
      end
      object ComboBox1: TComboBox
        Left = 295
        Top = 152
        Width = 174
        Height = 21
        TabOrder = 10
      end
      object Edit4: TEdit
        Left = 104
        Top = 124
        Width = 365
        Height = 21
        TabOrder = 11
      end
      object Edit5: TEdit
        Left = 104
        Top = 152
        Width = 109
        Height = 21
        TabOrder = 12
      end
    end
    object TabSheet4: TTabSheet
      Caption = #1055#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077' '#1080' '#1088#1072#1089#1087#1088#1077#1076#1077#1083#1077#1085#1080#1077
      ImageIndex = 3
      object Label18: TLabel
        Left = 4
        Top = 136
        Width = 156
        Height = 13
        Caption = #1055#1088#1080#1093#1086#1076' '#1085#1072' '#1089#1082#1083#1072#1076', '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086':'
      end
      object Label19: TLabel
        Left = 3
        Top = 160
        Width = 193
        Height = 13
        Caption = #1059#1082#1072#1078#1080#1090#1077' '#1089#1082#1083#1072#1076' '#1082#1091#1076#1072' '#1090#1086#1074#1072#1088' '#1087#1086#1089#1090#1091#1087#1080#1083':'
      end
      object Label20: TLabel
        Left = 252
        Top = 4
        Width = 139
        Height = 13
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '#1085#1072' '#1089#1082#1083#1072#1076#1072#1093':'
      end
      object Label21: TLabel
        Left = 256
        Top = 140
        Width = 182
        Height = 13
        Caption = #1042#1099#1076#1072#1090#1100' '#1086#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091':'
      end
      object Label22: TLabel
        Left = 712
        Top = 140
        Width = 18
        Height = 13
        Caption = #1096#1090'.'
      end
      object Label23: TLabel
        Left = 251
        Top = 196
        Width = 157
        Height = 13
        Caption = #1054#1073#1086#1088#1091#1076#1086#1074#1072#1085#1080#1077' '#1091' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1086#1074':'
      end
      object Label24: TLabel
        Left = 252
        Top = 356
        Width = 87
        Height = 13
        Caption = #1057#1076#1072#1090#1100' '#1085#1072' '#1089#1082#1083#1072#1076': '
      end
      object Label25: TLabel
        Left = 639
        Top = 356
        Width = 18
        Height = 13
        Caption = #1096#1090'.'
      end
      object Label27: TLabel
        Left = 255
        Top = 163
        Width = 116
        Height = 13
        Caption = #1057#1087#1080#1089#1072#1090#1100' '#1074' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1077' '
      end
      object Label28: TLabel
        Left = 432
        Top = 164
        Width = 37
        Height = 13
        Caption = #1045#1076#1080#1085#1080#1094
      end
      object DBGrid4: TDBGrid
        Left = 0
        Top = 3
        Width = 229
        Height = 122
        DataSource = DataModule1.DataSource6
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Visible = True
          end>
      end
      object Edit11: TEdit
        Left = 170
        Top = 133
        Width = 59
        Height = 21
        TabOrder = 1
        Text = '0'
      end
      object DBGrid10: TDBGrid
        Left = 3
        Top = 179
        Width = 226
        Height = 120
        DataSource = DataModule1.DataSource5
        TabOrder = 2
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Visible = True
          end>
      end
      object Button14: TButton
        Left = 4
        Top = 304
        Width = 225
        Height = 25
        Caption = #1054#1092#1086#1088#1084#1080#1090#1100' '#1087#1086#1089#1090#1091#1087#1083#1077#1085#1080#1077
        TabOrder = 3
        OnClick = Button14Click
      end
      object GroupBox1: TGroupBox
        Left = 236
        Top = 3
        Width = 9
        Height = 326
        TabOrder = 4
      end
      object DBGrid11: TDBGrid
        Left = 252
        Top = 20
        Width = 569
        Height = 113
        DataSource = DataModule1.DList
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ob'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1052#1077#1089#1090#1086
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Visible = True
          end>
      end
      object ComboBox2: TComboBox
        Left = 648
        Top = 137
        Width = 57
        Height = 21
        TabOrder = 6
        Text = '0'
      end
      object Button16: TButton
        Left = 731
        Top = 135
        Width = 90
        Height = 25
        Caption = #1042#1099#1076#1072#1090#1100
        TabOrder = 7
        OnClick = Button16Click
      end
      object DBGrid12: TDBGrid
        Left = 251
        Top = 220
        Width = 570
        Height = 129
        DataSource = DataModule1.DListS
        TabOrder = 8
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Columns = <
          item
            Expanded = False
            FieldName = 'id'
            Title.Caption = 'ID'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'ob'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1060#1048#1054
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'num'
            Title.Caption = #1050#1086#1083'-'#1074#1086
            Visible = True
          end>
      end
      object ComboBox3: TComboBox
        Left = 546
        Top = 353
        Width = 85
        Height = 21
        TabOrder = 9
      end
      object Button17: TButton
        Left = 662
        Top = 351
        Width = 75
        Height = 25
        Caption = #1057#1076#1072#1090#1100
        TabOrder = 10
        OnClick = Button17Click
      end
      object ComboBox4: TComboBox
        Left = 442
        Top = 137
        Width = 200
        Height = 21
        TabOrder = 11
      end
      object ComboBox5: TComboBox
        Left = 340
        Top = 353
        Width = 200
        Height = 21
        TabOrder = 12
      end
      object Edit13: TEdit
        Left = 380
        Top = 160
        Width = 45
        Height = 21
        TabOrder = 13
        Text = '0'
      end
      object Button22: TButton
        Left = 474
        Top = 160
        Width = 75
        Height = 21
        Caption = #1057#1087#1080#1089#1072#1090#1100
        TabOrder = 14
        OnClick = Button22Click
      end
    end
    object TabSheet5: TTabSheet
      Caption = #1052#1072#1090#1077#1088#1080#1072#1083#1099' '#1080' '#1080#1085#1089#1090#1088#1091#1084#1077#1085#1090#1099
      ImageIndex = 4
      object Label13: TLabel
        Left = 34
        Top = 131
        Width = 52
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label14: TLabel
        Left = 3
        Top = 155
        Width = 83
        Height = 13
        Caption = #1053#1072#1095#1072#1083#1086' '#1089#1083#1091#1078#1073#1099':'
      end
      object Label15: TLabel
        Left = 9
        Top = 179
        Width = 77
        Height = 13
        Caption = #1050#1086#1085#1077#1094' '#1089#1083#1091#1078#1073#1099':'
      end
      object DBGrid5: TDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 120
        Align = alTop
        DataSource = DataModule1.DataSource6
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid5CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 250
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtbegin'
            Title.Caption = #1053#1072#1095#1072#1083#1086
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'dtend'
            Title.Caption = #1050#1086#1085#1077#1094
            Visible = True
          end>
      end
      object Edit6: TEdit
        Left = 92
        Top = 128
        Width = 371
        Height = 21
        TabOrder = 1
      end
      object Edit7: TEdit
        Left = 92
        Top = 152
        Width = 121
        Height = 21
        TabOrder = 2
      end
      object Edit8: TEdit
        Left = 92
        Top = 176
        Width = 121
        Height = 21
        TabOrder = 3
      end
      object Button8: TButton
        Left = 220
        Top = 152
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 4
        OnClick = Button8Click
      end
      object Button9: TButton
        Left = 304
        Top = 152
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 5
        OnClick = Button9Click
      end
      object Button10: TButton
        Left = 388
        Top = 152
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 6
        OnClick = Button10Click
      end
    end
    object TabSheet6: TTabSheet
      Caption = #1057#1082#1083#1072#1076#1099
      ImageIndex = 5
      object Label16: TLabel
        Left = 22
        Top = 129
        Width = 52
        Height = 13
        Caption = #1053#1072#1079#1074#1072#1085#1080#1077':'
      end
      object Label17: TLabel
        Left = 39
        Top = 156
        Width = 35
        Height = 13
        Caption = #1040#1076#1088#1077#1089':'
      end
      object DBGrid6: TDBGrid
        Left = 0
        Top = 0
        Width = 852
        Height = 120
        Align = alTop
        DataSource = DataModule1.DataSource5
        TabOrder = 0
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid6CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'name'
            Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077
            Width = 200
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'adres'
            Title.Caption = #1040#1076#1088#1077#1089
            Width = 500
            Visible = True
          end>
      end
      object Edit9: TEdit
        Left = 80
        Top = 126
        Width = 281
        Height = 21
        TabOrder = 1
      end
      object Edit10: TEdit
        Left = 80
        Top = 153
        Width = 281
        Height = 21
        TabOrder = 2
      end
      object Button11: TButton
        Left = 44
        Top = 180
        Width = 75
        Height = 25
        Caption = #1044#1086#1073#1072#1074#1080#1090#1100
        TabOrder = 3
        OnClick = Button11Click
      end
      object Button12: TButton
        Left = 128
        Top = 180
        Width = 75
        Height = 25
        Caption = #1048#1079#1084#1077#1085#1080#1090#1100
        TabOrder = 4
        OnClick = Button12Click
      end
      object Button13: TButton
        Left = 212
        Top = 180
        Width = 75
        Height = 25
        Caption = #1059#1076#1072#1083#1080#1090#1100
        TabOrder = 5
        OnClick = Button13Click
      end
    end
    object TabSheet7: TTabSheet
      Caption = #1054#1090#1095#1077#1090#1099
      ImageIndex = 6
      object Label29: TLabel
        Left = 544
        Top = 8
        Width = 110
        Height = 13
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1091
      end
      object Label30: TLabel
        Left = 544
        Top = 88
        Width = 86
        Height = 13
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1089#1082#1083#1072#1076#1091
      end
      object Label31: TLabel
        Left = 548
        Top = 164
        Width = 104
        Height = 13
        Caption = #1054#1090#1095#1077#1090' '#1087#1086' '#1084#1072#1090#1077#1088#1080#1072#1083#1091
      end
      object GroupBox2: TGroupBox
        Left = 0
        Top = 0
        Width = 533
        Height = 405
        Caption = 'SQL'
        TabOrder = 0
        object Label26: TLabel
          Left = 4
          Top = 17
          Width = 3
          Height = 13
        end
        object Memo1: TMemo
          Left = 3
          Top = 43
          Width = 527
          Height = 149
          TabOrder = 0
        end
        object Button18: TButton
          Left = 455
          Top = 12
          Width = 75
          Height = 25
          Caption = #1042#1099#1073#1088#1072#1090#1100
          TabOrder = 1
          OnClick = Button18Click
        end
        object Button19: TButton
          Left = 4
          Top = 196
          Width = 75
          Height = 25
          Caption = #1042#1099#1087#1086#1083#1085#1080#1090#1100
          TabOrder = 2
          OnClick = Button19Click
        end
        object Button20: TButton
          Left = 85
          Top = 196
          Width = 75
          Height = 25
          Caption = #1055#1077#1095#1072#1090#1072#1090#1100
          TabOrder = 3
          OnClick = Button20Click
        end
        object DBGrid13: TDBGrid
          Left = 4
          Top = 224
          Width = 526
          Height = 178
          DataSource = DataModule1.DSrep
          TabOrder = 4
          TitleFont.Charset = DEFAULT_CHARSET
          TitleFont.Color = clWindowText
          TitleFont.Height = -11
          TitleFont.Name = 'Tahoma'
          TitleFont.Style = []
        end
        object Button21: TButton
          Left = 455
          Top = 196
          Width = 75
          Height = 25
          Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
          TabOrder = 5
          OnClick = Button21Click
        end
      end
      object ComboBox6: TComboBox
        Left = 544
        Top = 27
        Width = 305
        Height = 21
        TabOrder = 1
      end
      object Button23: TButton
        Left = 752
        Top = 52
        Width = 91
        Height = 25
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 2
        OnClick = Button23Click
      end
      object ComboBox7: TComboBox
        Left = 544
        Top = 104
        Width = 305
        Height = 21
        TabOrder = 3
      end
      object Button24: TButton
        Left = 752
        Top = 132
        Width = 91
        Height = 25
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 4
        OnClick = Button24Click
      end
      object ComboBox8: TComboBox
        Left = 544
        Top = 183
        Width = 305
        Height = 21
        TabOrder = 5
      end
      object Button25: TButton
        Left = 752
        Top = 210
        Width = 91
        Height = 25
        Caption = #1057#1092#1086#1088#1084#1080#1088#1086#1074#1072#1090#1100
        TabOrder = 6
        OnClick = Button25Click
      end
      object DBGrid14: TDBGrid
        Left = 544
        Top = 244
        Width = 305
        Height = 153
        DataSource = DataModule1.DSrep
        TabOrder = 7
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        Visible = False
      end
    end
  end
  object StatusBar1: TStatusBar
    Left = 0
    Top = 476
    Width = 860
    Height = 19
    Panels = <>
    ExplicitTop = 475
    ExplicitWidth = 856
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 860
    Height = 41
    Align = alTop
    TabOrder = 2
    ExplicitWidth = 856
    object Button7: TButton
      Left = 8
      Top = 8
      Width = 75
      Height = 25
      Caption = #1055#1086#1076#1082#1083#1102#1095#1080#1090#1100
      TabOrder = 0
      OnClick = Button7Click
    end
    object Edit12: TEdit
      Left = 89
      Top = 10
      Width = 313
      Height = 21
      TabOrder = 1
    end
    object Button15: TButton
      Left = 408
      Top = 8
      Width = 75
      Height = 25
      Caption = #1042#1099#1073#1088#1072#1090#1100
      TabOrder = 2
      OnClick = Button15Click
    end
  end
  object OpenDialog1: TOpenDialog
    Left = 820
    Top = 4
  end
  object SaveDialog1: TSaveDialog
    Left = 740
    Top = 4
  end
end
