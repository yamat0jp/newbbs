unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Types, System.Classes, Vcl.Graphics,
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
  Vcl.ComCtrls, Vcl.Buttons;

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
    Bevel1: TBevel;
    ListBox1: TListBox;
    SpeedButton1: TSpeedButton;
    Edit2: TEdit;
    FDTable2title: TWideStringField;
    FDTable2title2: TWideStringField;
    FDTable2mente: TSmallintField;
    FDTable2info: TIntegerField;
    FDTable2count: TIntegerField;
    FDTable2password: TWideStringField;
    FDTable2ng: TWideStringField;
    FDTable3: TFDTable;
    FDTable3dbnum: TIntegerField;
    FDTable3database: TWideStringField;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure ComboBox1Select(Sender: TObject);
    procedure CheckBox1Click(Sender: TObject);
    procedure UpDown1Click(Sender: TObject; Button: TUDBtnType);
    procedure Button5Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure ListBox1KeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
      State: TDragState; var Accept: Boolean);
    procedure ListBox1EndDrag(Sender, Target: TObject; X, Y: Integer);
    procedure ListBox1StartDrag(Sender: TObject; var DragObject: TDragObject);
  private
    { Private êÈåæ }
    item: Integer;
    procedure combo;
    procedure list;
    procedure itemsCopy;
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

procedure TForm1.Button5Click(Sender: TObject);
var
  i: Integer;
begin
  Edit4.Text := 'Ç∆ÇÈÇÀÅ`Ç«çÜ';
  Memo1.Lines.Text :=
    '<h1 style=color:maron;text-align:center;font-style:italic>Ç∆ÇÈÇÀÅ`Ç«çÜ</h1>';
  Edit3.Text := 'îné≠,à¢ï€,éÄÇÀ,éEÇ∑';
  Edit6.Text := 'admin';
  ComboBox1.Text := 'info';
  ComboBox1Select(nil);
  UpDown1.Position := 30;
  UpDown1Click(nil, btNext);
  CheckBox1.Checked := false;
  CheckBox1Click(nil);
  ListBox1.Items.Clear;
  ListBox1.Items.Add('info');
  ListBox1.Items.Add('master');
  for i := 1 to 10 do
    ListBox1.Items.Add('åfé¶î¬'+i.ToString);
  list;
  itemsCopy;
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
  if ComboBox1.Items.IndexOf(ComboBox1.Text) = -1 then
  begin
    ComboBox1.ItemIndex := 0;
    ComboBox1Select(nil);
  end;
  FDTable2.Post;
  list;
  FDTable2.ApplyUpdates;
  FDTable2.CommitUpdates;
  FDTable3.ApplyUpdates;
  FDTable3.CommitUpdates;
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

procedure TForm1.combo;
var
  i: Integer;
  s: string;
begin
  ComboBox1.Items.Clear;
  with FDTable3 do
  begin
    First;
    while Eof = false do
    begin
      s := FieldByName('database').AsString;
      ComboBox1.Items.Add(s);
      Next;
    end;
    ComboBox1.Text := Lookup('dbnum', FDTable2.FieldByName('info').AsInteger,
      'database');
  end;
  ListBox1.Items.Text := ComboBox1.Items.Text;
  i := ComboBox1.Items.IndexOf('master');
  ComboBox1.Items.Delete(i);
end;

procedure TForm1.ComboBox1Select(Sender: TObject);
begin
  FDTable2.FieldByName('info').AsInteger := FDTable3.Lookup('database',
    ComboBox1.Text, 'dbnum');
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
  if FDTable1.Exists = false then
  begin
    FDTable1.Close;
    FDQuery1.ExecSQL;
    FDTable1.Open;
  end;
  if FDTable2.Exists = false then
    FDTable2.CreateTable;
  FDTable2.Open;
  FDTable1.Refresh;
  FDTable2.Refresh;
  if FDTable3.Exists = false then
    FDTable3.CreateTable;
  FDTable3.Open;
  with FDTable3 do
  if (Bof = true)and(Eof = true) then
  begin
    list;
    ApplyUpdates;
    CommitUpdates;
  end;
  FDTable3.Refresh;
  combo;
  CheckBox1.Checked := FDTable2.FieldByName('mente').AsInteger = 1;
  UpDown1.Position := FDTable2.FieldByName('count').AsInteger;
  FDTable2.Edit;
end;

procedure TForm1.itemsCopy;
var
  i: Integer;
  s: string;
begin
  ComboBox1.Items.Clear;
  for i := 0 to ListBox1.Items.Count - 1 do
  begin
    s := ListBox1.Items[i];
    if s <> 'master' then
      ComboBox1.Items.Add(s);
  end;
  if (ComboBox1.Items.IndexOf(ComboBox1.Text) = -1) and
    (ComboBox1.Items.Count > 0) then
    ComboBox1.ItemIndex := 0;
end;

procedure TForm1.list;
var
  i: Integer;
begin
  with FDTable3 do
  begin
    First;
    while (Bof = false) or (Eof = false) do
      Delete;
    for i := 0 to ListBox1.Items.Count - 1 do
      AppendRecord([i, ListBox1.Items[i]]);
  end;
end;

procedure TForm1.ListBox1DragOver(Sender, Source: TObject; X, Y: Integer;
  State: TDragState; var Accept: Boolean);
begin
  Accept := Source is TListBox;
end;

procedure TForm1.ListBox1EndDrag(Sender, Target: TObject; X, Y: Integer);
var
  i: Integer;
begin
  i := ListBox1.ItemAtPos(Point(X, Y), true);
  if ((X > 0) or (Y > 0)) and (i > -1) then
  begin
    ListBox1.Items.Move(item, i);
    itemsCopy;
  end;
end;

procedure TForm1.ListBox1KeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
var
  i: Integer;
begin
  i := ListBox1.ItemIndex;
  if (Key = VK_DELETE) and (i > -1) and (ListBox1.Items[i] <> 'master') then
  begin
    ListBox1.Items.Delete(i);
    itemsCopy;
  end;
end;

procedure TForm1.ListBox1StartDrag(Sender: TObject;
  var DragObject: TDragObject);
begin
  item := ListBox1.ItemIndex;
end;

procedure TForm1.SpeedButton1Click(Sender: TObject);
var
  s: string;
begin
  s := Edit2.Text;
  if (s <> '') and (ListBox1.Items.IndexOf(s) = -1) then
  begin
    ListBox1.Items.Add(s);
    ComboBox1.Items.Add(s);
    Edit2.Text := '';
    ListBox1.ItemIndex := ListBox1.Items.Count - 1;
  end;
end;

procedure TForm1.UpDown1Click(Sender: TObject; Button: TUDBtnType);
begin
  FDTable2.FieldByName('count').AsInteger := UpDown1.Position;
end;

end.
