object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 299
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
    Width = 6
    Height = 13
    Caption = '1'
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
    Text = 'slide1.jpg'
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
  object FDConnection1: TFDConnection
    Params.Strings = (
      'ConnectionDef=test_server')
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
end
