unit unitProdutoLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloLista, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmProdutoLista = class(TfrmModeloLista)
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoLista: TfrmProdutoLista;

implementation

{$R *.dfm}

uses unitDM, unitProdutoDados, unitPrincipal;

procedure TfrmProdutoLista.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmProdutoDados);
end;

procedure TfrmProdutoLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmProdutoDados);
end;

end.
