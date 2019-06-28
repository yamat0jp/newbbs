unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp, Web.DSProd, Web.HTTPProd;

type
  TTWebModule1 = class(TWebModule)
    top: TPageProducer;
    articles: TDataSetPageProducer;
    index: TDataSetPageProducer;
    procedure indexHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure TWebModule1indexpageAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1registAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
  private
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  WebModuleClass: TComponentClass = TTWebModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses Unit1;

{$R *.dfm}

procedure TTWebModule1.indexHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'article' then
  begin
    DataModule1.FDTable2.First;
    while DataModule1.FDTable2.Eof = false do
    begin
      ReplaceText := ReplaceText + articles.Content;
      DataModule1.FDTable2.Next;
    end;
  end;
end;

procedure TTWebModule1.TWebModule1indexpageAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf8';
  if DataModule1.FDTable3.FieldByName('mente').AsBoolean = true then
    Response.Content := 'ÇΩÇæÇ¢Ç‹ÉÅÉìÉeÉiÉìÉXíÜÇ≈Ç∑^_^';
end;

procedure TTWebModule1.TWebModule1registAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  number: integer;
  title, name, raw: string;
  comment: TStringList;
  i: integer;
begin
  with DataModule1.FDTable2 do
  begin
    Last;
    number := FieldByName('number').AsInteger + 1;
  end;
  with Request.ContentFields do
  begin
    name := Values['name'];
    raw := Values['comment'];
  end;
  comment := TStringList.Create;
  try
    comment.Text := raw;
    for i := 0 to comment.Count - 1 do
      comment[i] := '<p>' + comment[i];
    DataModule1.FDTable2.AppendRecord([number, title, name, comment.Text,
      raw, Now]);
  finally
    comment.Free;
  end;
  Response.SendRedirect('/index');
end;

procedure TTWebModule1.WebModuleCreate(Sender: TObject);
begin
  if DataModule1.FDTable1.Bof and DataModule1.FDTable1.Eof then
    DataModule1.FDTable1.AppendRecord(['info']);
end;

end.
