unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp, Web.DSProd, Web.HTTPProd,
  Web.DBWeb, System.Variants, System.NetEncoding, System.RegularExpressions,
  Data.DB, Web.DBXpressWeb, System.Types;

type
  TWebModule1 = class(TWebModule)
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
    js1: TPageProducer;
    js2: TPageProducer;
    js3: TPageProducer;
    js4: TPageProducer;
    adhead: TPageProducer;
    js5: TPageProducer;
    title: TPageProducer;
    ti: TDataSetPageProducer;
    procedure indexHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1indexpageAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1registAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModuleCreate(Sender: TObject);
    procedure WebModule1adminAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1topAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure itemsHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure topHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1searchAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1helpAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure searchHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure masterHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure articlesHTMLTag(Sender: TObject; Tag: TTag;
      const TagString: string; TagParams: TStrings; var ReplaceText: string);
    procedure footerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1alertAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1masterAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure mailHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure alertHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1deleteAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1jumpAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1linkAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure headerHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure adminFormatCell(Sender: TObject; CellRow, CellColumn: Integer;
      var BgColor: THTMLBgColor; var Align: THTMLAlign; var VAlign: THTMLVAlign;
      var CustomAttrs, CellData: string);
    procedure WebModule1admdelAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1loginAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1adminsetAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure adheadHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1logoutAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1imgAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure WebModule1fileAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure titleHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1titleAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
    procedure tiHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure helpHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure loginHTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
  private
    { private 宣言 }
    ss: TStringList;
    tagstr: string;
    procedure pages(count: Integer; var page: Integer);
    function hash(str: string): string;
    function mente: Boolean;
    function detail(ts, pid: string): string;
  public
    { public 宣言 }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses Unit1, IdHashSHA, IdGlobal, IdHash, IdHashMessageDigest;

{$R *.dfm}

const
  promotion = '広告:';
  tcnt = 7;

procedure TWebModule1.adheadHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if (TagString = 'mente') and
    (DataModule1.FDTable3.FieldByName('mente').AsBoolean = true) then
    ReplaceText := 'checked'
  else if TagString = 'password' then
    ReplaceText := Request.CookieFields.Values['user']
  else if TagString = 'database' then
    ReplaceText := Request.QueryFields.Values['db'];
end;

procedure TWebModule1.adminFormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign;
  var CustomAttrs, CellData: string);
begin
  if (CellColumn = 0) and (CellRow > 0) then
    CellData := Format('<input name=check%d type=checkbox>', [CellRow]);
end;

procedure TWebModule1.alertHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  i: Integer;
begin
  if TagString = 'article' then
  begin
    with DataModule1 do
    begin
      FDTable1.Locate('dbnum', FDTable4.FieldByName('dbname').AsInteger);
      FDTable2.Locate('number', FDTable4.FieldByName('posnum').AsInteger);
    end;
    s := TStringList.Create;
    try
      s.Text := articles.Content;
      for i := 1 to 2 do
        s.Delete(1);
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
  end
  else if TagString = 'request' then
    ReplaceText := DataModule1.FDTable4.FieldByName('request').AsString;
end;

procedure TWebModule1.articlesHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'comment' then
    ReplaceText := DataModule1.FDTable2.FieldByName('comment').AsString;
end;

function TWebModule1.detail(ts, pid: string): string;
var
  i: Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if Components[i].Name = ts + pid then
      result := (Components[i] as TPageProducer).Content;
end;

