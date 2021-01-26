unit unitPontoVenda;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.Buttons, Vcl.DBCtrls, Vcl.Mask;

type
  TfrmPontoVenda = class(TForm)
    pnlControl1: TPanel;
    pnlControl2: TPanel;
    pnlControl3: TPanel;
    gbxProduto: TGroupBox;
    gbxItems: TGroupBox;
    dbgProdutos: TDBGrid;
    dbgItens: TDBGrid;
    Panel1: TPanel;
    lblFiltro: TLabel;
    edtFiltro: TEdit;
    dsProduto: TDataSource;
    dsVenda: TDataSource;
    dsVendaItem: TDataSource;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    edtCliente: TEdit;
    btnCliente: TBitBtn;
    btnAdicionar: TBitBtn;
    btnRemovoer: TBitBtn;
    btnOk: TBitBtn;
    btnCancelar: TBitBtn;
    btnDepositarTroco: TBitBtn;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    dbeTotal: TDBEdit;
    dbcFormaPagamento: TDBComboBox;
    Label3: TLabel;
    Label4: TLabel;
    edtValor: TEdit;
    edtTroco: TEdit;
    Label5: TLabel;
    Label6: TLabel;
    edtSaldoAtual: TEdit;
    edtNovoSaldo: TEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure dbgProdutosTitleClick(Column: TColumn);
    procedure edtFiltroChange(Sender: TObject);
    procedure btnClienteClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnRemovoerClick(Sender: TObject);
    procedure edtValorKeyPress(Sender: TObject; var Key: Char);
    procedure edtValorChange(Sender: TObject);
    procedure dbcFormaPagamentoChange(Sender: TObject);
    procedure btnDepositarTrocoClick(Sender: TObject);
    procedure btnOkClick(Sender: TObject);
    procedure btnCancelarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    IDCliente : Integer;
  end;

var
  frmPontoVenda: TfrmPontoVenda;
  campo : String;

implementation

{$R *.dfm}

uses unitDM, unitIdentificarContaPDV, unitPrincipal, unitDepositaTroco;

function StringReplacelettersNotAccents(Str:String):String;
type
 USASCIIString = type AnsiString(20127);
var
 C:Char;
begin
  result:='';
  for C in Str do
    if String(USASCIIString(C)) <> C then
      result:=result+'_'
    else
      result:=result+C;
end;

procedure TfrmPontoVenda.btnAdicionarClick(Sender: TObject);
 var
    novosaldo, saldo : Real;
    novosaldoformat : String;
begin
  if not dsVendaItem.DataSet.Locate('vi_produto', dsProduto.DataSet.FieldByName('p_id').Value, [loCaseInsensitive]) then
    begin
      With dsVendaItem.DataSet do begin
        Append;
          FieldByName('vi_produto').Value := dsProduto.DataSet.FieldByName('p_id').Value;
          FieldByName('vi_cliente').Value := IDCliente;
          FieldByName('vi_status').Value := 'CONSUMADO';
          FieldByName('vi_prod_trocado').Value := 0;
          FieldByName('vi_valor').Value := dsProduto.DataSet.FieldByName('p_preco').Value;
          FieldByName('vi_quantidade').Value := 1;
          FieldByName('vi_total').Value := FieldByName('vi_quantidade').Value * FieldByName('vi_valor').Value;
        Post;
    end;
  end
  else
    begin
       With dsVendaItem.DataSet do begin
        Edit;
          FieldByName('vi_quantidade').Value := FieldByName('vi_quantidade').Value + 1;
          FieldByName('vi_total').Value := FieldByName('vi_quantidade').Value * FieldByName('vi_valor').Value;
        Post;
       end;
    end;

    dsVendaItem.DataSet.Refresh;

    With dm.rqryCalculaTotal do begin
      Params[0].Value := dsVenda.DataSet.FieldByName('v_id').Value;
      Open;
      dsVenda.DataSet.Edit;
         dsVenda.DataSet.FieldByName('v_total').Value := FieldByName('total').Value;
      //dsVenda.DataSet.Post;
      Close;
    end;

    if UpperCase(dbcFormaPagamento.Text) = 'NIBBLE' then begin

      novosaldoformat := edtSaldoAtual.Text;
      System.Delete(novosaldoformat, 1, 3);
      saldo := StrToFloat(novosaldoformat);
      //saldo := StrToCurr(edtSaldoAtual.Text);

      novosaldo := saldo - dm.tbVenda.FieldByName('v_total').Value;

      //edtSaldoAtual.Text := FloatToStr(saldo);
      //edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);

      edtSaldoAtual.Text := FormatFloat('R$ #,###.00', saldo);
      edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);
    end;


    dsProduto.DataSet.Filter := '';
    dsProduto.DataSet.Filtered := False;
    edtFiltro.Clear;
end;

procedure TfrmPontoVenda.btnCancelarClick(Sender: TObject);
begin
  dsVenda.DataSet.Delete;
  Self.Close;
end;

procedure TfrmPontoVenda.btnClienteClick(Sender: TObject);
begin
  frmPrincipal.abreForm(TfrmIdentificaContaPDV);
end;

procedure TfrmPontoVenda.btnDepositarTrocoClick(Sender: TObject);
begin
  frmPrincipal.abreForm(TfrmDepositaTroco);
end;

procedure TfrmPontoVenda.btnOkClick(Sender: TObject);
  var
    novosaldoformat : String;
