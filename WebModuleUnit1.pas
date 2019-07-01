unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp, Web.DSProd, Web.HTTPProd,
  Web.DBWeb, System.Variants;

type
  TTWebModule1 = class(TWebModule)
    articles: TDataSetPageProducer;
    index: TDataSetPageProducer;
    admin: TDataSetTableProducer;
    search: TPageProducer;
    items: TDataSetPageProducer;
    help: TPageProducer;
    top: TPageProducer;
    master: TPageProducer;
    alert: TDataSetPageProducer;
    footer: TDataSetPageProducer;
    mail: TPageProducer;
    header: TPageProducer;
    css1: TPageProducer;
    css2: TPageProducer;
    css3: TPageProducer;
    css4: TPageProducer;
    procedure indexHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure TWebModule1indexpageAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1registAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure TWebModule1adminAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1topAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure itemsHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure topHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure TWebModule1searchAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1helpAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure searchHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure masterHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure articlesHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
    procedure footerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure TWebModule1alertAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1masterAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure mailHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure alertHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure TWebModule1deleteAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1jumpAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { private êÈåæ }
    ss: TStringList;
    tmpint: integer;
    procedure pages(count: integer; var page: integer);
  public
    { public êÈåæ }
  end;

var
  WebModuleClass: TComponentClass = TTWebModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses Unit1;

{$R *.dfm}

procedure TTWebModule1.alertHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  i: integer;
begin
  if TagString = 'article' then
  begin
    s := TStringList.Create;
    try
      s.Text := articles.Content;
      for i := s.count - 1 downto 0 do
        if Copy(s[i], 1, 18) = '<section id=master' then
        begin
          s.Delete(i);
          break;
        end;
      ReplaceText := s.Text;
    finally
      s.Free;
    end;
  end;
end;

procedure TTWebModule1.articlesHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'database' then
    ReplaceText := Request.QueryFields.Values['db'];
end;

procedure TTWebModule1.footerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: integer;
begin
  if TagString = 'link' then
  begin
    for i := 1 to 10 do
      if i = tmpint then
        ReplaceText := ReplaceText + ' ' + i.ToString + ' '
      else
        ReplaceText := ReplaceText +
          Format('<a style=text-decoration-line:none href=%s?db=%s&num=%d> %d </a>',
          [PString(Self.Tag)^, Request.QueryFields.Values['db'], i, i]);
  end
  else if TagString = 'recent' then
    if tmpint = -1 then
      ReplaceText := TagString
    else
      ReplaceText := '<a style=text-decoration-line:none href=' +
        PString(Self.Tag)^ + '?db=' + Request.QueryFields.Values['db'] +
        '>recent</a>';
end;

procedure TTWebModule1.indexHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: integer;
  x: Boolean;
begin
  if TagString = 'article' then
  begin
    x := DataModule1.FDTable1.FieldByName('dbnum')
      .AsInteger = DataModule1.FDTable3.FieldByName('info').AsInteger;
    for i := 1 to DataModule1.FDTable3.FieldByName('count').AsInteger do
    begin
      if DataModule1.FDTable2.Eof = true then
        break;
      if x = false then
        ReplaceText := ReplaceText + articles.Content
      else
        ReplaceText := articles.Content + ReplaceText;
      DataModule1.FDTable2.Next;
    end;
  end
  else if TagString = 'footer' then
    ReplaceText := footer.Content
  else if TagString = 'header' then
  begin
    i := DataModule1.FDTable3.FieldByName('count').AsInteger;
    if 10 * i < DataModule1.FDTable2.RecordCount then
      ReplaceText := 'Ç±ÇÍà»è„ìäçeÇ≈Ç´Ç‹ÇπÇÒ.'
    else
      ReplaceText := header.Content;
  end
  else if TagString = 'css' then
    ReplaceText := css2.Content;
end;

procedure TTWebModule1.itemsHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  t, str: string;
  i, j: integer;
begin
  if TagString = 'item' then
  begin
    s := TStringList.Create;
    try
      s.Text := DataModule1.FDTable2.FieldByName('raw').AsString;
      for i := 0 to s.count - 1 do
        for j := 0 to ss.count - 1 do
          if Pos(ss[j], s[i]) > 0 then
            if Request.ContentFields.Values['type'] = 'OR' then
              s[i] := '<p style=background-color:aqua>' + s[i]
            else
              s[i] := '<p style=background-color:yellow>' + s[i];
      with DataModule1.FDTable2 do
      begin
        i := FieldByName('dbnum').AsInteger;
        j := FieldByName('number').AsInteger;
        str := Request.QueryFields.Values['db'];
        if str = '' then
          t := Format('<a href=/index?db=%s&num=%d>[ %d-%d ]</a>',
            [str, j, i, j])
        else
          t := Format('<a href=/index?db=%s&num=%d>[ %d ]</a>', [str, j, j]);
      end;
      ReplaceText := t + s.Text;
    finally
      s.Free;
    end;
  end;
