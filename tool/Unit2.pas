unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.DBCtrls, Jpeg, Vcl.Grids, Vcl.DBGrids,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Phys.FB, FireDAC.Phys.FBDef;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Image1: TImage;
    Edit1: TEdit;
    Label1: TLabel;
    OpenPictureDialog1: TOpenPictureDialog;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    LinkControlToField2: TLinkControlToField;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    DBNavigator1: TDBNavigator;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    FDTable1ID: TIntegerField;
    FDTable1NAME: TWideStringField;
    FDTable1SOURCE: TBlobField;
    Button4: TButton;
    FDQuery1: TFDQuery;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
  s,t: TStream;
begin
  for i := 1 to 10 do
  begin
    t := TResourceStream.Create(HInstance, 'Resource_' + i.ToString, RT_RCDATA);
    FDTable1.AppendRecord([i,Format('slide%d.jpg',[i]),nil]);
    FDTable1.Edit;
    s:=FDTable1.CreateBlobStream(FDTable1.FieldByName('source'),bmWrite);
    s.CopyFrom(t,0);
    FDTable1.Post;
    s.Free;
    t.Free;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: TStream;
  j: TJpegImage;
begin
  s:=FDTable1.CreateBlobStream(FDTable1.FieldByName('source'),bmRead);
  j:=TJpegImage.Create;
  s.Position:=0;
  j.LoadFromStream(s);
  s.Free;
  Image1.Picture.Assign(j);
  j.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  FDTable1.Close;
  FDQuery1.ExecSQL;
  FDTable1.CreateTable;
  FDTable1.Open;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if FDTable1.Exists = false then
    FDTable1.CreateTable;
  FDTable1.Open;
end;

end.
