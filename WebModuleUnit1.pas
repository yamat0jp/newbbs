unit WebModuleUnit1;

interface

uses System.SysUtils, System.Classes, Web.HTTPApp, Web.DSProd, Web.HTTPProd,
  Web.DBWeb, System.Variants, System.NetEncoding, System.RegularExpressions,
  Data.DB, Web.DBXpressWeb, System.Types, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.FB, FireDAC.Phys.FBDef,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.VCLUI.Wait,
  FireDAC.Comp.UI;

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
    mail: TPageProducer;
    css2: TPageProducer;
    css3: TPageProducer;
    css4: TPageProducer;
    header: TDataSetPageProducer;
    js1: TPageProducer;
    js2: TPageProducer;
    adhead: TPageProducer;
    js5: TPageProducer;
    title: TPageProducer;
    ti: TDataSetPageProducer;
    FDTable2: TFDTable;
    FDTable2DBNUM: TIntegerField;
    FDTable2NUMBER: TIntegerField;
    FDTable2TITLE: TWideStringField;
    FDTable2NAME: TWideStringField;
    FDTable2COMMENT: TWideMemoField;
    FDTable2RAW: TWideMemoField;
    FDTable2DATE: TDateField;
    FDTable2PASS: TWideStringField;
    FDTable5: TFDTable;
    FDTable4: TFDTable;
    FDTable4ID: TIntegerField;
    FDTable4DBNAME: TIntegerField;
    FDTable4POSNUM: TIntegerField;
    FDTable4DATE: TDateField;
    FDTable4REQUEST: TWideMemoField;
    DataSource1: TDataSource;
    FDTable3: TFDTable;
    FDTable3TITLE: TWideStringField;
    FDTable3TITLE2: TWideStringField;
    FDTable3INFO: TIntegerField;
    FDTable3COUNT: TIntegerField;
    FDTable3password: TWideStringField;
    FDTable3ng: TWideStringField;
    FDConnection1: TFDConnection;
    FDTable1: TFDTable;
    FDTable1DBNUM: TIntegerField;
    FDTable1DATABASE: TWideStringField;
    login: TPageProducer;
    footer: TPageProducer;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    FDQuery1: TFDQuery;
    FDTable3mente: TSmallintField;
    FDTable5id: TIntegerField;
    FDTable5name: TWideStringField;
    FDTable5source: TWideMemoField;
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
    procedure css1HTMLTag(Sender: TObject; Tag: TTag; const TagString: string;
      TagParams: TStrings; var ReplaceText: string);
    procedure WebModule1usrdelAction(Sender: TObject; Request: TWebRequest;
      Response: TWebResponse; var Handled: Boolean);
  private
    { private 宣言 }
    ss: TStringList;
    tagstr: string;
    procedure pages(count: Integer; var page: Integer);
    procedure strsCheck(var Error: string; list: TStringList);
    procedure setLastArticle;
    function footerLink(Data: array of const): string;
    function isInfo: Boolean;
    function loginCheck: Boolean;
    function hash(str: string): string;
    function mente: Boolean;
    function detail(ts, pid: string): string;
    function scan(text: string): string;
  public
    { public 宣言 }
  end;

var
  WebModuleClass: TComponentClass = TWebModule1;

implementation

{ %CLASSGROUP 'Vcl.Controls.TControl' }

uses IdHashSHA, IdGlobal, IdHash, IdHashMessageDigest, Jpeg, Graphics;

{$R *.dfm}

const
  promotion = '広告:';
  tcnt = 7;

procedure TWebModule1.adheadHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if (TagString = 'mente') and (FDTable3.FieldByName('mente').AsInteger = 1)
  then
    ReplaceText := 'checked="checked"'
  else if TagString = 'database' then
    ReplaceText := Request.QueryFields.Values['db'];
end;

procedure TWebModule1.adminFormatCell(Sender: TObject;
  CellRow, CellColumn: Integer; var BgColor: THTMLBgColor;
  var Align: THTMLAlign; var VAlign: THTMLVAlign;
  var CustomAttrs, CellData: string);
