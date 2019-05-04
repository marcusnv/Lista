unit UntTelaPrincipal;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus, StdCtrls, Buttons, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    mmRedirecionar: TMainMenu;
    Redirecionar1: TMenuItem;
    ListboxMarcus1: TMenuItem;
    imgMXM: TImage;
    btnSairPrincipal: TBitBtn;
    lblTitulo: TLabel;
    lblCriado: TLabel;
    procedure ListBoxMarcus1Click(Sender: TObject);
    procedure Sair1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UntLista;

{$R *.dfm}

procedure TForm1.ListBoxMarcus1Click(Sender: TObject);
var
Lista: TfrmLista;
begin
Lista:=TfrmLista.create(self);
Lista.showmodal;
end;
procedure TForm1.Sair1Click(Sender: TObject);
begin
Application.Terminate;
end;

end.
