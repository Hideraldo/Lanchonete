unit unitClienteDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloDados, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmClienteDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    dbeEmail: TDBEdit;
    Label5: TLabel;
    dbeSenha: TDBEdit;
    Label6: TLabel;
    dbeCurso: TDBEdit;
    Label7: TLabel;
    dbeEscola: TDBEdit;
    Label8: TLabel;
    Label9: TLabel;
    dbeDataCadastro: TDBEdit;
    Label10: TLabel;
    dbeDataInativo: TDBEdit;
    dbcAtivo: TDBComboBox;
    dbcSexo: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteDados: TfrmClienteDados;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmClienteDados.btnSalvarClick(Sender: TObject);
begin
  if dm.tbClientec_ativo.Value = 'N' then
    begin
      dm.tbClientec_data_inativo.Value := Now;
    end;

    if dm.tbClientec_data_cadastro.Text = '' then
      begin
        dm.tbClientec_data_cadastro.Value := Now;
      end;

    dm.tbCliente.Post;
end;

end.
