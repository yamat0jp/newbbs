unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp, Web.DSProd, Web.HTTPProd,
  Web.DBWeb, System.Variants, System.NetEncoding, System.RegularExpressions;

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
    css1: TPageProducer;
    css2: TPageProducer;
    css3: TPageProducer;
    css4: TPageProducer;
    header: TDataSetPageProducer;
    login: TDataSetPageProducer;
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
    procedure TWebModule1linkAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure headerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure adminFormatCell(Sender: TObject; CellRow, CellColumn: Integer;
      var BgColor: THTMLBgColor; var Align: THTMLAlign; var VAlign: THTMLVAlign;
      var CustomAttrs, CellData: string);
    procedure TWebModule1admdelAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure TWebModule1loginAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { private êÈåæ }
    ss: TStringList;
    checkbox: Boolean;
    procedure pages(count: Integer; var page: Integer);
  public
    { public êÈåæ }
  end;

var
  WebModuleClass: TComponentClass = TTWebModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses Unit1;

{$R *.dfm}

procedure TTWebModule1.adminFormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign;
  var CustomAttrs, CellData: string);
begin
  if (CellColumn = 0) and (CellRow > 0) then
    CellData := Format('<input name=check%d type=checkbox>', [CellRow]);
end;

procedure TTWebModule1.alertHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  i: Integer;
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
    ReplaceText := Request.QueryFields.Values['db']
  else if TagString = 'comment' then
    ReplaceText := DataModule1.FDTable2.FieldByName('comment').AsString;
end;

procedure TTWebModule1.footerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: Integer;
begin
  if TagString = 'link' then
  begin
    for i := 1 to 10 do
      if i = index.Tag then
        ReplaceText := ReplaceText + ' ' + i.ToString + ' '
      else
        ReplaceText := ReplaceText +
          Format(' <a style=text-decoration-line:none href=%s?db=%s&num=%d>%d</a> ',
          [PString(Self.Tag)^,
          TNetEncoding.URL.Decode(Request.QueryFields.Values['db']), i, i]);
  end
  else if TagString = 'recent' then
    if index.Tag = -1 then
      ReplaceText := TagString
    else
      ReplaceText := '<a style=text-decoration-line:none href=' +
        PString(Self.Tag)^ + '?db=' + Request.QueryFields.Values['db'] +
        '>recent</a>'
  else if TagString = 'pathinfo' then
    ReplaceText := PString(Self.Tag)^;
end;

procedure TTWebModule1.headerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: string;
begin
  if TagString = 'cookie' then
  begin
    s := TagParams.Values['param'];
    ReplaceText := TNetEncoding.URL.Decode(Request.CookieFields.Values[s]);
  end
  else if (TagString = 'check') and (checkbox = true) then
    ReplaceText := 'checked'
  else if (TagString = 'preview') and (header.Tag <> 0) then
  begin
    ReplaceText := PString(header.Tag)^;
    Dispose(Pointer(header.Tag));
  end
  else if (TagString = 'raw') and (articles.Tag <> 0) then
  begin
    ReplaceText:=PString(articles.Tag)^;
    Dispose(Pointer(articles.Tag));
  end;
end;

procedure TTWebModule1.indexHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: Integer;
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
      if DataModule1.FDTable2.Eof = false then
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
  i, j: Integer;
begin
  if TagString = 'item' then
  begin
    s := TStringList.Create;
    try
      s.Text := DataModule1.FDTable2.FieldByName('raw').AsString;
      for i := 0 to s.count - 1 do
        for j := 0 to ss.count - 1 do
          if Pos(ss[j], s[i]) > 0 then
            if Self.Tag = 0 then
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
  i, j: Integer;
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

procedure TTWebModule1.pages(count: Integer; var page: Integer);
var
  max: Integer;
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
    i: Integer;
    j: Integer;
  label jump;
  begin
    DataModule1.FDTable2.First;
    while DataModule1.FDTable2.Eof = false do
    begin
      s.Text := DataModule1.FDTable2.FieldByName('raw').AsString;
      ss.DelimitedText := Request.ContentFields.Values['word1'];
      for j := 0 to ss.count - 1 do
        for i := 0 to s.count - 1 do
          if Pos(ss[j], s[i]) > 0 then
            if Self.Tag = 0 then
            begin
              ReplaceText := ReplaceText + items.Content;
              goto jump;
            end
            else
            begin
              if j = ss.count - 1 then
              begin
                ReplaceText := ReplaceText + items.Content;
                goto jump;
              end
              else
                break;
            end
          else if i = s.count - 1 then
            goto jump;
    jump:
      DataModule1.FDTable2.Next;
    end;
  end;

