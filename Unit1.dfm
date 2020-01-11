object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 231
  Width = 302
  object FDTable1: TFDTable
    IndexFieldNames = 'DBNUM'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'dbname'
    TableName = 'dbname'
    Left = 32
    Top = 88
    object FDTable1DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      Required = True
    end
    object FDTable1DATABASE: TWideStringField
      FieldName = 'DATABASE'
      Origin = 'DATABASE'
      Required = True
      Size = 80
    end
  end
  object FDConnection1: TFDConnection
    Params.Strings = (
      'Password=kainushi'
      'CharacterSet=utf8'
      'User_Name=masasi'
      'Database=kainushi'
      'Server=localhost'
      'DriverID=MySQL')
    Connected = True
    Left = 144
    Top = 24
  end
  object FDTable2: TFDTable
    IndexFieldNames = 'DBNUM;NUMBER'
    MasterSource = DataSource1
    MasterFields = 'DBNUM'
    Connection = FDConnection1
    FetchOptions.AssignedValues = [evLiveWindowParanoic]
    FetchOptions.LiveWindowParanoic = True
    UpdateOptions.UpdateTableName = 'article'
    TableName = 'article'
    Left = 96
    Top = 88
    object FDTable2DBNUM: TIntegerField
      FieldName = 'DBNUM'
      Origin = 'DBNUM'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable2NUMBER: TIntegerField
      FieldName = 'NUMBER'
      Origin = 'NUMBER'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object FDTable2TITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 160
    end
    object FDTable2NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      Size = 160
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
      Origin = 'DATE'
    end
    object FDTable2PASS: TWideStringField
      FieldName = 'PASS'
      Origin = 'PASS'
      FixedChar = True
      Size = 40
    end
  end
  object FDTable3: TFDTable
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'setting'
    TableName = 'setting'
    Left = 160
    Top = 88
    object FDTable3TITLE: TWideStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
      Size = 160
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
      Origin = 'COUNT'
    end
    object FDTable3password: TWideStringField
      FieldName = 'password'
      Size = 100
    end
    object FDTable3ng: TWideStringField
      FieldName = 'ng'
      Size = 300
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
  object FDTable4: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'req'
    TableName = 'req'
    Left = 224
    Top = 88
    object FDTable4ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
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
      Origin = 'DATE'
      Required = True
    end
    object FDTable4REQUEST: TWideMemoField
      FieldName = 'REQUEST'
      Origin = 'REQUEST'
      BlobType = ftWideMemo
    end
  end
  object FDTable5: TFDTable
    IndexFieldNames = 'ID'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'images'
    TableName = 'images'
    Left = 224
    Top = 144
    object FDTable5ID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object FDTable5NAME: TWideStringField
      FieldName = 'NAME'
      Origin = 'NAME'
      FixedChar = True
    end
    object FDTable5SOURCE: TBlobField
      FieldName = 'SOURCE'
      Origin = 'SOURCE'
    end
  end
end
