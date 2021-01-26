program Lanchonete;

uses
  Vcl.Forms,
  unitPrincipal in 'unitPrincipal.pas' {frmPrincipal},
  unitDM in 'unitDM.pas' {DM: TDataModule},
  unitModeloLista in 'unitModeloLista.pas' {frmModeloLista},
  unitClienteLista in 'unitClienteLista.pas' {frmClienteLista},
  unitModeloDados in 'unitModeloDados.pas' {frmModeloDados},
  unitClienteDados in 'unitClienteDados.pas' {frmClienteDados},
  unitFuncionarioLista in 'unitFuncionarioLista.pas' {frmFuncionarioLista},
  unitProdutoLista in 'unitProdutoLista.pas' {frmProdutoLista},
  unitProdutoDados in 'unitProdutoDados.pas' {frmProdutoDados},
  unitFuncionarioDados in 'unitFuncionarioDados.pas' {frmFuncionarioDados},
  unitIdentificarConta in 'unitIdentificarConta.pas' {frmIdentificaConta},
  unitDeposito in 'unitDeposito.pas' {frmDeposito},
  unitPontoVenda in 'unitPontoVenda.pas' {frmPontoVenda},
  unitIdentificarContaPDV in 'unitIdentificarContaPDV.pas' {frmIdentificaContaPDV},
  unitDepositaTroco in 'unitDepositaTroco.pas' {frmDepositaTroco},
  unitRelatorios in 'unitRelatorios.pas' {frmRelatorios};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfrmRelatorios, frmRelatorios);
  Application.Run;
end.