begin
  if CellRow = 0 then
  begin
    BgColor := 'Silver';
    Exit;
  end;
  if CellRow mod 2 = 0 then
    BgColor := 'snow';
  case CellColumn of
    0:
      CellData := Format('<input name=check%d type=checkbox>', [CellRow]);
    1:
      CellData := '<b>' + CellData + '</b>';
    2:
      CellData := '<p style=color:red>' + CellData + '</p>';
    3:
      CellData := '<p style=color:green>' + CellData + '</p>';
  end;
end;

procedure TWebModule1.alertHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  i: Integer;
begin
  if (TagString = 'plus') and (alert.Tag = 0) then
    ReplaceText := '<a href=' + Request.ScriptName +
      '/jump?db=<#dbname>&num=<#posnum>>[ <#dbname>-<#posnum> ]</a>'
  else if TagString = 'article' then
  begin
    if alert.Tag = 1 then
    begin
      ReplaceText := '<p>リクエスト';
      Exit;
    end;
    s := TStringList.Create;
    try
      s.text := articles.Content;
      for i := 1 to 2 do
        s.Delete(1);
      for i := s.count - 1 downto 0 do
        if Copy(s[i], 1, 18) = '<section id=master' then
        begin
          s.Delete(i);
          break;
        end;
      ReplaceText := s.text;
    finally
      s.Free;
    end;
  end;
end;

procedure TWebModule1.articlesHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'comment' then
    ReplaceText := FDTable2.FieldByName('comment').AsString;
end;

procedure TWebModule1.css1HTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'uri' then
    ReplaceText := Request.ScriptName;
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
  s: shortstring;
  x: Boolean;
begin
  if TagString = 'link' then
  begin
    for i := 1 to 10 do
    begin
      x := i = index.Tag;
      ReplaceText := ReplaceText + footerLink([i, i, x]);
    end;
    x := index.Tag = -1;
    s := 'さいご';
    ReplaceText := ReplaceText + footerLink([-1, s, x]);
  end;
end;

function TWebModule1.footerLink(Data: array of const): string;
var
  s, t: string;
begin
  if Data[1].VType = vtInteger then
    t := Data[1].VInteger.toString
  else
    t := Data[1].VString^;
  if Data[2].VBoolean = true then
    s := ' active'
  else
    s := '';
  result := Format
    ('<li class="page-item%s"><a class=page-link href="%s?db=%d&num=%d">%s</a></li>',
    [s, Request.ScriptName + tagstr, FDTable1.FieldByName('dbnum').AsInteger,
    Data[0].VInteger, t]);
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
  if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'cookie' then
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
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'area' then
    if help.Tag = 0 then
    begin
      ss := TStringList.Create;
      try
        ss.Add('<form action=' + Request.ScriptName +
          '/help method=post><p>お問い合わせ<削除依頼など何でも></p>');
        ss.Add('<textarea name=help style=height:100px;width:250px>投稿者名など：');
        ss.Add('相談内容：');
        ss.Add('その他：</textarea><br>');
        ss.Add('<input type=submit value="送信"></form>');
        ReplaceText := ss.text;
      finally
        ss.Free;
      end;
    end
    else
      ReplaceText :=
        '<p style=color:yellow;background-color:aqua>ご報告ありがとうございます.';
end;

procedure TWebModule1.indexHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: Integer;
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'article' then
  begin
    for i := 1 to FDTable3.FieldByName('count').AsInteger do
    begin
      if FDTable2.Eof = true then
        break;
      if isInfo = false then
        ReplaceText := ReplaceText + articles.Content
      else
        ReplaceText := articles.Content + ReplaceText;
      FDTable2.Next;
    end;
  end
  else if TagString = 'footer' then
    ReplaceText := footer.Content
  else if TagString = 'header' then
    if (FDTable1.FieldByName('dbnum').AsInteger = FDTable3.FieldByName('info')
      .AsInteger) and (loginCheck = false) then
      ReplaceText := '<h1 style=text-align:center>管理人からお知らせがあります.</h1>'
    else
    begin
      i := FDTable3.FieldByName('count').AsInteger;
      if 10 * i <= FDTable2.RecordCount then
        ReplaceText := '<h1>これ以上投稿できません.</h1>'
      else
        ReplaceText := header.Content;
    end
  else if (TagString = 'css') or (TagString = 'js') then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'dbnum' then
    ReplaceText := FDTable1.FieldByName('dbnum').AsString
  else if TagString = 'database' then
    ReplaceText := FDTable1.FieldByName('database').AsString;
end;

