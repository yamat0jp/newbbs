object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 657
  ClientWidth = 635
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
    Width = 3
    Height = 13
  end
  object Label2: TLabel
    Left = 20
    Top = 531
    Width = 14
    Height = 13
    Caption = 'NG'
  end
  object Label3: TLabel
    Left = 8
    Top = 579
    Width = 36
    Height = 13
    Caption = #35373#23450#29992
  end
  object Button1: TButton
    Left = 296
    Top = 56
    Width = 75
    Height = 25
    Caption = 'Button1'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 296
    Top = 96
    Width = 75
    Height = 25
    Caption = 'Button2'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 296
    Top = 191
    Width = 75
    Height = 25
    Caption = 'Button3'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 48
    Top = 225
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
  end
  object DBNavigator1: TDBNavigator
    Left = 224
    Top = 222
    Width = 240
    Height = 25
    DataSource = DataSource1
    TabOrder = 4
  end
  object DBGrid1: TDBGrid
    Left = 398
    Top = 80
    Width = 186
    Height = 120
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button4: TButton
    Left = 296
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Button4'
    TabOrder = 6
    OnClick = Button4Click
  end
  object Memo1: TMemo
    Left = 64
    Top = 376
    Width = 425
    Height = 89
    TabOrder = 7
  end
  object CheckBox1: TCheckBox
    Left = 64
    Top = 488
    Width = 97
    Height = 17
    Caption = 'mente'
    TabOrder = 8
    OnClick = CheckBox1Click
  end
  object Edit3: TEdit
    Left = 64
    Top = 528
    Width = 425
    Height = 21
    TabOrder = 9
  end
  object Edit4: TEdit
    Left = 64
    Top = 325
    Width = 209
    Height = 21
    TabOrder = 10
  end
  object Button5: TButton
    Left = 520
    Top = 323
    Width = 75
    Height = 25
    Caption = 'default'
    TabOrder = 11
    OnClick = Button5Click
  end
  object Edit5: TEdit
    Left = 328
    Top = 486
    Width = 65
    Height = 21
    ReadOnly = True
    TabOrder = 12
    Text = '30'
  end
  object UpDown1: TUpDown
    Left = 393
    Top = 486
    Width = 16
    Height = 21
    Associate = Edit5
    Min = 5
    Max = 300
    Position = 30
    TabOrder = 13
    OnClick = UpDown1Click
  end
  object Edit6: TEdit
    Left = 64
    Top = 576
    Width = 121
    Height = 21
    TabOrder = 14
  end
  object ComboBox1: TComboBox
    Left = 280
    Top = 576
    Width = 145
    Height = 21
    TabOrder = 15
    OnSelect = ComboBox1Select
  end
  object Button6: TButton
    Left = 520
    Top = 368
    Width = 75
    Height = 25
    Caption = 'adapt'
    TabOrder = 16
    OnClick = Button6Click
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=first_sql')
    Connected = True
    Left = 144
    Top = 64
  end
  object FDTable1: TFDTable
    Active = True
    CachedUpdates = True
    IndexFieldNames = 'id'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evDetailCascade, evDetailServerCascade]
    FetchOptions.DetailCascade = True
    FetchOptions.DetailServerCascade = True
    UpdateOptions.UpdateTableName = 'images'
    TableName = 'images'
    Left = 232
    Top = 64
    object FDTable1ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTable1NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
    end
    object FDTable1SOURCE: TBlobField
      FieldName = 'SOURCE'
      Origin = '"SOURCE"'
    end
  end
  object OpenPictureDialog1: TOpenPictureDialog
    DefaultExt = 'jpg'
    FilterIndex = 2
    Left = 144
    Top = 128
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
    object LinkControlToField1: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB2
      FieldName = 'ng'
      Control = Edit3
      Track = True
    end
    object LinkControlToField5: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB2
      FieldName = 'title'
      Control = Edit4
      Track = True
    end
    object LinkControlToField4: TLinkControlToField
      Category = #12463#12452#12483#12463' '#12496#12452#12531#12487#12451#12531#12464
      DataSource = BindSourceDB2
      FieldName = 'title2'
      Control = Memo1
      Track = False
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 224
    Top = 160
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 232
    Top = 112
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    SQL.Strings = (
      'use kainushi;'
      'create table images(id int primary key,'
      ' name varchar(30), source mediumblob);')
    Left = 440
    Top = 112
  end
  object FDTable2: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'setting'
    TableName = 'setting'
    Left = 496
    Top = 280
  end
  object BindSourceDB2: TBindSourceDB
    DataSet = FDTable2
    ScopeMappings = <>
    Left = 368
    Top = 304
  end
end
