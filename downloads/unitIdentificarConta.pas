unit unitIdentificarConta;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloLista, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmIdentificaConta = class(TfrmModeloLista)
    pnlControle2: TPanel;
    btnVoltar: TBitBtn;
    btnEscolher: TBitBtn;
    procedure btnEscolherClick(Sender: TObject);
    procedure btnVoltarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdentificaConta: TfrmIdentificaConta;

implementation

{$R *.dfm}

uses unitDM, unitDeposito, unitPrincipal;

procedure TfrmIdentificaConta.btnEscolherClick(Sender: TObject);
begin
  inherited;
  frmPrincipal.abreForm(TfrmDeposito);
end;

procedure TfrmIdentificaConta.btnVoltarClick(Sender: TObject);
begin
  inherited;
  Close;
end;

end.
