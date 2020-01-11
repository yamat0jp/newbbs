program yourBBS;

{$APPTYPE CONSOLE}

{$R *.dres}

uses
  Web.WebBroker,
  CGIApp,
  Unit1 in 'Unit1.pas' {DataModule1: TDataModule},
  WebModuleUnit1 in 'WebModuleUnit1.pas' {WebModule1: TWebModule};

{$R *.res}

begin
  Application.Initialize;
  Application.WebModuleClass := WebModuleClass;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.Run;
end.
