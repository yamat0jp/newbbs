object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 230
  Width = 302
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'DBNUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DBNAME'
    TableName = 'DBNAME'
    Left = 32
    Top = 88
    object FDTable1DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      Required = True
    end
    object FDTable1DATABASE: TWideStringField
      FieldName = 'DATABASE'
      Origin = '"DATABASE"'
      Required = True
      Size = 160
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Database=C:\Users\yamat\Documents\GitHub\newbbs\MYDATA.IB'
      'CharacterSet=UTF8'
      'User_Name=sysdba'
      'Password=masterkey'
      'OpenMode=OpenOrCreate'
      'DriverID=IBLite')
    Connected = True
    Left = 144
    Top = 24
  end
  object FDTable2: TFDTable
    Active = True
    IndexFieldNames = 'DBNUM;NUMBER'
    MasterSource = DataSource1
    MasterFields = 'DBNUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ARTICLE'
    TableName = 'ARTICLE'
    Left = 96
    Top = 88
    object FDTable2DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      Required = True
    end
    object FDTable2NUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable2TITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 40
    end
    object FDTable2NAME: TStringField
      FieldName = 'NAME'
      Origin = 'NAME'
    end
    object FDTable2COMMENT: TWideMemoField
      FieldName = 'COMMENT'
      Origin = 'COMMENT'
      BlobType = ftWideMemo
    end
    object FDTable2RAW: TWideMemoField
      FieldName = 'RAW'
      Origin = 'RAW'
      BlobType = ftWideMemo
    end
    object FDTable2DATE: TDateField
      FieldName = 'DATE'
      Origin = '"DATE"'
      Required = True
    end
  end
  object FDTable3: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'SETTING'
    TableName = 'SETTING'
    Left = 160
    Top = 88
    object FDTable3TITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 80
    end
    object FDTable3TITLE2: TWideStringField
      FieldName = 'TITLE2'
      Origin = 'TITLE2'
      Size = 320
    end
    object FDTable3MENTE: TBooleanField
      FieldName = 'MENTE'
      Origin = 'MENTE'
    end
    object FDTable3INFO: TIntegerField
      FieldName = 'INFO'
      Origin = 'INFO'
    end
    object FDTable3COUNT: TIntegerField
      FieldName = 'COUNT'
      Origin = '"COUNT"'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 24
  end
  object DataSource1: TDataSource
    DataSet = FDTable1
    Left = 64
    Top = 152
  end
  object FDQuery1: TFDQuery
    Connection = FDConnection1
    Left = 160
    Top = 152
  end
  object FDTable4: TFDTable
    Active = True
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'REQ'
    TableName = 'REQ'
    Left = 224
    Top = 88
    object FDTable4DBNAME: TIntegerField
      FieldName = 'DBNAME'
      Origin = 'DBNAME'
    end
    object FDTable4POSNUM: TIntegerField
      FieldName = 'POSNUM'
      Origin = 'POSNUM'
    end
    object FDTable4DATE: TDateField
      FieldName = 'DATE'
      Origin = '"DATE"'
      Required = True
    end
    object FDTable4REQUEST: TWideMemoField
      FieldName = 'REQUEST'
      Origin = 'REQUEST'
      BlobType = ftWideMemo
    end
  end
end
