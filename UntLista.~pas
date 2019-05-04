unit UntLista;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Buttons, ExtCtrls;

type
  TfrmLista = class(TForm)
    pnl1: TPanel;
    pnl2: TPanel;
    pnl3: TPanel;
    lstPrincipal: TListBox;
    btnInserir: TBitBtn;
    btnRemover: TBitBtn;
    edtPesquisa: TEdit;
    btnEditar: TBitBtn;
    btnOrdenar: TBitBtn;
    btnSair: TBitBtn;
    procedure edtPesquisaEnter(Sender: TObject);
    procedure btnInserirClick(Sender: TObject);
    procedure btnRemoverClick(Sender: TObject);
    procedure edtPesquisaChange(Sender: TObject);
    procedure edtPesquisaExit(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnOrdenarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmLista: TfrmLista;

implementation

{$R *.dfm}

procedure TfrmLista.edtPesquisaEnter(Sender: TObject);
begin
edtPesquisa.Clear; //Quando selecionar o campo de pesquisa o camption vai ficar vazio.
end;

procedure TfrmLista.btnInserirClick(Sender: TObject);
var
  dados : string;
begin
  dados := InputBox('Inserir Dados', 'Dados: ', ''); //tIPO DE JANELA QUE VAI ABRIR PARA INSERIR DADOS, primeiro é o titulo da janela e depois titulo do campo de texto
  if
  (Trim(dados) <> '') then
  lstPrincipal.Items.Add(dados) //Se for diferente de vazio ele insere o dado na minha lista
  else
  MessageDlg('Você não inseriu nenhum valor !',mtError, [mbOK], 0);{mensagem} {Tipo da mensagem} {Tipo do botão}
  end;

procedure TfrmLista.btnRemoverClick(Sender: TObject);
var
  i:Integer;
begin
  //Criei um for ao contrário para fazer a exclusão do campo do dado
  //Como o count vai retornar o valor total de itens eu vou diminuir 1 desse count, por isso i = -1, o downto é pra decrementar até 0
  for i := -1 + lstPrincipal.Items.Count downto 0 do
  begin
  if(lstPrincipal.Selected[i]) then //Se o lstPrincipal tiver selecionado
  begin
  lstPrincipal.Items.Delete(i);//propriedade delete para excluir o I.
  end;
  end;
end;

procedure TfrmLista.edtPesquisaChange(Sender: TObject);
begin
lstPrincipal.MultiSelect := false; //Atribui o valor false ao multiselect pois a propriedade onEnter entrar em conflito na hora de filtrar.
//Uso da propriedade perform, que manda uma mensagem a nivel de sistema operacional pra fazer a filtragem
lstPrincipal.Perform(LB_SELECTSTRING, 0, LongInt(PChar(edtPesquisa.Text))) //parametro LB_selectString seleciona a string, funcao longint pois e um inteiro longo e o pchar pq estamos passando valores como caracteres
end;

procedure TfrmLista.edtPesquisaExit(Sender: TObject);
begin
lstPrincipal.MultiSelect := True; //Voltei para true para poder trablhar com o multiselect
end;

procedure TfrmLista.btnEditarClick(Sender: TObject);
var
  i:Integer;
  dados : string;
begin
  for i := -1 + lstPrincipal.Items.Count downto 0 do
    begin
    if(lstPrincipal.Selected[i]) then //Se o lstPrincipal tiver selecionado
    begin
    dados := InputBox('Modificar: ' + lstPrincipal.Items[i], 'Novo: ', lstPrincipal.Items[i]);
    if(Trim(dados) <> '') then
    lstPrincipal.Items[i] := dados;
    end;
    end;
end;

procedure TfrmLista.btnOrdenarClick(Sender: TObject);
begin
lstPrincipal.Sorted := True;
end;

end.
