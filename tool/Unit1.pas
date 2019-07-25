unit Unit1;

interface

uses
  System.SysUtils, System.Types, System.UITypes, System.Classes, System.Variants,
  FMX.Types, FMX.Controls, FMX.Forms, FMX.Dialogs, FMX.Ani, FMX.Layouts, FMX.Gestures,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.UI.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  Data.Bind.Controls, Data.Bind.EngExt, Fmx.Bind.DBEngExt, System.Rtti,
  System.Bindings.Outputs, Fmx.Bind.Editors, Data.Bind.Components, Data.DB,
  FMX.Controls.Presentation, FMX.Edit, Fmx.Bind.Navigator, Data.Bind.DBScope,
  FireDAC.Comp.Client, FireDAC.Comp.DataSet, FMX.Objects, FMX.StdCtrls,
  FireDAC.FMXUI.Wait, FireDAC.Comp.UI;

type
  TForm2 = class(TForm)
    Image1: TImage;
    FDTable1: TFDTable;
    FDConnection1: TFDConnection;
    Edit1: TEdit;
    BindingsList1: TBindingsList;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    BindSourceDB12: TBindSourceDB;
    NavigatorBindSourceDB12: TBindNavigator;
    LinkPropertyToFieldBitmap: TLinkPropertyToField;
    LinkControlToField1: TLinkControlToField;
    procedure FormCreate(Sender: TObject);
  private
    FGestureOrigin: TPointF;
    FGestureInProgress: Boolean;
    { private êÈåæ }
  public
    { public êÈåæ }
  end;

var
  Form2: TForm2;

implementation

{$R *.fmx}

procedure TForm2.FormCreate(Sender: TObject);
begin
  FDTable1.Refresh;
end;

end.
