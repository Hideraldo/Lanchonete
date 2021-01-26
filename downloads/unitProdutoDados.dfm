inherited frmProdutoDados: TfrmProdutoDados
  Caption = 'Dados do Produto'
  ClientHeight = 429
  ClientWidth = 834
  ExplicitWidth = 850
  ExplicitHeight = 468
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbdDados: TGroupBox
    Width = 834
    Height = 348
    ExplicitWidth = 834
    ExplicitHeight = 348
    object Panel1: TPanel
      Left = 2
      Top = 16
      Width = 407
      Height = 330
      Align = alLeft
      BevelOuter = bvNone
      TabOrder = 0
      object Label1: TLabel
        Left = 17
        Top = 23
        Width = 19
        Height = 19
        Caption = 'ID'
        FocusControl = dbeID
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 328
        Top = 23
        Width = 43
        Height = 19
        Caption = 'Ativo'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 17
        Top = 89
        Width = 65
        Height = 19
        Caption = 'Produto'
        FocusControl = dbeNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 17
        Top = 147
        Width = 122
        Height = 14
        Caption = 'Alerta de Reposi'#231#227'o'
        FocusControl = dbeAlerta
      end
      object Label6: TLabel
        Left = 231
        Top = 147
        Width = 23
        Height = 14
        Caption = 'Qtd'
        FocusControl = dbeQtd
      end
      object Label5: TLabel
        Left = 17
        Top = 202
        Width = 36
        Height = 14
        Caption = 'Custo'
        FocusControl = dbeCusto
      end
      object Label4: TLabel
        Left = 231
        Top = 202
        Width = 34
        Height = 14
        Caption = 'Pre'#231'o'
        FocusControl = dbePreco
      end
      object Label9: TLabel
        Left = 17
        Top = 264
        Width = 108
        Height = 14
        Caption = 'Data do Cadastro'
        FocusControl = dbeDataCadastro
      end
      object Label10: TLabel
        Left = 200
        Top = 264
        Width = 77
        Height = 14
        Caption = 'Data Inativo'
        FocusControl = dbeDataInativo
      end
      object dbeID: TDBEdit
        Left = 17
        Top = 44
        Width = 296
        Height = 27
        CharCase = ecUpperCase
        DataField = 'p_id'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
      end
      object dbcAtivo: TDBComboBox
        Left = 328
        Top = 44
        Width = 63
        Height = 27
        CharCase = ecUpperCase
        DataField = 'p_ativo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        Items.Strings = (
          'S'
          'N')
        ParentFont = False
        TabOrder = 1
      end
      object dbeNome: TDBEdit
        Left = 17
        Top = 108
        Width = 374
        Height = 27
        CharCase = ecUpperCase
        DataField = 'p_nome'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 2
      end
      object dbeAlerta: TDBEdit
        Left = 17
        Top = 163
        Width = 152
        Height = 22
        CharCase = ecUpperCase
        DataField = 'p_qtd_alerta'
        DataSource = ds
        TabOrder = 3
      end
      object dbeQtd: TDBEdit
        Left = 231
        Top = 163
        Width = 160
        Height = 22
        CharCase = ecUpperCase
        DataField = 'p_quantidade'
        DataSource = ds
        TabOrder = 4
      end
      object dbeCusto: TDBEdit
        Left = 17
        Top = 222
        Width = 152
        Height = 22
        CharCase = ecUpperCase
        DataField = 'p_custo'
        DataSource = ds
        TabOrder = 5
      end
      object dbePreco: TDBEdit
        Left = 231
        Top = 220
        Width = 160
        Height = 22
        CharCase = ecUpperCase
        DataField = 'p_preco'
        DataSource = ds
        TabOrder = 6
      end
      object dbeDataCadastro: TDBEdit
        Left = 17
        Top = 281
        Width = 168
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_cadastro'
        DataSource = ds
        ReadOnly = True
        TabOrder = 7
      end
      object dbeDataInativo: TDBEdit
        Left = 200
        Top = 281
        Width = 191
        Height = 22
        TabStop = False
        CharCase = ecUpperCase
        DataField = 'p_data_inativo'
        DataSource = ds
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        ReadOnly = True
        TabOrder = 8
      end
    end
    object Panel2: TPanel
      Left = 409
      Top = 16
      Width = 423
      Height = 330
      Align = alClient
      BevelOuter = bvNone
      TabOrder = 1
      object gbFoto: TGroupBox
        Left = 0
        Top = 0
        Width = 423
        Height = 330
        Align = alClient
        Caption = ' Foto:'
        TabOrder = 0
        ExplicitLeft = 6
        object imgProduto: TImage
          Left = 2
          Top = 16
          Width = 419
          Height = 312
          Hint = 'D'#234' um duplo clique para adicionar uma imagem'
          Align = alClient
          Center = True
          ParentShowHint = False
          Proportional = True
          ShowHint = True
          Stretch = True
          OnDblClick = imgProdutoDblClick
          ExplicitLeft = 128
          ExplicitTop = 108
          ExplicitWidth = 161
          ExplicitHeight = 133
        end
      end
    end
  end
  inherited pnlControle: TPanel
    Top = 348
    Width = 834
    ExplicitTop = 348
    ExplicitWidth = 834
    inherited btnSalvar: TBitBtn
      Left = 537
      ExplicitLeft = 537
    end
    inherited btnFechar: TBitBtn
      Left = 738
      ExplicitLeft = 738
    end
    inherited btnCancelar: TBitBtn
      Left = 640
      ExplicitLeft = 640
    end
  end
  inherited ds: TDataSource
    DataSet = DM.tbProduto
    OnDataChange = dsDataChange
    Left = 272
    Top = 24
  end
  object opdFoto: TOpenPictureDialog
    Filter = 'JPEG Image File (*.jpg)|*.jpg'
    Title = 'Escolha a foto do produto'
    Left = 618
    Top = 16
  end
end