begin
  if (Request.MethodType = mtPost) and (TagString = 'items') then
  begin
    if Request.ContentFields.Values['type'] = 'OR' then
      Self.Tag := 0
    else
      Self.Tag := 1;
    s := TStringList.Create;
    ss := TStringList.Create;
    try
      ss.Delimiter := ' ';
      ss.StrictDelimiter := false;
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
  i: Integer;
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
      if DataModule1.FDTable2.RecordCount >= 10 *
        DataModule1.FDTable3.FieldByName('count').AsInteger then
        t := t + 'color:red;';
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
    case TagParams.Values['id'].ToInteger of
      1:
        ReplaceText := css1.Content;
      3:
        ReplaceText := css3.Content;
    end;
end;

procedure TTWebModule1.TWebModule1admdelAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i, j, k, m: Integer;
  reg: TRegEx;
  match: TMatch;
begin
  j := 0;
  DataModule1.FDTable2.RecNo := admin.Tag;
  for i := 0 to Request.ContentFields.count - 1 do
  begin
    reg := TRegEx.Create('\d+');
    match := reg.match(Request.ContentFields[i]);
    if match.Success = true then
    begin
      k := match.Value.ToInteger - j - 1;
      j := match.Value.ToInteger;
      for m := 1 to k do
        DataModule1.FDTable2.Next;
      DataModule1.FDTable2.Delete;
    end;
  end;
  Response.SendRedirect('/admin?db=' + TNetEncoding.URL.Encode
    (DataModule1.FDTable1.FieldByName('database').AsString));
end;

procedure TTWebModule1.TWebModule1adminAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  i: Integer;
begin
  if Request.CookieFields.Values['user'] <> 'admin' then
  begin
    Response.SendRedirect('/login');
    Exit;
  end;
  admin.MaxRows := DataModule1.FDTable3.FieldByName('count').AsInteger;
  s := TNetEncoding.URL.Decode(Request.QueryFields.Values['db']);
  DataModule1.FDTable1.Locate('database', s, []);
  s := Request.QueryFields.Values['num'];
  i := StrToIntDef(s, -1);
  pages(DataModule1.FDTable2.RecordCount, i);
  index.Tag := i;
  s := '/admin';
  footer.Tag := Integer(@s);
  i := footer.HTMLDoc.Add
    ('<p style=text-align:center><a href=/index?db=<#database>>ñﬂÇÈ</a>');
  if admin.Tag = 0 then
  begin
    admin.footer.Insert(3, footer.Content);
    admin.Tag := 1;
  end
  else
  begin
    admin.footer.Delete(3);
    admin.footer.Insert(3, footer.Content);
  end;
  footer.HTMLDoc.Delete(i);
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := admin.Content;
end;

procedure TTWebModule1.TWebModule1alertAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num1, num2: Integer;
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
  num: Integer;
  s: string;
begin
  s := Request.ContentFields.Values['number'];
  if s = '' then
    Exit;
  num := s.ToInteger;
  s := Request.ContentFields.Values['password'];
  with DataModule1.FDTable2 do
    if Locate('number;pass', VarArrayOf([num, s])) = true then
    begin
      Edit;
      FieldByName('title').AsString := '';
      FieldByName('name').AsString := '---';
      FieldByName('comment').AsString := '<em>ìäçeé“Ç…ÇÊÇËçÌèúÇ≥ÇÍÇ‹ÇµÇΩ.</em>';
      FieldByName('raw').AsString := '';
      FieldByName('date').AsDateTime := Now;
      Post;
    end;
  Response.SendRedirect('/index?db=' + DataModule1.FDTable1.FieldByName
    ('database').AsString);
end;

procedure TTWebModule1.TWebModule1helpAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i, j: Integer;
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
  int: Integer;
  s: string;
begin
  DataModule1.FDTable1.Locate('database', Request.QueryFields.Values['db'], []);
  int := StrToIntDef(Request.QueryFields.Values['num'], -1);
  pages(DataModule1.FDTable2.RecordCount, int);
  index.Tag := int;
  s := '/index';
  Self.Tag := Integer(@s);
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
  page: Integer;
begin
  db := DataModule1.FDTable1.FieldByName('database').AsString;
  s := Request.ContentFields.Values['num'];
  if s = '' then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := '<a href=/index?db=' + db + '>ñﬂÇÈ</a>';
    Exit;
  end;
  DataModule1.FDTable2.Locate('number', s.ToInteger, []);
  page := 10;
  pages(DataModule1.FDTable2.RecNo, page);
  Response.SendRedirect(Format('/index?db=%s&num=%d#%s',
    [TNetEncoding.URL.Encode(db), page, s]));
