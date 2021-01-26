unit unitPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, System.ImageList,
  Vcl.ImgList, Vcl.ComCtrls, Vcl.ToolWin, System.Actions, Vcl.ActnList;

type
  TfrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    Arquivo1: TMenuItem;
    Cadastro1: TMenuItem;
    Venda1: TMenuItem;
    Sair1: TMenuItem;
    Cliente1: TMenuItem;
    Funcionrio1: TMenuItem;
    Produto1: TMenuItem;
    Relatrios1: TMenuItem;
    Clientes1: TMenuItem;
    Produtos1: TMenuItem;
    Vendas1: TMenuItem;
    Ajuda1: TMenuItem;
    Sobre1: TMenuItem;
    tlbPrincipal: TToolBar;
    statPrincipal: TStatusBar;
    ilPrincipal48: TImageList;
    ilPrincipal20: TImageList;
    acPrincipal: TActionList;
    acCadCliente: TAction;
    acCadFuncionario: TAction;
    acProduto: TAction;
    acVenda: TAction;
    acRelCliente: TAction;
    acRelProduto: TAction;
    acRelVenda: TAction;
    acSair: TAction;
    acSobre: TAction;
    ToolButton1: TToolButton;
    ToolButton2: TToolButton;
    ToolButton3: TToolButton;
    ToolButton4: TToolButton;
    ToolButton5: TToolButton;
    ToolButton6: TToolButton;
    ToolButton7: TToolButton;
    ToolButton8: TToolButton;
    acDepositoConta: TAction;
    ToolButton9: TToolButton;
    procedure acCadClienteExecute(Sender: TObject);
    procedure acCadFuncionarioExecute(Sender: TObject);
    procedure acProdutoExecute(Sender: TObject);
    procedure acDepositoContaExecute(Sender: TObject);
    procedure acVendaExecute(Sender: TObject);
    procedure acRelClienteExecute(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure abreForm(Classe : TFormClass);
    function buscaForm(Classe : TFormClass) : TForm;
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unitClienteLista, unitFuncionarioLista, unitProdutoLista,
  unitIdentificarConta, unitPontoVenda, unitRelatorios;

procedure TfrmPrincipal.abreForm(Classe: TFormClass);
  var
    I : Integer;
begin
  for I := 0 to MDIChildCount - 1 do
    begin
      if MDIChildren[I] is Classe then
        begin
          if MDIChildren[I].WindowState = wsMinimized then
            begin
              MDIChildren[I].WindowState := wsNormal;
            end;
          MDIChildren[I].BringToFront;
          MDIChildren[I].SetFocus;
          Exit;
        end;
    end;
    Classe.Create(Application);
end;

procedure TfrmPrincipal.acCadClienteExecute(Sender: TObject);
begin
  abreForm(TfrmClienteLista);
end;

procedure TfrmPrincipal.acCadFuncionarioExecute(Sender: TObject);
begin
   abreForm(TfrmFuncionarioLista);
end;

procedure TfrmPrincipal.acDepositoContaExecute(Sender: TObject);
begin
   abreForm(TfrmIdentificaConta);
end;

procedure TfrmPrincipal.acProdutoExecute(Sender: TObject);
begin
    abreForm(TfrmProdutoLista);
end;

procedure TfrmPrincipal.acRelClienteExecute(Sender: TObject);
  var
    path : String;
begin
  path := ExtractFilePath(Application.ExeName);
  frmRelatorios.frxCliente.LoadFromFile(path+'RelCliente.fr3');
  frmRelatorios.frxCliente.ShowReport;
end;

procedure TfrmPrincipal.acVendaExecute(Sender: TObject);
begin
  abreForm(TfrmPontoVenda);
end;

function TfrmPrincipal.buscaForm(Classe: TFormClass): TForm;
  var
    I : Integer;
  begin
    for I := 0 to MDIChildCount - 1 do
      begin
        if MDIChildren[I] is Classe then
          begin
            result := MDIChildren[I];
            Exit;
          end;
      end;
      MessageBox(Application.Handle, Pchar('Formulário não encontrado!'), Pchar('Busca de Formulário'), MB_OK+MB_ICONINFORMATION);
end;

end.
