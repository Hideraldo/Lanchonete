unit unitDepositaTroco;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitIdentificarConta, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmDepositaTroco = class(TfrmIdentificaConta)
    procedure btnEscolherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmDepositaTroco: TfrmDepositaTroco;

implementation

{$R *.dfm}

uses unitPrincipal, unitPontoVenda, unitDM;

procedure TfrmDepositaTroco.btnEscolherClick(Sender: TObject);
  var
    troco : Real;
    novosaldoformat : String;
begin
  if Length((frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtTroco.Text) > 0 then begin
    //troco := StrToFloat((frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtTroco.Text);

    novosaldoformat := (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtTroco.Text;
    System.Delete(novosaldoformat, 1, 3);
    troco := StrToFloat(novosaldoformat);

    ds.DataSet.Edit;
    ds.DataSet.FieldByName('co_saldo').Value := ds.DataSet.FieldByName('co_saldo').Value + troco;
    ds.DataSet.Post;
    (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtValor.Enabled := False;
    (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda).edtTroco.Clear;
  end;
  Self.Close;
end;

end.
