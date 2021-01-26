unit unitModeloLista;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.ExtCtrls,
  Data.DB, Vcl.Grids, Vcl.DBGrids;

type
  TfrmModeloLista = class(TForm)
    gbFiltros: TGroupBox;
    gbDados: TGroupBox;
    pnControle: TPanel;
    lblFiltro: TLabel;
    edtFiltro: TEdit;
    btnFiltro: TBitBtn;
    dbgDados: TDBGrid;
    btnEditar: TBitBtn;
    btnAdicionar: TBitBtn;
    btnExcluir: TBitBtn;
    btnFechar: TBitBtn;
    ds: TDataSource;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnFiltroClick(Sender: TObject);
    procedure dbgDadosTitleClick(Column: TColumn);
    procedure edtFiltroChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word; Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModeloLista: TfrmModeloLista;
  campoFiltro : String;

implementation

{$R *.dfm}

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

procedure TfrmModeloLista.btnAdicionarClick(Sender: TObject);
begin
  ds.DataSet.Append;
end;

procedure TfrmModeloLista.btnExcluirClick(Sender: TObject);
begin
  if ds.DataSet.RecordCount = 0 then
    begin
      MessageBox(Application.Handle, Pchar('Não existe registro para ser excluído!'), Pchar('Falha ao excluir registro'), MB_OK+MB_ICONERROR);
      exit;
    end;

  if (MessageBox(Application.Handle, Pchar('Deseja excluir este registro?'), Pchar('Confirmar Exclusão'), MB_YESNO+MB_ICONQUESTION)) = ID_YES then
    begin
      ds.DataSet.Delete;
    end;
end;

procedure TfrmModeloLista.btnFecharClick(Sender: TObject);
begin
  Self.Close;
end;

procedure TfrmModeloLista.btnFiltroClick(Sender: TObject);
begin
  ds.DataSet.Filter := UpperCase(campoFiltro)+ ' like '+ StringReplacelettersNotAccents(QuotedStr('%'+ AnsiUpperCase(edtFiltro.Text)+'%'));
  ds.DataSet.Filtered := true;

  edtFiltro.SetFocus;
end;

procedure TfrmModeloLista.dbgDadosTitleClick(Column: TColumn);
begin
  lblFiltro.Caption := Column.Title.Caption+':';
  edtFiltro.Clear;
  campoFiltro := Column.FieldName;
  ds.DataSet.Filtered := false;

  edtFiltro.SetFocus;
end;

procedure TfrmModeloLista.edtFiltroChange(Sender: TObject);
begin
  if Length(edtFiltro.Text) = 0 then
    begin
      btnFiltro.Enabled := false;
      ds.DataSet.Filtered := false;
    end
  else
    begin
      btnFiltro.Enabled := true;
    end;

end;

procedure TfrmModeloLista.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  ds.DataSet.Close;

  Action := caFree;
  self := nil;
end;

procedure TfrmModeloLista.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if key = VK_ESCAPE then
    begin
      Self.Close;
    end;
end;

procedure TfrmModeloLista.FormShow(Sender: TObject);
begin
  ds.DataSet.Open;

  lblFiltro.Caption := dbgDados.Columns[0].Title.Caption+':';
  edtFiltro.Clear;
  campoFiltro := dbgDados.Columns[0].FieldName;

  ds.DataSet.Filtered := false;
end;

end.
