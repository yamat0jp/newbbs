library mod_webbroker;

uses
  Winapi.ActiveX,
  System.Win.ComObj,
  Web.WebBroker,
  Web.ApacheApp,
  Web.HTTPD24Impl,
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {TWebModule1: TWebModule};

{$R *.res}

// httpd.conf エントリ:
//
(*
 LoadModule webbroker_module modules/mod_webbroker.dll

 <Location /xyz>
    SetHandler mod_webbroker-handler
 </Location>
*)
//
// これらのエントリでは、このプロジェクトの出力ディレクトリが apache/modules ディレクトリであると仮定しています。
//
// プロジェクトが次のように変更された場合、httpd.conf エントリは異なるはずです。
//   1. TApacheModuleData 変数名が変更される
//   2. プロジェクト名が変更される
//   3. 出力ディレクトリが apache/modules ディレクトリでない
//

// Apache からこのモジュールにアクセスできるように、エクスポートされた変数を宣言します。
var
  GModuleData: TApacheModuleData;
exports
  GModuleData name 'webbroker_module';

begin
  CoInitFlags := COINIT_MULTITHREADED;
  Web.ApacheApp.InitApplication(@GModuleData);
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