end;

procedure TTWebModule1.masterHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i, j: integer;
  s: string;
begin
  if TagString = 'request' then
    with DataModule1.FDTable4 do
    begin
      First;
      while Eof = false do
      begin
        i := FieldByName('dbname').AsInteger;
        j := FieldByName('posnum').AsInteger;
        DataModule1.FDTable2.Locate('dbnum;number', VarArrayOf([i, j]), []);
        s := FieldByName('request').AsString;
        ReplaceText := ReplaceText + alert.Content + s;
        Next;
      end;
    end;
end;

procedure TTWebModule1.pages(count: integer; var page: integer);
var
  max: integer;
begin
  max := DataModule1.FDTable3.FieldByName('count').AsInteger;
  if (page > -1) and (count < max * (page - 1)) then
    page := (count div max) + 1;
  case page of
    - 1:
      begin
        DataModule1.FDTable2.Last;
        DataModule1.FDTable2.MoveBy(1 - max);
      end;
  else
    DataModule1.FDTable2.First;
    DataModule1.FDTable2.MoveBy(max * (page - 1));
  end;
end;

procedure TTWebModule1.mailHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'content' then
    ReplaceText := alert.Content
  else if TagString = 'query' then
    ReplaceText := '?' + Request.Query + '#' +
      Request.QueryFields.Values['num'];
end;

procedure TTWebModule1.searchHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  procedure sub;
  var
    i: integer;
    j: integer;
  label jump;
  begin
    DataModule1.FDTable2.First;
    while DataModule1.FDTable2.Eof = false do
    begin
      s.Text := DataModule1.FDTable2.FieldByName('raw').AsString;
      ss.Delimiter := ' ';
      ss.StrictDelimiter := false;
      ss.DelimitedText := Request.ContentFields.Values['word1'];
      for i := 0 to s.count - 1 do
        for j := 0 to ss.count - 1 do
          if Pos(ss[j], s[i]) > 0 then
          begin
            ReplaceText := ReplaceText + items.Content;
            goto jump;
          end;
    jump:
      DataModule1.FDTable2.Next;
    end;
  end;

begin
  if (Request.MethodType = mtPost) and (TagString = 'items') then
  begin
    s := TStringList.Create;
    ss := TStringList.Create;
    try
      if Request.QueryFields.Values['db'] = '' then
      begin
        DataModule1.FDTable1.First;
        while DataModule1.FDTable1.Eof = false do
        begin
          sub;
          DataModule1.FDTable1.Next;
        end;
      end
      else
        sub;
    finally
      s.Free;
      ss.Free;
    end;
  end
  else if TagString = 'query' then
  begin
    ReplaceText := Request.Query;
    if ReplaceText <> '' then
      ReplaceText := '?' + ReplaceText;
  end
  else if TagString = 'css' then
    ReplaceText := css2.Content;
end;

procedure TTWebModule1.topHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s, t: string;
  i: integer;
begin
  if TagString = 'list' then
  begin
    DataModule1.FDTable1.First;
    i := DataModule1.FDTable3.FieldByName('info').AsInteger;
    while DataModule1.FDTable1.Eof = false do
    begin
      t := '';
      if i = DataModule1.FDTable1.FieldByName('dbnum').AsInteger then
      begin
        DataModule1.FDTable1.Next;
        continue;
      end;
      s := DataModule1.FDTable1.FieldByName('database').AsString;
      DataModule1.FDTable2.Last;
      if Now - DataModule1.FDTable2.FieldByName('date').AsDateTime < 1 then
        t := 'background-color:aqua;';
      if DataModule1.FDTable2.RecordCount >= 30 then
        t := t + 'font-color:red;';
      if t <> '' then
        t := ' style=' + t;
      ReplaceText := ReplaceText +
        Format('<p%s><a target=_blank href=%s>%s</a><br></p>',
        [t, '/index?db=' + s, s]);
      DataModule1.FDTable1.Next;
    end;
  end
  else if TagString = 'info' then
    ReplaceText := DataModule1.FDTable1.Lookup('dbnum',
      DataModule1.FDTable3.FieldByName('info').AsInteger, 'database')
  else if TagString = 'css' then
    if TagParams.Values['id'] = '1' then
      ReplaceText := css1.Content
    else if TagParams.Values['id'] = '3' then
      ReplaceText := css3.Content;
end;

procedure TTWebModule1.TWebModule1adminAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  DataModule1.FDTable1.Locate('database', Request.QueryFields.Values['db'], []);
  s := '/admin';
  footer.Tag := integer(@s);
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := footer.Content + admin.Content;
end;

procedure TTWebModule1.TWebModule1alertAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num1, num2: integer;
  s: string;
