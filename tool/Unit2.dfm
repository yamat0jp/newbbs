object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 605
  ClientWidth = 640
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 48
    Top = 56
    Width = 6
    Height = 13
    Caption = '1'
  end
  object Label2: TLabel
    Left = 37
    Top = 491
    Width = 14
    Height = 13
    Caption = 'NG'
  end
  object Label3: TLabel
    Left = 24
    Top = 539
    Width = 50
    Height = 26
    Caption = #12497#12473#12527#12540#12489' '#35373#23450#29992
    WordWrap = True
  end
  object Bevel1: TBevel
    Left = 20
    Top = 240
    Width = 564
    Height = 50
    Shape = bsTopLine
  end
  object SpeedButton1: TSpeedButton
    Left = 561
    Top = 448
    Width = 23
    Height = 22
    OnClick = SpeedButton1Click
  end
  object Button1: TButton
    Left = 206
    Top = 32
    Width = 75
    Height = 25
    Caption = 'execute'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 206
    Top = 72
    Width = 75
    Height = 25
    Caption = 'drop table'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 206
    Top = 167
    Width = 75
    Height = 25
    Caption = 'draw'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 56
    Top = 185
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = 'slide1.jpg'
  end
  object DBGrid1: TDBGrid
    Left = 312
    Top = 32
    Width = 272
    Height = 160
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 206
    Top = 128
    Width = 75
    Height = 25
    Caption = 'delete'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 80
    Top = 336
    Width = 345
    Height = 89
    TabOrder = 6
  end
  object CheckBox1: TCheckBox
    Left = 80
    Top = 448
    Width = 97
    Height = 17
    Caption = 'mente'
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 80
    Top = 488
    Width = 345
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 80
    Top = 285
    Width = 201
    Height = 21
    TabOrder = 9
  end
  object Button5: TButton
    Left = 509
    Top = 283
    Width = 75
    Height = 25
    Caption = 'default'
    TabOrder = 10
    OnClick = Button5Click
  end
  object Edit5: TEdit
    Left = 328
    Top = 446
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 11
    Text = '30'
  end
  object UpDown1: TUpDown
    Left = 393
    Top = 446
    Width = 16
    Height = 21
    Associate = Edit5
    Min = 5
    Max = 300
    Position = 30
    TabOrder = 12
  end
  object Edit6: TEdit
    Left = 80
    Top = 536
    Width = 129
    Height = 21
    TabOrder = 13
  end
  object ComboBox1: TComboBox
    Left = 280
    Top = 536
    Width = 145
    Height = 21
    TabOrder = 14
  end
  object Button6: TButton
    Left = 509
    Top = 328
    Width = 75
    Height = 25
    Caption = 'adapt'
    TabOrder = 15
    OnClick = Button6Click
  end
  object ListBox1: TListBox
    Left = 463
    Top = 476
    Width = 121
    Height = 97
    DragMode = dmAutomatic
    ItemHeight = 13
    TabOrder = 16
    OnDragOver = ListBox1DragOver
    OnEndDrag = ListBox1EndDrag
    OnKeyDown = ListBox1KeyDown
    OnStartDrag = ListBox1StartDrag
  end
  object Edit2: TEdit
    Left = 463
    Top = 446
    Width = 92
    Height = 21
    TabOrder = 17
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=first_sql')
    Connected = True
    Left = 320
    Top = 24
  end
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    UpdateOptions.UpdateTableName = 'images'
    TableName = 'images'
    Left = 392
    Top = 24
    object FDTable1id: TIntegerField
      FieldName = 'id'
      Origin = 'id'
      Required = True
    end
    object FDTable1name: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'name'
      Origin = '`name`'
      Size = 30
    end
    object FDTable1source: TWideMemoField
      AutoGenerateValue = arDefault
      FieldName = 'source'
      Origin = '`source`'
      BlobType = ftWideMemo
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    FilterIndex = 2
    Options = [ofHideReadOnly, ofAllowMultiSelect, ofEnableSizing]
    Left = 88
    Top = 96
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = FDTable1
    ScopeMappings = <>
    Left = 176
    Top = 216
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 20
    Top = 13
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB1
      FieldName = 'id'
      Component = Label1
      ComponentProperty = 'Caption'
    end
    object LinkControlToField2: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB1
      FieldName = 'name'
      Control = Edit1
      Track = True
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 88
    Top = 152
  end
  object FDQuery1: TFDQuery
    CachedUpdates = True
    Connection = FDConnection1
    SQL.Strings = (
      'create table if not exists'
      ' images(id int primary key,'
      ' name varchar(30), source longtext);')
    Left = 440
    Top = 112
  end
  object FDTable2: TFDTable
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'setting'
    TableName = 'setting'
    Left = 496
    Top = 240
    object FDTable2title: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'title'
      Origin = 'title'
      Size = 160
    end
    object FDTable2title2: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'title2'
      Origin = 'title2'
      Size = 320
    end
    object FDTable2mente: TSmallintField
      AutoGenerateValue = arDefault
      FieldName = 'mente'
      Origin = 'mente'
    end
    object FDTable2info: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'info'
      Origin = 'info'
    end
    object FDTable2count: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'count'
      Origin = 'count'
    end
    object FDTable2password: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'password'
      Origin = '`password`'
      Size = 100
    end
    object FDTable2ng: TWideStringField
      AutoGenerateValue = arDefault
      FieldName = 'ng'
      Origin = 'ng'
      Size = 300
    end
  end
  object FDTable3: TFDTable
    CachedUpdates = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbname'
    TableName = 'dbname'
    Left = 440
    Top = 240
    object FDTable3dbnum: TIntegerField
      FieldName = 'dbnum'
      Origin = 'dbnum'
      Required = True
    end
    object FDTable3database: TWideStringField
      FieldName = 'database'
      Origin = '`database`'
      Required = True
      Size = 80
    end
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 464
    Top = 24
  end
end
