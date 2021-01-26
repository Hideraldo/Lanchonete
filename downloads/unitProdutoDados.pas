unit unitProdutoDados;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, unitModeloDados, Data.DB, Vcl.StdCtrls,
  Vcl.Buttons, Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Mask, JPEG, Vcl.ExtDlgs;

type
  TfrmProdutoDados = class(TfrmModeloDados)
    Panel1: TPanel;
    Label1: TLabel;
    dbeID: TDBEdit;
    Label8: TLabel;
    dbcAtivo: TDBComboBox;
    Label2: TLabel;
    dbeNome: TDBEdit;
    Label7: TLabel;
    dbeAlerta: TDBEdit;
    Label6: TLabel;
    dbeQtd: TDBEdit;
    Label5: TLabel;
    dbeCusto: TDBEdit;
    Label4: TLabel;
    dbePreco: TDBEdit;
    Label9: TLabel;
    dbeDataCadastro: TDBEdit;
    dbeDataInativo: TDBEdit;
    Label10: TLabel;
    Panel2: TPanel;
    gbFoto: TGroupBox;
    imgProduto: TImage;
    opdFoto: TOpenPictureDialog;
    procedure btnSalvarClick(Sender: TObject);
    procedure dsDataChange(Sender: TObject; Field: TField);
    procedure imgProdutoDblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmProdutoDados: TfrmProdutoDados;

implementation

{$R *.dfm}

uses unitDM;

procedure TfrmProdutoDados.btnSalvarClick(Sender: TObject);
begin
  if dm.tbProdutop_ativo.Value = 'N' then
    begin
      dm.tbProdutop_data_inativo.Value := Now;
    end;

     if dm.tbProdutop_data_cadastro.Text = '' then
      begin
        dm.tbProdutop_data_cadastro.Value := Now;
      end;

    dm.tbProduto.Post;
end;

procedure TfrmProdutoDados.dsDataChange(Sender: TObject; Field: TField);
  var
    jpg : TJPEGImage;
    stream : TMemoryStream;
begin
  inherited;

  if not(dm.tbProdutop_foto.IsNull) then
    begin
      try
        jpg := TJPEGImage.Create;
        stream := TMemoryStream.Create;

        dm.tbProdutop_foto.SaveToStream(stream);
        stream.Seek(0,soFromBeginning);
        jpg.LoadFromStream(stream);

        imgProduto.Picture.Assign(jpg);

        jpg.Free;
        stream.Free;  
      except on E: Exception do
        begin
          jpg.Free;
          stream.Free;

          MessageBox(Application.Handle, Pchar(E.Message), Pchar('Falha ao carregar imagem do produto'), MB_OK+MB_ICONWARNING);
        end;
      end;
      
    end;
end;

procedure TfrmProdutoDados.imgProdutoDblClick(Sender: TObject);
  var
     jpg : TJPEGImage;
begin
  inherited;

  if opdFoto.Execute then
    begin
      try
        ds.DataSet.Edit;
        jpg := TJPEGImage.Create;
        dm.tbProdutop_foto.LoadFromFile(opdFoto.FileName);
        jpg.LoadFromFile(opdFoto.FileName);

        imgProduto.Picture.Assign(jpg);

        jpg.Free;
      except on E: Exception do
        begin
          jpg.Free;
          MessageBox(Application.Handle, Pchar('Apenas é permitido arquivos do formato JPG!'), Pchar('Erro ao salvar a imagem do produto'), MB_OK+MB_ICONWARNING);
        end;
      end;
    end;

end;

end.