end;

procedure TTWebModule1.TWebModule1linkAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num: Integer;
  s: string;
begin
  s := Request.QueryFields.Values['num'];
  if s = '' then
    Exit;
  num := s.ToInteger;
  if DataModule1.FDTable2.Locate('number', num, []) = true then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := articles.Content;
  end;
end;

procedure TTWebModule1.TWebModule1loginAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  if Request.MethodType = mtGet then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := login.Content;
    Exit;
  end;
  with Response.Cookies.Add do
  begin
    Name := 'user';
    Value := 'admin';
    Expires := Now + 14;
  end;
  s := Request.ContentFields.Values['record'];
  Response.SendRedirect('/admin?db=' + TNetEncoding.URL.Encode(s));
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
  number: Integer;
  title, na, raw, pass, kotoba, db, error, URL: string;
  p: PString;
  comment: TStringList;
  i: Integer;
  function scan(Text: string): string;
  var
    reg: TRegEx;
    coll: TMatchCollection;
    j: Integer;
    s: string;
  begin
    Text := TNetEncoding.HTML.Encode(Text);
    s := TNetEncoding.HTML.Encode('>>');
    reg := TRegEx.Create(s + '(\d+)');
    coll := reg.Matches(Text);
    for j := coll.count - 1 downto 0 do
    begin
      Delete(Text, coll[i].index, coll[i].Length);
      s := Copy(coll[j].Value, Length(s) + 1, coll[j].Length);
      result := Format
        ('<a class=minpreview data-preview-url=/link?num=%s href=/jump?num=%s>>>%s</a>',
        [s, s, s]);
      Insert(result, Text, coll[j].index);
    end;
    result := Text;
  end;

begin
  error := '';
  db := Request.QueryFields.Values['db'];
  kotoba := Request.ContentFields.Values['aikotoba'];
  if kotoba <> 'Ç∞ÇÒÇ´' then
    error := '<section style=color:red><p>çáåæótÇ™ÇøÇ™Ç¢Ç‹Ç∑.';
  DataModule1.FDTable1.Locate('database', na, []);
  with DataModule1.FDTable2 do
  begin
    Last;
    number := FieldByName('number').AsInteger + 1;
  end;
  with Request.ContentFields do
  begin
    na := Values['name'];
    raw := Values['comment'];
    pass := Values['password'];
  end;
  with Response.Cookies.Add do
  begin
    Name := 'name';
    if na = '' then
      Value := 'íNÇ©Ç≥ÇÒ.'
    else
      Value := na;
    Expires := Now + 14;
  end;
  if error = '' then
    with Response.Cookies.Add do
    begin
      Name := 'aikotoba';
      Value := kotoba;
      Expires := Now + 14;
    end;
  comment := TStringList.Create;
  try
    comment.Text := raw;
    for i := 0 to comment.count - 1 do
    begin
      if Pos('ng', comment[i]) > 0 then
      begin
        error := error + '<p>ã÷é~åÍãÂÇ™ä‹Ç‹ÇÍÇƒÇ¢Ç‹Ç∑.';
        break;
      end;
      comment[i] := '<p>' + scan(comment[i]);
    end;
    URL := '/index?db=' + TNetEncoding.URL.Encode(db);
    if error <> '' then
      error := error + '</section>'
    else if Request.ContentFields.Values['show'] = 'true' then
    begin
      error := '<p style=font-size:2.3em;color:blue>Å´Å´ÉvÉåÉrÉÖÅ[Å´Å´<p>' +
        comment.Text;
      checkbox := false;
      New(p);
      p^ := error;
      header.Tag := Integer(p);
      New(p);
      p^:=raw;
      articles.Tag:=Integer(p);
    end
    else
    begin
      i := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
      DataModule1.FDTable2.AppendRecord([i, number, title, na, comment.Text,
        raw, Now, pass]);
      checkbox := true;
      header.Tag := 0;
      URL := URL + '#article';
    end;
  finally
    comment.Free;
  end;
  Response.SendRedirect(URL);
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
      DataModule1.FDTable1.AppendRecord([i, 'åfé¶î¬' + i.ToString]);
  end;
  if DataModule1.FDTable3.Bof and DataModule1.FDTable3.Eof then
  begin
    a := DataModule1.FDTable1.Lookup('database', 'info', 'dbnum');
    DataModule1.FDTable3.AppendRecord
      (['Ç∆ÇÈÇÀÅ`Ç«çÜ', '<p style=font-color:gray>Ç∆ÇÈÇÀÅ`Ç«çÜ</p>', false, a, 30]);
  end;
  checkbox := true;
end;

end.
