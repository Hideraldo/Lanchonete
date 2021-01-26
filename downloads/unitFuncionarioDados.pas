unit unitFuncionarioDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloDados, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.Mask, Vcl.DBCtrls;

type
  TfrmFuncionarioDados = class(TfrmModeloDados)
    Label1: TLabel;
    dbeID: TDBEdit;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label3: TLabel;
    dbeUsuario: TDBEdit;
    Label4: TLabel;
    dbeSenha: TDBEdit;
    Label5: TLabel;
    Label6: TLabel;
    dbeDataCadastro: TDBEdit;
    Label7: TLabel;
    dbeDataInativo: TDBEdit;
    dbcAtivo: TDBComboBox;
    procedure btnSalvarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFuncionarioDados: TfrmFuncionarioDados;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmFuncionarioDados.btnSalvarClick(Sender: TObject);
begin
  if dm.tbFuncionariof_ativo.Value = 'N' then
    begin
      dm.tbFuncionariof_data_inativo.Value := Now;
    end;

    if dm.tbFuncionariof_data_cadastro.Text = '' then
      begin
        dm.tbFuncionariof_data_cadastro.Value := Now;
      end;

    dm.tbFuncionario.Post;
end;

end.
