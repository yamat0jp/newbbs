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
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.DBCtrls, Jpeg, Vcl.Grids,
  Vcl.DBGrids,
  FireDAC.Phys.IB, FireDAC.Phys.IBDef, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  Vcl.ComCtrls;

type
  TForm1 = class(TForm)
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
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
    Memo1: TMemo;
    CheckBox1: TCheckBox;
    Edit3: TEdit;
    Label2: TLabel;
    FDTable2: TFDTable;
    BindSourceDB2: TBindSourceDB;
    LinkControlToField1: TLinkControlToField;
    Edit4: TEdit;
    LinkControlToField5: TLinkControlToField;
    Button5: TButton;
    Edit5: TEdit;
    UpDown1: TUpDown;
    Edit6: TEdit;
    LinkControlToField4: TLinkControlToField;
    ComboBox1: TComboBox;
    Button6: TButton;
    Label3: TLabel;
    Label4: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
  private
    { Private êÈåæ }
  public
    { Public êÈåæ }
  end;

var
  Form1: TForm1;

implementation

uses System.NetEncoding, IdHashSHA, IdHashMessageDigest;

{$R *.dfm}

procedure TForm1.Button1Click(Sender: TObject);
var
  i: Integer;
  t: TStream;
begin
  with FDTable1 do
  begin
    for i := 1 to 10 do
    begin
      t := TResourceStream.Create(HInstance, 'Resource_' + i.ToString,
        RT_RCDATA);
      AppendRecord([i, Format('slide%d.jpg', [i])]);
      Edit;
      FDTable1SOURCE.LoadFromStream(t);
      Post;
      t.Free;
    end;
    ApplyUpdates;
    CommitUpdates;
  end;
end;

procedure TForm1.Button3Click(Sender: TObject);
var
  s: TStream;
  j: TJpegImage;
begin
  s := FDTable1.CreateBlobStream(FDTable1.FieldByName('source'), bmRead);
  j := TJpegImage.Create;
  j.LoadFromStream(s);
  Canvas.Draw(0, 0, j);
  s.Free;
  j.Free;
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
  with FDTable1 do
  begin
    repeat
      Delete;
    until (Bof = true) and (Eof = true);
    ApplyUpdates;
    Reconcile;
    CommitUpdates;
  end;
end;

procedure TForm1.Button6Click(Sender: TObject);
  function hash(str: string): string;
  begin
    with TIdHashSHA1.Create do
    begin
      try
        result := HashStringAsHex(str);
      finally
        Free;
      end;
    end;
  end;

begin
  if Edit6.Text <> '' then
    FDTable2.FieldByName('password').AsString := hash(hash(Edit6.Text));
  FDTable2.Post;
  FDTable2.Edit;
end;

procedure TForm1.CheckBox1Click(Sender: TObject);
var
  i: Integer;
begin
  if CheckBox1.Checked = true then
    i := 1
  else
    i := 0;
  FDTable2.FieldByName('mente').AsInteger := i;
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
  FDQuery1.Open('select * from dbname');
  FDTable2.FieldByName('info').AsInteger := FDQuery1.Lookup('database',
    ComboBox1.Text, 'dbnum');
  FDQuery1.Close;
end;

procedure TForm1.FormCreate(Sender: TObject);
var
  s: string;
begin
  if FDTable1.Exists = false then
  begin
    FDTable1.Close;
    FDQuery1.ExecSQL;
    FDTable1.Open;
  end;
  FDTable1.Refresh;
  FDTable2.Refresh;
  ComboBox1.Items.Clear;
  with FDQuery1 do
  begin
    Open('select * from dbname;');
    while Eof = false do
    begin
      s := FieldByName('database').AsString;
      if s <> 'master' then
        ComboBox1.Items.Add(s);
      Next;
    end;
    ComboBox1.Text := Lookup('dbnum', FDTable2.FieldByName('info').AsInteger,
      'database');
    Close;
  end;
  CheckBox1.Checked := FDTable2.FieldByName('mente').AsInteger = 1;
  UpDown1.Position := FDTable2.FieldByName('count').AsInteger;
  FDTable2.Edit;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  FDTable2.FieldByName('count').AsInteger := UpDown1.Position;
end;

end.
