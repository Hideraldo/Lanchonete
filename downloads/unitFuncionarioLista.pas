unit unitFuncionarioLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloLista, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmFuncionarioLista = class(TfrmModeloLista)
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarioLista: TfrmFuncionarioLista;

implementation

{$R *.dfm}

uses unitDM, unitPrincipal, unitFuncionarioDados;

procedure TfrmFuncionarioLista.btnAdicionarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmFuncionarioDados);
end;

procedure TfrmFuncionarioLista.btnEditarClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmFuncionarioDados);
end;

end.