function TWebModule1.isInfo: Boolean;
begin
  result := FDTable1.FieldByName('dbnum').AsInteger = FDTable3.FieldByName
    ('info').AsInteger;
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
      s.text := FDTable2.FieldByName('raw').AsString;
      for i := 0 to s.count - 1 do
        for j := 0 to ss.count - 1 do
          if Pos(ss[j], s[i]) > 0 then
            if Self.Tag = 0 then
              s[i] := '<p style=background-color:aqua>' + s[i]
            else
              s[i] := '<p style=background-color:yellow>' + s[i];
      with FDTable2 do
      begin
        i := FieldByName('dbnum').AsInteger;
        j := FieldByName('number').AsInteger;
        str := Request.QueryFields.Values['db'];
        if str = '' then
          t := Format('<a href="%s/jump?db=%d&num=%d">[ %d-%d ]</a>',
            [Request.ScriptName, i, j, i, j])
        else
          t := Format('<a href="%s/jump?db=%s&num=%d">[ %d ]</a>',
            [Request.ScriptName, str, j, j]);
      end;
      ReplaceText := t + s.text;
    finally
      s.Free;
    end;
  end;
end;

function TWebModule1.loginCheck: Boolean;
begin
  result := hash(Request.CookieFields.Values['user']) = FDTable3.FieldByName
    ('password').AsString;
end;

procedure TWebModule1.loginHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i: Integer;
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'database' then
  begin
    i := StrToIntDef(Request.QueryFields.Values['db'],
      FDTable3.FieldByName('info').AsInteger);
    if FDTable1.Locate('dbnum', i) = true then
      ReplaceText := FDTable1.FieldByName('database').AsString;
  end;
end;

procedure TWebModule1.masterHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  i, j: Integer;
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'request' then
    with FDTable4 do
    begin
      First;
      while Eof = false do
      begin
        i := FieldByName('dbname').AsInteger;
        j := FieldByName('posnum').AsInteger;
        if FDTable2.Locate('dbnum;number', VarArrayOf([i, j])) = true then
          alert.Tag := 0
        else
          alert.Tag := 1;
        ReplaceText := ReplaceText + alert.ContentFromString(alert.Content);
        Next;
      end;
      if ReplaceText <> '' then
        ReplaceText := '<table border=1 align=center>' + ReplaceText +
          '</table>';
    end;
end;

function TWebModule1.mente: Boolean;
var
  s: string;
begin
  if FDTable3.FieldByName('mente').AsInteger = 1 then
  begin
    s := Request.QueryFields.Values['db'];
    if s <> '' then
      s := '?db=' + s;
    result := true;
    Response.Content :=
      '<p><br><h1 style=text-align:center>ただいまメンテナンス中です^_^</h1>' +
      Format('<p style=text-align:center><a href=%s/admin%s>管理者用ログイン</a>',
      [Request.ScriptName, s]);
  end
  else
    result := false;
end;

procedure TWebModule1.pages(count: Integer; var page: Integer);
var
  max: Integer;
begin
  max := FDTable3.FieldByName('count').AsInteger;
  if (page > -1) and (count < max * (page - 1)) then
  begin
    page := (count div max) + 1;
    if count mod max = 0 then
      dec(page);
  end;
  case page of
    - 1:
      begin
        FDTable2.Last;
        FDTable2.MoveBy(1 - max);
      end;
  else
    FDTable2.First;
    FDTable2.MoveBy(max * (page - 1));
  end;
end;

procedure TWebModule1.mailHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'content' then
    ReplaceText := articles.Content
  else if TagString = 'query' then
    ReplaceText := '?' + Request.Query
  else if TagString = 'number' then
    ReplaceText := Request.QueryFields.Values['num'];
end;

function TWebModule1.scan(text: string): string;
var
  reg: TRegEx;
  coll: TMatchCollection;
  i, j: Integer;
  s, t, str: string;
begin
  i := Request.QueryFields.Values['db'].ToInteger;
  s := Request.ScriptName;
  text := TNetEncoding.HTML.Encode(text);
  str := TNetEncoding.HTML.Encode('>>');
  reg := TRegEx.Create(str + '(\d+)');
  coll := reg.Matches(text);
  for j := coll.count - 1 downto 0 do
  begin
    Delete(text, coll[j].index, coll[j].Length);
    t := Copy(coll[j].Value, Length(str) + 1, coll[j].Length);
    result := Format
      ('<a class=minpreview data-preview-url=%s/link?db=%d&num=%s href=%s/jump?db=%d&num=%s>>>%s</a>',
      [s, i, t, s, i, t, t]);
    Insert(result, text, coll[j].index);
  end;
  result := text;
