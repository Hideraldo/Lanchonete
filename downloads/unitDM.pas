unit unitDM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Phys.MySQLDef, FireDAC.UI.Intf,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async, FireDAC.Phys, FireDAC.Phys.MySQL, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.Comp.UI;

type
  TDM = class(TDataModule)
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    Conexao: TFDConnection;
    tbCliente: TFDTable;
    tbFuncionario: TFDTable;
    tbProduto: TFDTable;
    tbConta: TFDTable;
    tbVenda: TFDTable;
    tbClientec_id: TFDAutoIncField;
    tbClientec_nome: TStringField;
    tbClientec_sexo: TStringField;
    tbClientec_email: TStringField;
    tbClientec_senha: TStringField;
    tbClientec_curso: TStringField;
    tbClientec_escola: TStringField;
    tbClientec_ativo: TStringField;
    tbClientec_data_cadastro: TDateTimeField;
    tbClientec_data_inativo: TDateTimeField;
    tbFuncionariof_id: TFDAutoIncField;
    tbFuncionariof_nome: TStringField;
    tbFuncionariof_usuario: TStringField;
    tbFuncionariof_senha: TStringField;
    tbFuncionariof_ativo: TStringField;
    tbFuncionariof_data_cadastro: TDateTimeField;
    tbFuncionariof_data_inativo: TDateTimeField;
    tbProdutop_id: TLargeintField;
    tbProdutop_nome: TStringField;
    tbProdutop_foto: TBlobField;
    tbProdutop_preco: TFloatField;
    tbProdutop_custo: TFloatField;
    tbProdutop_quantidade: TLongWordField;
    tbProdutop_qtd_alerta: TLongWordField;
    tbProdutop_ativo: TStringField;
    tbProdutop_data_cadastro: TDateTimeField;
    tbProdutop_data_inativo: TDateTimeField;
    tbContaco_cliente: TLongWordField;
    tbContaco_saldo: TFloatField;
    tbContaco_data_criado: TDateTimeField;
    tbContaco_data_inativo: TDateTimeField;
    tbContaco_data_u_compra: TDateTimeField;
    tbContaco_ativo: TStringField;
    tbVendav_id: TLargeintField;
    tbVendav_cliente: TLongWordField;
    tbVendav_caixa: TLongWordField;
    tbVendav_atendente: TLongWordField;
    tbVendav_status: TStringField;
    tbVendav_total: TFloatField;
    tbVendav_forma_pagamento: TStringField;
    tbVendav_origem: TStringField;
    tbVendav_data_consumo: TDateTimeField;
    tbVendav_data: TDateTimeField;
    tbVendav_data_devolucao: TDateTimeField;
    qryCliente: TFDQuery;
    qryClientec_id: TFDAutoIncField;
    qryClientec_nome: TStringField;
    qryClientec_sexo: TStringField;
    qryClientec_email: TStringField;
    qryClientec_senha: TStringField;
    qryClientec_curso: TStringField;
    qryClientec_escola: TStringField;
    qryClientec_ativo: TStringField;
    qryClientec_data_cadastro: TDateTimeField;
    qryClientec_data_inativo: TDateTimeField;
    qryClienteco_saldo: TFloatField;
    updCliente: TFDUpdateSQL;
    qryVendaItem: TFDQuery;
    updVendaItem: TFDUpdateSQL;
    rqryProduto: TFDQuery;
    dsVenda: TDataSource;
    qryVendaItemvi_id: TLargeintField;
    qryVendaItemvi_produto: TLargeintField;
    qryVendaItemvi_cliente: TLongWordField;
    qryVendaItemvi_venda: TLargeintField;
    qryVendaItemvi_valor: TFloatField;
    qryVendaItemvi_quantidade: TLongWordField;
    qryVendaItemvi_total: TFloatField;
    qryVendaItemvi_status: TStringField;
    qryVendaItemvi_prod_trocado: TLongWordField;
    qryVendaItemp_nome: TStringField;
    qryVendaItemp_preco: TFloatField;
    qryVendaItemp_quantidade: TLongWordField;
    rqryProdutop_id: TLargeintField;
    rqryProdutop_nome: TStringField;
    rqryProdutop_foto: TBlobField;
    rqryProdutop_preco: TFloatField;
    rqryProdutop_custo: TFloatField;
    rqryProdutop_quantidade: TLongWordField;
    rqryProdutop_qtd_alerta: TLongWordField;
    rqryProdutop_ativo: TStringField;
    rqryProdutop_data_cadastro: TDateTimeField;
    rqryProdutop_data_inativo: TDateTimeField;
    rqryCalculaTotal: TFDQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
