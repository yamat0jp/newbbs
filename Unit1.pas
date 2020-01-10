unit Unit1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.IB, FireDAC.Phys.IBLiteDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Phys.IBDef, Data.FMTBcd, Data.DBXInterBase, Data.SqlExpr;

type
  TDataModule1 = class(TDataModule)
    FDTable1: TFDTable;
    FDConnection1: TFDConnection;
    FDTable2: TFDTable;
    FDTable3: TFDTable;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DataSource1: TDataSource;
    FDTable1DBNUM: TIntegerField;
    FDTable4: TFDTable;
    FDTable4DBNAME: TIntegerField;
    FDTable4POSNUM: TIntegerField;
    FDTable4DATE: TDateField;
    FDTable4REQUEST: TWideMemoField;
    FDTable2DBNUM: TIntegerField;
    FDTable2NUMBER: TIntegerField;
    FDTable2TITLE: TWideStringField;
    FDTable2NAME: TWideStringField;
    FDTable2COMMENT: TWideMemoField;
    FDTable2RAW: TWideMemoField;
    FDTable2DATE: TDateField;
    FDTable3TITLE: TWideStringField;
    FDTable3TITLE2: TWideStringField;
    FDTable3MENTE: TBooleanField;
    FDTable3INFO: TIntegerField;
    FDTable3COUNT: TIntegerField;
    FDTable4ID: TIntegerField;
    FDTable2PASS: TWideStringField;
    FDTable5: TFDTable;
    FDTable5ID: TIntegerField;
    FDTable5NAME: TWideStringField;
    FDTable5SOURCE: TBlobField;
    FDTable1DATABASE: TWideStringField;
    FDQuery1: TFDQuery;
    FDTable3password: TWideStringField;
    FDTable3ng: TWideStringField;
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