end;

procedure TWebModule1.searchHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
var
  s: TStringList;
  str: string;
  procedure sub;
  var
    i: Integer;
    j: Integer;
  label jump;
  begin
    FDTable2.First;
    while FDTable2.Eof = false do
    begin
      s.text := FDTable2.FieldByName('raw').AsString;
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
      FDTable2.Next;
    end;
  end;

begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'select' then
  begin
    str := Request.QueryFields.Values['db'];
    if str = '' then
      ReplaceText := Request.ScriptName + '/'
    else
      ReplaceText := Request.ScriptName + '/index?db=' + str;
  end
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
        FDTable1.First;
        while FDTable1.Eof = false do
        begin
          sub;
          FDTable1.Next;
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
    ReplaceText := css2.Content
  else if TagString = 'dbnum' then
    ReplaceText := Request.QueryFields.Values['dbnum'];
end;

procedure TWebModule1.setLastArticle;
begin
  FDTable2.Last;
end;

procedure TWebModule1.strsCheck(var Error: string; list: TStringList);
var
  s: TStringList;
  i, j: Integer;
  x: Boolean;
begin
  x := false;
  s := TStringList.Create;
  try
    s.DelimitedText := FDTable3.FieldByName('ng').AsString;
    for i := 0 to s.count - 1 do
      for j := 0 to list.count - 1 do
        if Pos(s[i], list[j]) > 0 then
        begin
          x := true;
          break;
        end;
    for i := 0 to list.count - 1 do
      list[i] := '<p>' + scan(list[i]);
  finally
    s.Free;
  end;
  if x = true then
    Error := Error + '<p>禁止語句が含まれています.';
end;

procedure TWebModule1.tiHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'count' then
    ReplaceText := FDTable2.RecordCount.toString
  else if TagString = 'database' then
    ReplaceText := FDTable1.FieldByName('database').AsString
  else if TagString = 'date' then
    ReplaceText := FDQuery1.FieldByName('max(date)').AsString;
end;

procedure TWebModule1.titleHTMLTag(Sender: TObject; Tag: TTag;
  const TagString: string; TagParams: TStrings; var ReplaceText: string);