begin
  s := Request.QueryFields.Values['db'];
  num1 := DataModule1.FDTable1.Lookup('database', s, 'dbnum');
  num2 := Request.QueryFields.Values['num'].ToInteger;
  if Request.MethodType = mtGet then
  begin
    DataModule1.FDTable2.Locate('number', num2, []);
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := mail.Content;
  end
  else
  begin
    DataModule1.FDTable4.AppendRecord
      ([num1, num2, Now, Request.ContentFields.Values['request']]);
    Response.SendRedirect(Format('/index?db=%s&num=%d#%d', [s, Tag, num2]));
  end;
end;

procedure TTWebModule1.TWebModule1deleteAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num: integer;
  s: string;
begin
  s := Request.QueryFields.Values['number'];
  if s = '' then
    Exit;
  num := s.ToInteger;
  s := Request.QueryFields.Values['password'];
  with DataModule1.FDTable2 do
    if Locate('number;password', VarArrayOf([num, s])) = true then
    begin
      Edit;
      FieldByName('title').AsString := '';
      FieldByName('name').AsString;
      FieldByName('comment').AsString := '<em>ìäçeé“Ç…ÇÊÇËçÌèúÇ≥ÇÍÇ‹ÇµÇΩ.</em>';
      FieldByName('raw').AsString := '';
      FieldByName('date').AsDateTime := Now;
      Post;
    end;
end;

procedure TTWebModule1.TWebModule1helpAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i, j: integer;
  s: string;
begin
  Response.ContentType := 'text/html;charset=utf-8';
  if Request.MethodType = mtPost then
  begin
    i := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;;
    j := DataModule1.FDTable2.FieldByName('number').AsInteger;
    s := Request.ContentFields.Values['help'];
    DataModule1.FDTable4.AppendRecord([i, j, s]);
  end;
  Response.Content := help.Content;
end;

procedure TTWebModule1.TWebModule1indexpageAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  count, max, int: integer;
  s: string;
begin
  DataModule1.FDTable1.Locate('database', Request.QueryFields.Values['db'], []);
  int := StrToIntDef(Request.QueryFields.Values['num'], -1);
  pages(DataModule1.FDTable2.RecordCount, int);
  tmpint := int;
  s := (Sender as TWebActionItem).PathInfo;
  Self.Tag := integer(@s);
  Response.ContentType := 'text/html; charset="utf-8"';
  if DataModule1.FDTable3.FieldByName('mente').AsBoolean = true then
    Response.Content := 'ÇΩÇæÇ¢Ç‹ÉÅÉìÉeÉiÉìÉXíÜÇ≈Ç∑^_^'
  else
    Response.Content := index.Content;
end;

procedure TTWebModule1.TWebModule1jumpAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  db, s: string;
  num, page: integer;
begin
  db := DataModule1.FDTable1.FieldByName('database').AsString;
  s := Request.ContentFields.Values['number'];
  if s = '' then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := '<a href=/index?db=' + db + '>ñﬂÇÈ</a>';
    Exit;
  end
  else
    num := s.ToInteger;
  page := 10;
  pages(num, page);
  Response.SendRedirect(Format('/index?db=%s&num=%d#%d', [db, page, num]));
end;

procedure TTWebModule1.TWebModule1masterAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := master.Content;
end;

procedure TTWebModule1.TWebModule1registAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  number: integer;
  title, name, raw, pass: string;
  comment: TStringList;
  i: integer;
begin
  name := Request.QueryFields.Values['db'];
  DataModule1.FDTable1.Locate('database', name, []);
  with DataModule1.FDTable2 do
  begin
    Last;
    number := FieldByName('number').AsInteger + 1;
  end;
  with Request.ContentFields do
  begin
    name := Values['name'];
    raw := Values['comment'];
    pass := Values['password'];
  end;
  comment := TStringList.Create;
  try
    comment.Text := raw;
    for i := 0 to comment.count - 1 do
      comment[i] := '<p>' + comment[i];
    i := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
    DataModule1.FDTable2.AppendRecord([i, number, title, name, comment.Text,
      raw, Now, pass]);
  finally
    comment.Free;
  end;
  Response.SendRedirect('/index?db=' + name);
end;

procedure TTWebModule1.TWebModule1searchAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := search.Content;
end;

procedure TTWebModule1.TWebModule1topAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := top.Content;
end;

procedure TTWebModule1.WebModuleCreate(Sender: TObject);
var
  a: Variant;
  i: Integer;
begin
  if DataModule1.FDTable1.Bof and DataModule1.FDTable1.Eof then
  begin
    DataModule1.FDTable1.AppendRecord([0, 'info']);
    for i := 1 to 10 do
      DataModule1.FDTable1.AppendRecord([i,'åfé¶î¬'+i]);
  end;
  if DataModule1.FDTable3.Bof and DataModule1.FDTable3.Eof then
  begin
    a := DataModule1.FDTable1.Lookup('database', 'info', 'dbnum');
    DataModule1.FDTable3.AppendRecord
      (['Ç∆ÇÈÇÀÅ`Ç«çÜ', '<p style=font-color:gray>Ç∆ÇÈÇÀÅ`Ç«çÜ</p>', false, a, 30]);
  end;
end;

end.
