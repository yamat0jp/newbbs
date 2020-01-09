unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts,
  FMX.Gestures, FMX.Graphics, FMX.Surfaces,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Data.Bind.Controls, Data.Bind.EngExt, FMX.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.Components, Data.DB,
  FMX.Controls.Presentation, FMX.Edit, FMX.Bind.Navigator, Data.Bind.DBScope,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FMX.Objects, FMX.StdCtrls,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI, FireDAC.Comp.BatchMove;

type
  TForm2 = class(TForm)
    Image1: TImage;
    FDTable1: TFDTable;
    FDConnection1: TFDConnection;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BindSourceDB1: TBindSourceDB;
    NavigatorBindSourceDB12: TBindNavigator;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    FDQuery1: TFDQuery;
    Button2: TButton;
    FDBatchMove1: TFDBatchMove;
    Button3: TButton;
    procedure Button1Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { private êÈåæ }
    procedure streamToField(stream, field: TStream);
  public
    { public êÈåæ }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.Button1Click(Sender: TObject);
var
  s: TStream;
  t: TMemoryStream;
begin
  if OpenDialog1.Execute = true then
  begin
    FDTable1.Edit;
    s := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmWrite);
    t := TMemoryStream.Create;
    try
      t.LoadFromFile(OpenDialog1.FileName);
      streamToField(t, s);
      FDTable1.Post;
    finally
      s.Free;
      t.Free;
    end;
  end;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
  with FDQuery1.SQL do
  begin
    Clear;
    Add('drop table images;');
    Add('create table images(id int primary key, name varchar(10), source mediumblob);');
  end;
  FormCreate(Sender);
end;

procedure TForm2.FormCreate(Sender: TObject);
var
  i: Integer;
  s, t: TStream;
begin
  FDQuery1.ExecSQL;
  FDTable1.Open;
  if FDTable1.RecordCount = 0 then
  begin
    for i := 1 to 50 do
      FDTable1.AppendRecord([i, Format('slide%d.jpg', [i]), nil]);
    FDTable1.First;
    for i := 1 to 10 do
    begin
      FDTable1.Edit;
      s := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmWrite);
      t := TResourceStream.Create(HInstance, Format('Resource_%d', [i]),
        RT_RCDATA);
      try
        streamToField(t,s);
        FDTable1.Post;
      finally
        s.Free;
      end;
      FDTable1.Next;
    end;
  end;
  FDTable1.First;
end;

procedure TForm2.streamToField(stream, field: TStream);
var
  bmp: TBitmapSurface;
  pm: TBitmapCodecSaveParams;
  img: TBitmap;
begin
  pm.Quality := 100;
  bmp := TBitmapSurface.Create;
  img:=TBitmap.Create;
  try
    img.LoadFromStream(stream);
    bmp.Assign(img);
    TBitmapCodecManager.SaveToStream(field, bmp, '.jpg', @pm);
  finally
    bmp.Free;
    img.Free;
  end;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
  FDTable1.Edit;
  FDTable1.FieldByName('source').Assign(nil);
  FDTable1.Post;
end;

end.
