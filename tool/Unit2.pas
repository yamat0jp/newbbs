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
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.DBCtrls, Jpeg, Vcl.Grids, Vcl.DBGrids;

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
    FDQuery1: TFDQuery;
    DBGrid1: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormDestroy(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { Private êÈåæ }
    img: TJpegImage;
    procedure streamToField(stream: TStream);
    procedure filenameToField(filename: string);
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
  t: TStream;
begin
  FDTable1.CachedUpdates := true;
  for i := 1 to 10 do
  begin
    t := TResourceStream.Create(HInstance, 'Resource_' + i.ToString, RT_RCDATA);
    FDTable1.AppendRecord([i,Format('slide%d.jpg',[i]),nil]);
    img.SaveToStream(t);
    FDTable1.Post;
    t.Free;
  end;
  FDTable1.ApplyUpdates;
  FDTable1.CommitUpdates;
  FDTable1.CachedUpdates := false;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
  if OpenPictureDialog1.Execute = true then
    filenameToField(OpenPictureDialog1.FileName);
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: TStream;
begin
  s:=FDTable1.CreateBlobStream(FDTable1.FieldByName('source'),bmRead);
  try
    img.LoadFromStream(s);
    Image1.Picture.Assign(img);
    img.CleanupInstance;
  finally
    s.Free;
  end;
end;

procedure TForm1.filenameToField(filename: string);
var
  field: TStream;
begin
  FDTable1.Edit;
  field:=FDTable1.CreateBlobStream(FDTable1.FieldByName('source'),bmWrite);
  try
    img.LoadFromFile(filename);
    img.SaveToStream(field);
    FDTable1.Post;
    img.CleanupInstance;
  finally
    field.Free;
  end;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  FDQuery1.ExecSQL;
  FDTable1.Open;
  img := TJpegImage.Create;
end;

procedure TForm1.FormDestroy(Sender: TObject);
begin
  img.Free;
end;

procedure TForm1.streamToField(stream: TStream);
var
  field: TStream;
begin
  FDTable1.Edit;
  field := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmWrite);
  try
    img.LoadFromStream(stream);
    img.SaveToStream(field);
    FDTable1.Post;
    img.CleanupInstance;
  finally
    field.Free;
  end;
end;

end.
