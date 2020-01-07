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
    LinkControlToField1: TLinkControlToField;
    Button1: TButton;
    OpenDialog1: TOpenDialog;
    Label1: TLabel;
    LinkPropertyToFieldText: TLinkPropertyToField;
    FDTable1id: TFDAutoIncField;
    FDTable1name: TWideStringField;
    FDTable1source: TBlobField;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    procedure Button1Click(Sender: TObject);
    procedure FDTable1AfterInsert(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure FDTable1AfterPost(DataSet: TDataSet);
  private
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
  bmp: TBitmapSurface;
  pm: TBitmapCodecSaveParams;
begin
  if OpenDialog1.Execute = true then
  begin
    FDTable1.Edit;
    bmp:=TBitmapSurface.Create;
    try
      s := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmWrite);
      Image1.Bitmap.LoadFromFile(OpenDialog1.FileName);
      bmp.Assign(Image1.Bitmap);
      pm.Quality:=100;
      TBitmapCodecManager.SaveToStream(s,bmp,'.jpg',@pm);
    finally
      s.Free;
      bmp.Free;
    end;
    FDTable1.Post;
  end;
end;

procedure TForm2.FDTable1AfterInsert(DataSet: TDataSet);
begin
  FDTable1.FieldByName('name').AsString := 'slide' + FDTable1.FieldByName('id')
    .AsString + '.jpg';
end;

procedure TForm2.FDTable1AfterPost(DataSet: TDataSet);
begin
  FDTable1.Refresh;
end;

procedure TForm2.FormCreate(Sender: TObject);
begin
  if FDTable1.Exists = false then
    FDTable1.CreateTable;
  FDTable1.Open;
  FDTable1.Refresh;
end;

end.