begin
  if TagString = 'pr' then
    ReplaceText := promotion
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'js' then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'main' then
  begin
    FDQuery1.Open;
    while FDQuery1.Eof = false do
    begin
      FDTable1.Locate('dbnum', FDQuery1.FieldByName('dbnum').AsInteger);
      ReplaceText := ReplaceText + ti.Content;
      FDQuery1.Next;
    end;
    FDQuery1.Close;
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
  else if TagString = 'uri' then
    ReplaceText := Request.ScriptName
  else if TagString = 'list' then
  begin
    i := FDTable3.FieldByName('info').AsInteger;
    for k := 0 to tcnt do
    begin
      if FDTable1.Eof = true then
        break;
      t := '';
      j := FDTable1.FieldByName('dbnum').AsInteger;
      s := FDTable1.FieldByName('database').AsString;
      if (i = j) or (s = 'master') then
      begin
        FDTable1.Next;
        continue;
      end;
      FDTable2.Last;
      if (Now - FDTable2.FieldByName('date').AsDateTime < 1) and
        (FDTable2.RecordCount > 0) then
        t := 'background-color:aqua;';
      if FDTable2.RecordCount >= 10 * FDTable3.FieldByName('count').AsInteger
      then
        t := t + 'color:red;';
      if t <> '' then
        t := ' style=' + t;
      ReplaceText := ReplaceText +
        Format('<p><a%s target=_blank href="%s/index?db=%d">%s</a><br></p>',
        [t, Request.ScriptName, j, s]);
      FDTable1.Next;
    end;
    ReplaceText :=
      '<div class="carousel-caption text-left" style="text-align:bottom;font-size:1.5rem">'
      + ReplaceText + '</div>';
  end
  else if TagString = 'info' then
    ReplaceText := FDTable1.Lookup('dbnum', FDTable3.FieldByName('info')
      .AsInteger, 'database')
  else if TagString = 'dbnum' then
    ReplaceText := FDTable3.FieldByName('info').AsString
  else if (TagString = 'css') or (TagString = 'js') then
    ReplaceText := detail(TagString, TagParams.Values['id'])
  else if TagString = 'slide' then
  begin
    s := ' active';
    for i := 1 to (FDTable1.RecordCount div tcnt) + 1 do
    begin
      ReplaceText := ReplaceText +
        Format('<div class="carousel-item%s"><img src="%s/src?name=slide%d.jpg"',
        [s, Request.ScriptName, i]) +
        ' class="d-sm-block d-none" style=float:right;height:465px><div style=height:465px></div><#list></div>';
      s := '';
    end;
  end
  else if TagString = 'indicator' then
  begin
    s := ' class="active"';
    for i := 0 to (FDTable1.RecordCount div tcnt) do
    begin
      ReplaceText := ReplaceText +
        Format('<li data-target="#slide-1" data-slide-to=%d%s></li>', [i, s]);
      s := '';
    end;
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
  FDTable1.Locate('dbnum', Request.QueryFields.Values['db']);
  for i := 0 to Request.ContentFields.count - 1 do
  begin
    reg := TRegEx.Create('\d+');
    match := reg.match(Request.ContentFields[i]);
    if match.Success = true then
    begin
      k := match.Value.ToInteger - j - 1;
      j := match.Value.ToInteger;
      for m := 1 to k do
        FDTable2.Next;
      FDTable2.Delete;
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
  s := Request.CookieFields.Values['user'];
  if (s = '') or (loginCheck = false) then
  begin
    WebModule1loginAction(nil, Request, Response, Handled);
    Exit;
  end;
  admin.MaxRows := FDTable3.FieldByName('count').AsInteger;
  t := Request.QueryFields.Values['db'];
  if t <> '' then
    FDTable1.Locate('dbnum', t, []);
  s := Request.QueryFields.Values['num'];
  i := StrToIntDef(s, -1);
  pages(FDTable2.RecordCount, i);
  index.Tag := i;
  tagstr := '/admin';
  admin.header.text := adhead.Content;
  admin.footer.Clear;
  admin.footer.Add
    ('<input type=submit value=削除する><input type=reset value=リセット></form>');
  admin.footer.Add(footer.Content);
  if t <> '' then
    t := '?db=' + t;
  admin.footer.Add
    (Format('<p style=text-align:center><a href="%s/index%s">戻る</a>',
    [Request.ScriptName, t]));
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := admin.Content;
end;

procedure TWebModule1.WebModule1adminsetAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  i: Integer;
begin
  s := Request.ContentFields.Values['pass'];
  with FDTable3 do
  begin
    Edit;
    if Request.ContentFields.Values['mente'] = 'on' then
      i := 1
    else
      i := 0;
    FieldByName('mente').AsInteger := i;
    if (s <> '') and (s = Request.ContentFields.Values['pass2']) then
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
  num1, num2, i: Integer;
  s: string;
begin
  num1 := Request.QueryFields.Values['db'].ToInteger;
  num2 := StrToIntDef(Request.QueryFields.Values['num'], -1);
  if num2 = -1 then
    Exit;
  if Request.MethodType = mtGet then
  begin
    FDTable1.Locate('dbnum', num1);
    FDTable2.Locate('number', num2);
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := mail.Content;
  end
  else
  begin
    with FDTable4 do
    begin
      Last;
      i := FieldByName('id').AsInteger + 1;
      s := Request.ContentFields.Values['request'];
      if s = '' then
        s := '(No Comment)';
      AppendRecord([i, num1, num2, Now, s]);
    end;
    WebModule1jumpAction(nil, Request, Response, Handled);
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
  with FDTable2 do
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
  k: Integer;
  s: string;
begin
  Response.ContentType := 'text/html;charset=utf-8';
  if Request.MethodType = mtPost then
  begin
    s := Request.ContentFields.Values['help'];
    FDTable4.Last;
    k := FDTable4.FieldByName('id').AsInteger + 1;
    FDTable4.AppendRecord([k, -1, -1, Now, s]);
    help.Tag := 1;
  end
  else
    help.Tag := 0;
  Response.Content := help.Content;
end;

