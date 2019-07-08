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

// httpd.conf �G���g��:
//
(*
 LoadModule webbroker_module modules/mod_webbroker.dll

 <Location /xyz>
    SetHandler mod_webbroker-handler
 </Location>
*)
//
// �����̃G���g���ł́A���̃v���W�F�N�g�̏o�̓f�B���N�g���� apache/modules �f�B���N�g���ł���Ɖ��肵�Ă��܂��B
//
// �v���W�F�N�g�����̂悤�ɕύX���ꂽ�ꍇ�Ahttpd.conf �G���g���͈قȂ�͂��ł��B
//   1. TApacheModuleData �ϐ������ύX�����
//   2. �v���W�F�N�g�����ύX�����
//   3. �o�̓f�B���N�g���� apache/modules �f�B���N�g���łȂ�
//

// Apache ���炱�̃��W���[���ɃA�N�Z�X�ł���悤�ɁA�G�N�X�|�[�g���ꂽ�ϐ���錾���܂��B
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
