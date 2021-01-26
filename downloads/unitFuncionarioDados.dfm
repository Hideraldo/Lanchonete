inherited frmFuncionarioDados: TfrmFuncionarioDados
  Caption = 'Dados do Funcion'#225'rio'
  ClientHeight = 365
  ClientWidth = 487
  ExplicitWidth = 503
  ExplicitHeight = 404
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbdDados: TGroupBox
    Width = 487
    Height = 284
    ExplicitWidth = 487
    ExplicitHeight = 284
    object Label1: TLabel
      Left = 48
      Top = 48
      Width = 14
      Height = 14
      Caption = 'ID'
      FocusControl = dbeID
    end
    object Label2: TLabel
      Left = 48
      Top = 100
      Width = 34
      Height = 14
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object Label3: TLabel
      Left = 48
      Top = 160
      Width = 45
      Height = 14
      Caption = 'Usu'#225'rio'
      FocusControl = dbeUsuario
    end
    object Label4: TLabel
      Left = 253
      Top = 160
      Width = 38
      Height = 14
      Caption = 'Senha'
      FocusControl = dbeSenha
    end
    object Label5: TLabel
      Left = 253
      Top = 48
      Width = 33
      Height = 14
      Caption = 'Ativo'
    end
    object Label6: TLabel
      Left = 48
      Top = 220
      Width = 108
      Height = 14
      Caption = 'Data do Cadastro'
      FocusControl = dbeDataCadastro
    end
    object Label7: TLabel
      Left = 253
      Top = 220
      Width = 77
      Height = 14
      Caption = 'Data Inativo'
      FocusControl = dbeDataInativo
    end
    object dbeID: TDBEdit
      Left = 48
      Top = 68
      Width = 89
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_id'
      DataSource = ds
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 48
      Top = 120
      Width = 366
      Height = 22
      CharCase = ecUpperCase
      DataField = 'f_nome'
      DataSource = ds
      TabOrder = 2
    end
    object dbeUsuario: TDBEdit
      Left = 48
      Top = 176
      Width = 161
      Height = 22
      CharCase = ecUpperCase
      DataField = 'f_usuario'
      DataSource = ds
      TabOrder = 3
    end
    object dbeSenha: TDBEdit
      Left = 253
      Top = 180
      Width = 161
      Height = 22
      DataField = 'f_senha'
      DataSource = ds
      PasswordChar = '*'
      TabOrder = 4
    end
    object dbeDataCadastro: TDBEdit
      Left = 48
      Top = 240
      Width = 161
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_data_cadastro'
      DataSource = ds
      MaxLength = 10
      ReadOnly = True
      TabOrder = 5
    end
    object dbeDataInativo: TDBEdit
      Left = 253
      Top = 240
      Width = 161
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'f_data_inativo'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      MaxLength = 10
      ParentFont = False
      ReadOnly = True
      TabOrder = 6
    end
    object dbcAtivo: TDBComboBox
      Left = 253
      Top = 68
      Width = 44
      Height = 22
      CharCase = ecUpperCase
      DataField = 'f_ativo'
      DataSource = ds
      Items.Strings = (
        'S'
        'N')
      TabOrder = 1
    end
  end
  inherited pnlControle: TPanel
    Top = 284
    Width = 487
    ExplicitTop = 284
    ExplicitWidth = 487
    inherited btnSalvar: TBitBtn
      Left = 190
      ExplicitLeft = 190
    end
    inherited btnFechar: TBitBtn
      Left = 391
      ExplicitLeft = 391
    end
    inherited btnCancelar: TBitBtn
      Left = 293
      ExplicitLeft = 293
    end
  end
  inherited ds: TDataSource
    DataSet = DM.tbFuncionario
    Left = 368
    Top = 56
  end
end