begin
  With dsVenda.DataSet do begin
    Edit;
      FieldByName('v_status').Value := 'ABERTO';
    Post;
    if UpperCase(FieldByName('v_forma_pagamento').Value) = 'NIBBLE' then begin
      DM.qryCliente.Open;
        DM.qryCliente.Locate('c_id', IDCliente, []);
        novosaldoformat := edtNovoSaldo.Text;
        System.Delete(novosaldoformat, 1, 3);
        dm.qryCliente.Edit;
          DM.qryCliente.FieldByName('co_saldo').Value := StrToFloat(novosaldoformat);
        dm.qryCliente.Post;
    end;
    //Não estava alterando o status do vi_venda_item
    With dsVendaItem.DataSet do begin
      First;
        while not Eof do begin
          Edit;
            FieldByName('vi_status').Value := 'ABERTO';
          Post;
          Next;
        end;
    end;
  end;
  Self.Close;
end;

procedure TfrmPontoVenda.btnRemovoerClick(Sender: TObject);
  var
    novosaldo, saldo : Real;
    novosaldoformat : String;
begin
  dsVendaItem.DataSet.Delete;
     With dm.rqryCalculaTotal do begin
      Params[0].Value := dsVenda.DataSet.FieldByName('v_id').Value;
      Open;
      dsVenda.DataSet.Edit;
         dsVenda.DataSet.FieldByName('v_total').Value := FieldByName('total').Value;
      //dsVenda.DataSet.Post;
      Close;
    end;

    if UpperCase(dbcFormaPagamento.Text) = 'NIBBLE' then begin

      novosaldoformat := edtSaldoAtual.Text;
      System.Delete(novosaldoformat, 1, 3);
      saldo := StrToFloat(novosaldoformat);
      //saldo := StrToCurr(edtSaldoAtual.Text);

      novosaldo := saldo - dm.tbVenda.FieldByName('v_total').Value;

      //edtSaldoAtual.Text := FloatToStr(saldo);
      //edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);
      edtSaldoAtual.Text := FormatFloat('R$ #,###.00', saldo);
      edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);
    end;
end;

procedure TfrmPontoVenda.dbcFormaPagamentoChange(Sender: TObject);
var
  saldo, novosaldo : real;
  novosaldoformat : String;
begin
  if Length(edtSaldoAtual.Text) > 0 then begin
    if UpperCase(dbcFormaPagamento.Text) = 'NIBBLE' then begin

      novosaldoformat := edtSaldoAtual.Text;
      System.Delete(novosaldoformat, 1, 3);
      saldo := StrToFloat(novosaldoformat);
      //saldo := StrToCurr(edtSaldoAtual.Text);

      novosaldo := saldo - dm.tbVenda.FieldByName('v_total').Value;

      //edtSaldoAtual.Text := FloatToStr(saldo);
      //edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);

      edtSaldoAtual.Text := FormatFloat('R$ #,###.00', saldo);
      edtNovoSaldo.Text := FormatFloat('R$ #,###.00', novosaldo);
    end;
  end;

end;

procedure TfrmPontoVenda.dbgProdutosTitleClick(Column: TColumn);
begin
  campo := Column.FieldName;
  lblFiltro.Caption := Column.Title.Caption+': ';
  edtFiltro.Clear;
end;

procedure TfrmPontoVenda.edtFiltroChange(Sender: TObject);
begin
  if Length(edtFiltro.Text) > 0 then
    begin
      dsProduto.DataSet.Filter := UpperCase(campo)+ ' like '+ StringReplacelettersNotAccents(QuotedStr('%'+ AnsiUpperCase(edtFiltro.Text)+'%'));
      dsProduto.DataSet.Filtered := True;
    end
  else
    dsProduto.DataSet.Filtered := False;

    edtFiltro.SetFocus;
end;

procedure TfrmPontoVenda.edtValorChange(Sender: TObject);
  var
    valor, troco : Real;
    novosaldoformat : String;
begin
  if Length(edtValor.Text) > 0 then
    begin
      valor := StrToFloat(edtValor.Text);
      troco := valor - dsVenda.DataSet.FieldByName('v_total').AsFloat;
      //edtTroco.Text := FloatToStr(troco);

      edtTroco.Text := FormatFloat('R$ #,###.00', troco);

      novosaldoformat := edtTroco.Text;
      System.Delete(novosaldoformat, 1, 3);
      troco := StrToFloat(novosaldoformat);
    end
    else
      edtTroco.Clear;
end;

procedure TfrmPontoVenda.edtValorKeyPress(Sender: TObject; var Key: Char);
begin
 if not (key in ['0'..'9', ',', char(VK_BACK)]) then
    begin
      key := #0;
    end;
end;

procedure TfrmPontoVenda.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  dsProduto.DataSet.Close;
  dsVenda.DataSet.Close;
  dsVendaItem.DataSet.Close;

  Action := caFree;
  Self := nil;
end;

procedure TfrmPontoVenda.FormShow(Sender: TObject);
begin
  dsProduto.DataSet.Open;
  dsVenda.DataSet.Open;
  dsVendaItem.DataSet.Open;

  IDCliente := 1;
  edtCliente.Text := 'Cliente Padrão';

  campo := 'p_id';
  dsProduto.DataSet.Filtered := False;
  lblFiltro.Caption := 'ID: ';
  edtFiltro.Clear;

  edtValor.Enabled := True;


  With dsVenda.DataSet do begin
    Append;
      FieldByName('v_cliente').Value := IDCliente;
      FieldByName('v_caixa').Value := 1;
      FieldByName('v_status').Value := 'CONSUMADO';
      FieldByName('v_data').Value := Now;
    Post;
  end;
end;

end.