procedure TWebModule1.WebModule1imgAction(Sender: TObject; Request: TWebRequest;
  Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  p: TBytes;
  res: TMemoryStream;
begin
  with FDTable5 do
  begin
    s := Request.QueryFields.Values['name'];
    if ExtractFileExt(s) = '.ico' then
      Response.ContentType:='image/x-ico'
    else
      Response.ContentType := 'image/jpeg';
    if Locate('name', s) = true then
    begin
      s := FieldByName('source').AsString;
      p := TNetEncoding.Base64.DecodeStringToBytes(s);
      res := TMemoryStream.Create;
      res.WriteBuffer(p, Length(p));
      Response.ContentStream := res;
    end
    else
      Response.ContentStream := nil;
  end;
end;

procedure TWebModule1.WebModule1indexpageAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i: Integer;
  s: string;
begin
  Response.ContentType := 'text/html; charset="utf-8"';
  if mente = true then
    Exit;
  s := Request.QueryFields.Values['db'];
  if s <> '' then
    FDTable1.Locate('dbnum', s, []);
  i := StrToIntDef(Request.QueryFields.Values['num'], -1);
  isInfo;
  pages(FDTable2.RecordCount, i);
  index.Tag := i;
  tagstr := '/index';
  Response.Content := index.Content;
end;

procedure TWebModule1.WebModule1jumpAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  DB, s: string;
  i: Integer;
begin
  DB := Request.QueryFields.Values['db'];
  s := Request.QueryFields.Values['num'];
  if s = '' then
    s := Request.ContentFields.Values['num'];
  i := 10;
  pages(s.ToInteger, i);
  Response.SendRedirect(Format('%s/index?db=%s&num=%d#%s', [Request.ScriptName,
    DB, i, s]));
end;

procedure TWebModule1.WebModule1linkAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
begin
  s := Request.QueryFields.Values['db'];
  if (s = '') or (FDTable1.Locate('dbnum', s.ToInteger) = false) then
    Exit;
  s := Request.QueryFields.Values['num'];
  if (s <> '') and (FDTable2.Locate('number', s.ToInteger) = true) then
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
  s, t: string;
begin
  if Request.MethodType = mtGet then
  begin
    Response.ContentType := 'text/html;charset=utf-8';
    Response.Content := login.Content;
    Exit;
  end;
  s := Request.ContentFields.Values['record'];
  v := FDTable1.Lookup('database', s, 'dbnum');
  t := hash(Request.ContentFields.Values['password']);
  if (VarIsNull(v) = false) and (hash(t) = FDTable3.FieldByName('password')
    .AsString) then
  begin
    with Response.Cookies.Add do
    begin
      Name := 'user';
      Value := t;
      Expires := Now + 14;
      // Secure := true;
    end;
    i := v;
    if s = 'master' then
      Response.SendRedirect(Request.ScriptName + '/master')
    else
      Response.SendRedirect(Request.ScriptName + '/admin?db=' + i.toString);
  end
  else if VarIsNull(v) = false then
  begin
    t := v;
    Response.SendRedirect(Request.ScriptName + '/login?db=' + t);
  end
  else
    Response.SendRedirect(Request.ScriptName + '/login');
end;

procedure TWebModule1.WebModule1logoutAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  i: Integer;
  s: string;
  x: Boolean;
begin
  with Response.Cookies.Add do
  begin
    Name := 'user';
    Expires := Now - 1;
  end;
  s := Request.QueryFields.Values['db'];
  i := StrToIntDef(s, -1);
  x := FDTable1.Locate('dbnum', i);
  if (x = true) and (FDTable1.FieldByName('database').AsString = 'master') then
    x := false;
  if x = false then
    Response.SendRedirect(Request.ScriptName + '/')
  else
    Response.SendRedirect(Request.ScriptName + '/index?db=' + s);
end;

procedure TWebModule1.WebModule1masterAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s: string;
  i: Integer;
begin
  if loginCheck = false then
  begin
    Request.QueryFields.Values['db'] := FDTable1.Lookup('database',
      'master', 'dbnum');
    WebModule1loginAction(nil, Request, Response, Handled);
    Exit;
  end;
  if Request.MethodType = mtPost then
  begin
    s := Request.ContentFields.Values['delete'];
    FDTable4.First;
    with FDTable4 do
      if s = 'all' then
        while not((Bof = true) and (Eof = true)) do
          Delete
      else
        while Eof = false do
        begin
          i := FieldByName('dbname').AsInteger;
          if FDTable1.Locate('dbnum', i) = true then
          begin
            i := FieldByName('posnum').AsInteger;
            if FDTable2.Locate('number', i) = false then
              Delete
            else
              Next;
          end
          else
            Delete;
        end;
  end;
  FDTable4.First;
  Response.ContentType := 'text/html;charset=utf-8';
  Response.Content := master.Content;
end;

procedure TWebModule1.WebModule1registAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  number, i: Integer;
  title, na, raw, pass, kotoba, Error, temp: string;
  comment: TStringList;
  review: Boolean;
begin
  Error := '';
  temp := Request.ContentFields.Values['preview'];
  if temp = '' then
  begin
    kotoba := Request.ContentFields.Values['aikotoba'];
    if kotoba <> 'げんき' then
      Error := Error + '<p>合言葉がちがいます.';
    with Request.ContentFields do
    begin
      title := Values['title'];
      na := Values['name'];
      raw := Values['comment'];
      Values['comment'] := '';
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
    if Error = '' then
      with Response.Cookies.Add do
      begin
        Name := 'aikotoba';
        Value := kotoba;
        Expires := Now + 14;
      end;
    comment := TStringList.Create;
    try
      comment.text := raw;
      strsCheck(Error, comment);
      temp := comment.text;
    finally
      comment.Free;
    end;
    review := false;
  end
  else
    review := true;
  Request.ContentFields.Values['raw'] := raw;
  if Error <> '' then
    Request.ContentFields.Values['preview'] := '<section style=color:red>' +
      Error + '</section>'
  else if Request.ContentFields.Values['show'] = 'true' then
  begin
    if review = false then
      Error := '<p style=font-size:2.3em;color:blue>↓↓プレビュー↓↓<p>' + temp
    else
      Error := temp;
    Request.ContentFields.Values['preview'] := Error;
    Request.ContentFields.Values['show'] := 'false';
  end
  else
  begin
    i := StrToIntDef(Request.QueryFields.Values['db'], -1);
    if FDTable1.Locate('dbnum', i) = false then
      Response.SendRedirect(Request.ScriptName + '/')
    else
    begin
      setLastArticle;
      number := FDTable2.FieldByName('number').AsInteger + 1;
      FDTable2.AppendRecord([i, number, title, na, temp, raw, Now, pass]);
      Response.SendRedirect(Request.ScriptName + '/index?db=' + i.toString +
        '#article');
    end;
    Exit;
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
  FDTable1.First;
  if mente = false then
    Response.Content := top.ContentFromString(top.Content);
end;

procedure TWebModule1.WebModule1usrdelAction(Sender: TObject;
  Request: TWebRequest; Response: TWebResponse; var Handled: Boolean);
var
  s, t, p: string;
begin
  s := Request.QueryFields.Values['db'];
  t := Request.ContentFields.Values['num'];
  p := Request.ContentFields.Values['password'];
  if FDTable2.Locate('dbnum;number;pass',
    VarArrayOf([s.ToInteger, t.ToInteger, p])) = true then
    FDTable2.Delete;
  WebModule1indexpageAction(nil, Request, Response, Handled);
end;

procedure TWebModule1.WebModuleCreate(Sender: TObject);
var
  i: Integer;
  s: string;
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
  FDTable4.Refresh;
  FDTable5.Refresh;
  if (FDTable1.Bof = true) and (FDTable1.Eof = true) then
  begin
    FDTable1.AppendRecord([0, 'info']);
    FDTable1.AppendRecord([1, 'master']);
    for i := 1 to 10 do
      FDTable1.AppendRecord([i + 1, '掲示板' + i.toString]);
  end;
  if (FDTable3.Bof = true) and (FDTable3.Eof = true) then
  begin
    i := FDTable1.Lookup('database', 'info', 'dbnum');
    s := '阿保,馬鹿,死ね';
    FDTable3.AppendRecord
      (['とるね〜ど号',
      '<h1 style=color:maron;text-align:center;font-style:italic>とるね〜ど号</h1>',
      0, i, 30, hash(hash('admin')), s]);
  end;
  admin.MaxRows := FDTable3.FieldByName('count').AsInteger;
end;

end.
