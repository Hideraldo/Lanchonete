unit unitDeposito;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Vcl.Mask;

type
  TfrmDeposito = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Label1: TLabel;
    btnCancelar: TBitBtn;
    btnDepositar: TBitBtn;
    edtValor: TEdit;
    procedure btnDepositarClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure btnCancelarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDeposito: TfrmDeposito;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmDeposito.btnCancelarClick(Sender: TObject);
begin
  close;
end;

procedure TfrmDeposito.btnDepositarClick(Sender: TObject);
  var
    deposito : real;
begin
  deposito := StrToFloat(edtValor.Text);
  DM.qryCliente.Edit;
  DM.qryClienteco_saldo.Value := DM.qryClienteco_saldo.Value + deposito;
  DM.qryCliente.Post;
  //DM.qryCliente.ApplyUpdates; // Apenas com o Zeos
  close;
end;

procedure TfrmDeposito.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in ['0'..'9', ',', char(VK_BACK)]) then
    begin
      key := #0;
    end;
end;

procedure TfrmDeposito.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
  Self := nil;
end;

end.
