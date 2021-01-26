unit unitIdentificarContaPDV;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitIdentificarConta, Data.DB,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmIdentificaContaPDV = class(TfrmIdentificaConta)
    btnPadrao: TBitBtn;
    procedure btnPadraoClick(Sender: TObject);
    procedure btnEscolherClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmIdentificaContaPDV: TfrmIdentificaContaPDV;

implementation

{$R *.dfm}

uses unitPontoVenda, unitPrincipal, unitDM;

procedure TfrmIdentificaContaPDV.btnEscolherClick(Sender: TObject);
  var
    novosaldo, saldo : Real;
    novosaldoformat : String;
begin
   with (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda) do begin
    IDCliente := ds.DataSet.FieldByName('c_id').Value;
    edtCliente.Text := ds.DataSet.FieldByName('c_nome').Value;

    dm.tbVenda.Edit;
       dm.tbVenda.FieldByName('v_cliente').Value := IDCliente;
       dm.tbVenda.Post;

    saldo := dm.qryCliente.FieldByName('co_saldo').Value;

    novosaldo := saldo - dm.tbVenda.FieldByName('v_total').Value;

    //edtSaldoAtual.Text := FloatToStr(saldo);
    edtSaldoAtual.Text := FormatFloat('R$ #,###.00', saldo);
    edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);

    novosaldoformat := edtSaldoAtual.Text;
    System.Delete(novosaldoformat, 1, 3);
    saldo := StrToFloat(novosaldoformat);
  end;
  Self.Close;
end;

procedure TfrmIdentificaContaPDV.btnPadraoClick(Sender: TObject);
begin
  with (frmPrincipal.buscaForm(TfrmPontoVenda) as TfrmPontoVenda) do begin
    IDCliente := 1;
    edtCliente.Text := 'Cliente Padrão';
    dm.tbVenda.Edit;
       dm.tbVenda.FieldByName('v_cliente').Value := IDCliente;
       dm.tbVenda.Post;
    edtNovoSaldo.Clear;
    edtSaldoAtual.Clear;
  end;
  Self.Close;
end;

end.
