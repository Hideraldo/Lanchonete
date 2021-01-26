unit unitClienteLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloLista, Data.DB, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.Buttons;

type
  TfrmClienteLista = class(TfrmModeloLista)
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmClienteLista: TfrmClienteLista;

implementation

{$R *.dfm}

uses unitDM, unitClienteDados, unitPrincipal;

procedure TfrmClienteLista.btnAdicionarClick(Sender: TObject);
  //var
    //formulario : Tform;
begin
  inherited;
  //formulario := TfrmClienteDados.Create(Application);
  frmPrincipal.abreForm(TfrmClienteDados);
end;

procedure TfrmClienteLista.btnEditarClick(Sender: TObject);
  //var
    //formulario : Tform;
begin
  inherited;
  //formulario := TfrmClienteDados.Create(Application);
  frmPrincipal.abreForm(TfrmClienteDados);
end;

end.