procedure TWebModule1.footerHTMLTag(Sender: TObject; Tag: TTag;
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
          Format(' <a style=text-decoration-line:none href="%s?db=%d&num=%d">%d</a> ',
          [PString(Self.Tag)^, DataModule1.FDTable1.FieldByName('dbnum')
          .AsInteger, i, i]);
  end
  else if TagString = 'recent' then
    if index.Tag = -1 then
      ReplaceText := TagString
    else
      ReplaceText := '<a style=text-decoration-line:none href="' +
        PString(Self.Tag)^ + '?db=' + DataModule1.FDTable1.FieldByName('dbnum')
        .AsString + '">recent</a>';
end;

function TWebModule1.hash(str: string): string;
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

procedure TWebModule1.headerHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: string;
begin
  if TagString = 'cookie' then
  begin
    s := TagParams.Values['param'];
    ReplaceText := TNetEncoding.URL.Decode(Request.CookieFields.Values[s]);
  end
  else if (TagString = 'check') and
    (Request.ContentFields.Values['show'] <> 'false') then
    ReplaceText := 'checked'
  else if TagString = 'preview' then
    ReplaceText := Request.ContentFields.Values['preview']
  else if TagString = 'raw' then
    ReplaceText := Request.ContentFields.Values['raw']
  else if TagString = 'pass' then
    ReplaceText := Request.ContentFields.Values['password']
  else if TagString = 'title' then
    ReplaceText := Request.ContentFields.Values['title'];
end;

procedure TWebModule1.helpHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion;
end;

procedure TWebModule1.indexHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: Integer;
  x: Boolean;
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'article' then
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
    if 10 * i <= DataModule1.FDTable2.RecordCount then
      ReplaceText := '<h1>これ以上投稿できません.</h1>'
    else
      ReplaceText := header.Content;
  end
  else if (TagString = 'css') or (TagString = 'js') then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'dbnum' then
    ReplaceText := DataModule1.FDTable1.FieldByName('dbnum').AsString
  else if TagString = 'database' then
    ReplaceText := DataModule1.FDTable1.FieldByName('database').AsString;
end;

procedure TWebModule1.itemsHTMLTag(Sender: TObject; Tag: TTag;
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
          t := Format('<a href="/jump?db=%d&num=%d">[ %d-%d ]</a>',
            [DataModule1.FDTable1.FieldByName('dbnum').AsInteger, j, i, j])
        else
          t := Format('<a href="/jump?db=%s&num=%d">[ %d ]</a>', [str, j, j]);
      end;
      ReplaceText := t + s.Text;
    finally
      s.Free;
    end;
  end;
end;

procedure TWebModule1.loginHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion;
end;

procedure TWebModule1.masterHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'request' then
    with DataModule1.FDTable4 do
    begin
      First;
      ReplaceText := '<table border=1 align=center>';
      while Eof = false do
      begin
        ReplaceText := ReplaceText + alert.Content;
        Next;
      end;
      ReplaceText := ReplaceText + '</table>';
    end
  else if TagString = 'db' then
    ReplaceText := DataModule1.FDTable1.FieldByName('database').AsString;
end;

function TWebModule1.mente: Boolean;
begin
  if DataModule1.FDTable3.FieldByName('mente').AsBoolean = true then
  begin
    result := true;
    Response.Content :=
      '<p><br><h1 style=text-align:center>ただいまメンテナンス中です^_^</h1>' +
      '<p style=text-align:center><a href=/admin>管理者用ログイン</a>'
  end
  else
    result := false;
end;

procedure TWebModule1.pages(count: Integer; var page: Integer);
var
  max: Integer;
begin
  max := DataModule1.FDTable3.FieldByName('count').AsInteger;
  if (page > -1) and (count < max * (page - 1)) then
  begin
    page := (count div max) + 1;
    if count mod max = 0 then
      dec(page);
  end;
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

procedure TWebModule1.mailHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'content' then
    ReplaceText := articles.Content
  else if TagString = 'query' then
    ReplaceText := '?' + Request.Query
  else if TagString = 'number' then
    ReplaceText := Request.QueryFields.Values['num'];
end;

procedure TWebModule1.searchHTMLTag(Sender: TObject; Tag: TTag;
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
  if TagString = 'pr' then
    ReplaceText := promotion
  else if (Request.MethodType = mtPost) and (TagString = 'items') then
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

procedure TWebModule1.tiHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'count' then
  begin
    DataModule1.FDTable1.Locate('dbnum',
      DataModule1.FDQuery1.FieldByName('dbnum').AsInteger);
    ReplaceText := DataModule1.FDTable2.RecordCount.ToString;
  end
  else if TagString = 'database' then
    ReplaceText := DataModule1.FDTable1.Lookup('dbnum',
      DataModule1.FDQuery1.FieldByName('dbnum').AsInteger, 'database');
end;

procedure TWebModule1.titleHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'js' then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'main' then
    with DataModule1.FDQuery1 do
    begin
      Open;
      while Eof = false do
      begin
        ReplaceText := ReplaceText + ti.Content;
        Next;
      end;
      Close;
    end;
end;

procedure TWebModule1.topHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s, t: string;
  i, j, k: Integer;
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'list' then
  begin
    i := DataModule1.FDTable3.FieldByName('info').AsInteger;
    for k := 0 to tcnt do
    begin
      if DataModule1.FDTable1.Eof = true then
        break;
      t := '';
      j := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
      s := DataModule1.FDTable1.FieldByName('database').AsString;
      if (i = j) or (s = 'master') then
      begin
        DataModule1.FDTable1.Next;
        continue;
      end;
      DataModule1.FDTable2.Last;
      if Now - DataModule1.FDTable2.FieldByName('date').AsDateTime < 1 then
        t := 'background-color:aqua;';
      if DataModule1.FDTable2.RecordCount >= 10 *
        DataModule1.FDTable3.FieldByName('count').AsInteger then
        t := t + 'color:red;';
      if t <> '' then
        t := ' style=' + t;
      ReplaceText := ReplaceText +
        Format('<p><a%s target=_blank href="/index?db=%d">%s</a><br></p>',
        [t, j, s]);
      DataModule1.FDTable1.Next;
    end;
  end
  else if TagString = 'info' then
    ReplaceText := DataModule1.FDTable1.Lookup('dbnum',
      DataModule1.FDTable3.FieldByName('info').AsInteger, 'database')
  else if TagString = 'dbnum' then
    ReplaceText := DataModule1.FDTable3.FieldByName('info').AsString
  else if (TagString = 'css') or (TagString = 'js') then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'slide' then
  begin
    for i := 1 to (DataModule1.FDTable1.RecordCount div tcnt) + 1 do
      ReplaceText := ReplaceText +
        '<div class="slide"><img src="/src?name=slide' + i.ToString +
        '.jpg" style=float:right;height:465px><#list></div>';
  end;
end;

procedure TWebModule1.WebModule1admdelAction(Sender: TObject;
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
  WebModule1adminAction(nil, Request, Response, Handled);
end;

procedure TWebModule1.WebModule1adminAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s, t: string;
  i: Integer;
begin
  s:=Request.CookieFields.Values['user'];
  if (s = '')or(hash(s) <> DataModule1.FDTable3.FieldByName('password').AsString) then
  begin
    WebModule1loginAction(nil, Request, Response, Handled);
    Exit;
  end;
  admin.MaxRows := DataModule1.FDTable3.FieldByName('count').AsInteger;
  t := Request.QueryFields.Values['db'];
  if t <> '' then
    DataModule1.FDTable1.Locate('dbnum', t, []);
  s := Request.QueryFields.Values['num'];
  i := StrToIntDef(s, -1);
  pages(DataModule1.FDTable2.RecordCount, i);
  index.Tag := i;
  tagstr := '/admin';
  Self.Tag := Integer(@tagstr);
  admin.header.Text := adhead.Content;
  admin.footer.Clear;
  admin.footer.Add
    ('<input type=submit value=削除する><input type=reset value=リセット></form>');
  admin.footer.Add(footer.Content);
  if t <> '' then
    t := '?db=' + t;
  admin.footer.Add('<p style=text-align:center><a href="/index' + t +
    '">戻る</a>');
  admin.Tag := DataModule1.FDTable2.RecNo;
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := admin.Content;
end;

procedure TWebModule1.WebModule1adminsetAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  s := Request.ContentFields.Values['pass'];
  with DataModule1.FDTable3 do
  begin
    Edit;
    FieldByName('mente').AsBoolean := Request.ContentFields.Values
      ['mente'] = 'on';
    if s <> '' then
    begin
      s := hash(s);
      FieldByName('password').AsString := hash(s);
      with Response.Cookies.Add do
      begin
        Name := 'user';
        Value := s;
        Expires := Now + 14;
        Secure := true;
      end;
    end;
    Post;
  end;
  WebModule1adminAction(nil, Request, Response, Handled);
end;

procedure TWebModule1.WebModule1alertAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num1, num2, i, dbnum: Integer;
begin
  dbnum := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
  num1 := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
  num2 := Request.QueryFields.Values['num'].ToInteger;
  if Request.MethodType = mtGet then
  begin
    DataModule1.FDTable2.Locate('number', num2, []);
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := mail.Content;
  end
  else
    with DataModule1.FDTable4 do
    begin
      Last;
      i := FieldByName('id').AsInteger + 1;
      AppendRecord([i, num1, num2, Now, Request.ContentFields.Values
        ['request']]);
      pages(DataModule1.FDTable2.RecNo, i);
      Response.SendRedirect(Format('/index?db=%d&num=%d#%d', [dbnum, i, num2]));
    end;
end;

procedure TWebModule1.WebModule1deleteAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  num: Integer;
  s: string;
begin
  s := Request.ContentFields.Values['num'];
  if s = '' then
    Exit;
  num := s.ToInteger;
  s := hash(Request.ContentFields.Values['password']);
  with DataModule1.FDTable2 do
    if Locate('number;pass', VarArrayOf([num, s])) = true then
    begin
      Edit;
      FieldByName('title').AsString := '';
      FieldByName('name').AsString := ' - - - ';
      FieldByName('comment').AsString := '<em>投稿者により削除されました.</em>';
      FieldByName('raw').AsString := '';
      FieldByName('date').AsDateTime := Now;
      Post;
      WebModule1jumpAction(nil, Request, Response, Handled);
    end
    else
      WebModule1indexpageAction(nil, Request, Response, Handled);
end;

procedure TWebModule1.WebModule1fileAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  s := Request.QueryFields.Values['type'];
  if s = 'js' then
    Response.ContentType := 'text/javascript'
  else if s = 'css' then
    Response.ContentType := 'text/css';
  Response.Content := detail(s, Request.QueryFields.Values['id']);
end;

procedure TWebModule1.WebModule1helpAction(Sender: TObject;
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

procedure TWebModule1.WebModule1imgAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  res: TResourceStream;
begin
  with DataModule1.FDTable5 do
  begin
    s := Request.ContentFields.Values['name'];
    Response.ContentType := 'image/jpeg';
    if Locate('name', s) = true then
      Response.ContentStream := CreateBlobStream(FieldByName('source'), bmRead)
    else if s = 'sprites.png' then
    begin
      Response.ContentType := 'image/png';
      res := TResourceStream.Create(HInstance, 'PngImage_1', RT_RCDATA);
      Response.ContentStream := res;
    end
    else
      Response.ContentStream := nil;
  end;
end;

procedure TWebModule1.WebModule1indexpageAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  int: Integer;
  s: string;
begin
  s := Request.QueryFields.Values['db'];
  if s <> '' then
    DataModule1.FDTable1.Locate('dbnum', s, []);
  int := StrToIntDef(Request.QueryFields.Values['num'], -1);
  pages(DataModule1.FDTable2.RecordCount, int);
  index.Tag := int;
  tagstr := '/index';
  Self.Tag := Integer(@tagstr);
  Response.ContentType := 'text/html; charset="utf-8"';
  if mente = false then
    Response.Content := index.Content;
end;

procedure TWebModule1.WebModule1jumpAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  DB, s: string;
  page: Integer;
begin
  DB := Request.QueryFields.Values['db'];
  s := Request.ContentFields.Values['num'];
  if DB <> '' then
    DataModule1.FDTable1.Locate('dbnum', DB.ToInteger, []);
  DataModule1.FDTable2.Locate('number', s.ToInteger, []);
  page := 10;
  pages(DataModule1.FDTable2.RecNo, page);
  Response.SendRedirect(Format('/index?db=%s&num=%d#%s', [DB, page, s]));
end;

procedure TWebModule1.WebModule1linkAction(Sender: TObject;
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

procedure TWebModule1.WebModule1loginAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  v: Variant;
  i: Integer;
  s: string;
begin
  if Request.MethodType = mtGet then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := login.Content;
    Exit;
  end;
  s := Request.ContentFields.Values['record'];
  v := DataModule1.FDTable1.Lookup('database', s, 'dbnum');
  if VarIsNull(v) = false then
  begin
    with Response.Cookies.Add do
    begin
      Name := 'user';
      Value := hash(Request.ContentFields.Values['password']);
      Expires := Now + 14;
      // Secure := true;
    end;
    i := v;
    if s = 'master' then
      Response.SendRedirect('/master')
    else
      Response.SendRedirect('/admin?db=' + i.ToString);
  end
  else
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := login.Content;
  end;
end;

procedure TWebModule1.WebModule1logoutAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  with Response.Cookies.Add do
  begin
    Name := 'user';
    Expires := Now - 1;
  end;
  s := Request.QueryFields.Values['db'];
  if s = 'master' then
    Response.SendRedirect('/')
  else
    Response.SendRedirect('/index?db=' + s);
end;

procedure TWebModule1.WebModule1masterAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  i: Integer;
begin
  if hash(Request.CookieFields.Values['user']) <>
    DataModule1.FDTable3.FieldByName('password').AsString then
  begin
    with DataModule1.FDTable1 do
      if Locate('database', 'master') = false then
        AppendRecord([RecordCount, 'master']);
    WebModule1loginAction(nil, Request, Response, Handled);
    Exit;
  end;
  if Request.MethodType = mtPost then
  begin
    s := Request.ContentFields.Values['delete'];
    if s = 'all' then
      with DataModule1.FDTable4 do
        while (Bof = false) or (Eof = false) do
          Delete
    else
    begin
      DataModule1.FDTable4.First;
      while DataModule1.FDTable4.Eof = false do
      begin
        i := DataModule1.FDTable4.FieldByName('dbname').AsInteger;
        if DataModule1.FDTable1.Locate('dbnum', i) = true then
        begin
          i := DataModule1.FDTable4.FieldByName('posnum').AsInteger;
          if DataModule1.FDTable2.Locate('number', i) = false then
          begin
            DataModule1.FDTable4.Delete;
            continue;
          end;
        end;
        DataModule1.FDTable4.Next;
      end;
    end;
  end;
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := master.Content;
end;

procedure TWebModule1.WebModule1registAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  number, i: Integer;
  title, na, raw, pass, kotoba, error: string;
  comment: TStringList;
  x: Boolean;
  function scan(Text: string): string;
  var
    reg: TRegEx;
    coll: TMatchCollection;
    j: Integer;
    s, t: string;
  begin
    Text := TNetEncoding.HTML.Encode(Text);
    s := TNetEncoding.HTML.Encode('>>');
    reg := TRegEx.Create(s + '(\d+)');
    coll := reg.Matches(Text);
    for j := coll.count - 1 downto 0 do
    begin
      Delete(Text, coll[j].index, coll[j].Length);
      t := Copy(coll[j].Value, Length(s) + 1, coll[j].Length);
      result := Format
        ('<a class=minpreview data-preview-url=/link?num=%s href=/jump?num=%s>>>%s</a>',
        [t, t, t]);
      Insert(result, Text, coll[j].index);
    end;
    result := Text;
  end;

begin
  error := '';
  kotoba := Request.ContentFields.Values['aikotoba'];
  if kotoba <> 'げんき' then
    error := '<section style=color:red><p>合言葉がちがいます.';
  with DataModule1.FDTable2 do
  begin
    Last;
    number := FieldByName('number').AsInteger + 1;
  end;
  with Request.ContentFields do
  begin
    title := Values['title'];
    na := Values['name'];
    raw := Values['comment'];
    pass := hash(Values['password']);
  end;
  if title = '' then
    title := 'タイトルなし.';
  with Response.Cookies.Add do
  begin
    Name := 'name';
    if na = '' then
      Value := '誰かさん.'
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
        error := error + '<p>禁止語句が含まれています.';
        break;
      end;
      comment[i] := '<p>' + scan(comment[i]);
    end;
    x := Request.ContentFields.Values['show'] = 'true';
    if error <> '' then
      error := error + '</section>'
    else if x = true then
    begin
      error := '<p style=font-size:2.3em;color:blue>↓↓プレビュー↓↓<p>' +
        comment.Text;
      Request.ContentFields.Values['show'] := 'false';
      Request.ContentFields.Values['preview'] := error;
      Request.ContentFields.Values['raw'] := raw;
    end
    else
    begin
      i := DataModule1.FDTable1.FieldByName('dbnum').AsInteger;
      DataModule1.FDTable2.AppendRecord([i, number, title, na, comment.Text,
        raw, Now, pass]);
      Response.SendRedirect('index?db=' + i.ToString + '#article');
      Exit;
    end;
  finally
    comment.Free;
  end;
  WebModule1indexpageAction(nil, Request, Response, Handled);
end;

procedure TWebModule1.WebModule1searchAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := search.Content;
end;

procedure TWebModule1.WebModule1titleAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := title.Content;
end;

procedure TWebModule1.WebModule1topAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
begin
  Response.ContentType := 'text/html;charset=utf-8';
  DataModule1.FDTable1.First;
  if mente = false then
    Response.Content := top.ContentFromString(top.Content);
end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
var
  i: Integer;
  a: Variant;
begin
  with DataModule1 do
  begin
    if FDTable1.Exists = false then
      FDTable1.CreateTable;
    if FDTable2.Exists = false then
      FDTable2.CreateTable;
    if FDTable3.Exists = false then
      FDTable3.CreateTable;
    if FDTable4.Exists = false then
      FDTable4.CreateTable;
    if FDTable5.Exists = false then
      FDTable5.CreateTable;
    FDTable1.Open;
    FDTable2.Open;
    FDTable3.Open;
    FDTable4.Open;
    FDTable5.Open;
    FDTable1.Refresh;
    FDTable3.Refresh;
    FDTable5.Refresh;
  end;
  if DataModule1.FDTable1.Bof and DataModule1.FDTable1.Eof then
  begin
    DataModule1.FDTable1.AppendRecord([0, 'info']);
    for i := 1 to 10 do
      DataModule1.FDTable1.AppendRecord([i, '掲示板' + i.ToString]);
  end;
  if DataModule1.FDTable3.Bof and DataModule1.FDTable3.Eof then
  begin
    a := DataModule1.FDTable1.Lookup('database', 'info', 'dbnum');
    DataModule1.FDTable3.AppendRecord
      (['とるね～ど号',
      '<h1 style=color:maron;text-align:center;font-style:italic>とるね～ど号</h1>',
      false, a, 30, hash(hash('admin'))]);
  end;
end;

end.
