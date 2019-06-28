object DataModule1: TDataModule1
  OldCreateOrder = False
  Height = 150
  Width = 215
  object FDTable1: TFDTable
    Active = True
    IndexFieldNames = 'DATABASE'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'DBNAME'
    TableName = 'DBNAME'
    Left = 16
    Top = 88
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
    IndexFieldNames = 'NUMBER'
    Connection = FDConnection1
    UpdateOptions.UpdateTableName = 'ARTICLE'
    TableName = 'ARTICLE'
    Left = 80
    Top = 88
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
    Left = 144
    Top = 88
    object FDTable3TITLE: TStringField
      FieldName = 'TITLE'
      Origin = 'TITLE'
    end
    object FDTable3TITLE2: TStringField
      FieldName = 'TITLE2'
      Origin = 'TITLE2'
      Size = 80
    end
    object FDTable3MENTE: TBooleanField
      FieldName = 'MENTE'
      Origin = 'MENTE'
    end
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 48
    Top = 24
  end
end
