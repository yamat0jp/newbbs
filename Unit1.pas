unit Unit1;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.SQLite,
  FireDAC.Phys.SQLiteDef, FireDAC.Stan.ExprFuncs, Data.DB, FireDAC.Comp.Client,
  FireDAC.Comp.DataSet, FireDAC.Phys.IB, FireDAC.Phys.IBLiteDef,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI;

type
  TDataModule1 = class(TDataModule)
    FDTable1: TFDTable;
    FDConnection1: TFDConnection;
    FDTable2: TFDTable;
    FDTable2NUMBER: TIntegerField;
    FDTable2TITLE: TStringField;
    FDTable2NAME: TStringField;
    FDTable2COMMENT: TWideMemoField;
    FDTable2RAW: TWideMemoField;
    FDTable2DATE: TDateField;
    FDTable1DATABASE: TWideStringField;
    FDTable3: TFDTable;
    FDTable3TITLE: TStringField;
    FDTable3TITLE2: TStringField;
    FDTable3MENTE: TBooleanField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
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
