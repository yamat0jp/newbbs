unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes,
  System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts,
  FMX.Gestures,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Data.Bind.Controls, Data.Bind.EngExt, FMX.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, FMX.Bind.Editors, Data.Bind.Components, Data.DB,
  FMX.Controls.Presentation, FMX.Edit, FMX.Bind.Navigator, Data.Bind.DBScope,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FMX.Objects, FMX.StdCtrls,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI;

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
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    FDTable1id: TFDAutoIncField;
    FDTable1name: TWideStringField;
    FDTable1source: TBlobField;
    procedure Button1Click(Sender: TObject);
    procedure FDTable1BeforeInsert(DataSet: TDataSet);
    procedure FDTable1AfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FDTable1AfterPost(DataSet: TDataSet);
  private
    pos: integer;
    { private êÈåæ }
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
begin
  if OpenDialog1.Execute = true then
  begin
    Image1.Bitmap.LoadFromFile(OpenDialog1.FileName);
    s := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmWrite);
    try
      Image1.Bitmap.SaveToStream(s);
    finally
      s.Free;
    end;
  end;
end;

procedure TForm2.FDTable1AfterInsert(DataSet: TDataSet);
begin
  FDTable1.FieldByName('id').AsInteger := pos;
  FDTable1.FieldByName('name').AsString := 'slide' + pos.ToString + '.jpg';
end;

procedure TForm2.FDTable1AfterPost(DataSet: TDataSet);
begin
  FDTable1.Refresh;
end;

procedure TForm2.FDTable1BeforeInsert(DataSet: TDataSet);
begin
  FDTable1.Last;
  pos := FDTable1.FieldByName('id').AsInteger + 1;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if FDTable1.Exists = false then
  begin
    FDTable1.CreateTable;
    FDTable1.Open;
  end;
  FDTable1.Refresh;
end;

end.
