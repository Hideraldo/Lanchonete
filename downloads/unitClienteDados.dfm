inherited frmClienteDados: TfrmClienteDados
  Caption = 'Dados do Cliente'
  ClientHeight = 381
  ClientWidth = 752
  ExplicitWidth = 768
  ExplicitHeight = 420
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbdDados: TGroupBox
    Width = 752
    Height = 300
    ExplicitWidth = 752
    ExplicitHeight = 300
    object Label1: TLabel
      Left = 32
      Top = 48
      Width = 14
      Height = 14
      Caption = 'ID'
      FocusControl = dbeID
    end
    object Label2: TLabel
      Left = 32
      Top = 92
      Width = 34
      Height = 14
      Caption = 'Nome'
      FocusControl = dbeNome
    end
    object Label3: TLabel
      Left = 400
      Top = 48
      Width = 30
      Height = 14
      Caption = 'Sexo'
    end
    object Label4: TLabel
      Left = 32
      Top = 180
      Width = 31
      Height = 14
      Caption = 'Email'
      FocusControl = dbeEmail
    end
    object Label5: TLabel
      Left = 400
      Top = 180
      Width = 38
      Height = 14
      Caption = 'Senha'
      FocusControl = dbeSenha
    end
    object Label6: TLabel
      Left = 32
      Top = 136
      Width = 35
      Height = 14
      Caption = 'Curso'
      FocusControl = dbeCurso
    end
    object Label7: TLabel
      Left = 400
      Top = 136
      Width = 37
      Height = 14
      Caption = 'Escola'
      FocusControl = dbeEscola
    end
    object Label8: TLabel
      Left = 264
      Top = 48
      Width = 33
      Height = 14
      Caption = 'Ativo'
    end
    object Label9: TLabel
      Left = 32
      Top = 224
      Width = 108
      Height = 14
      Caption = 'Data do Cadastro'
      FocusControl = dbeDataCadastro
    end
    object Label10: TLabel
      Left = 400
      Top = 224
      Width = 77
      Height = 14
      Caption = 'Data Inativo'
      FocusControl = dbeDataInativo
    end
    object dbeID: TDBEdit
      Left = 32
      Top = 64
      Width = 65
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'c_id'
      DataSource = ds
      ReadOnly = True
      TabOrder = 0
    end
    object dbeNome: TDBEdit
      Left = 32
      Top = 108
      Width = 337
      Height = 22
      CharCase = ecUpperCase
      DataField = 'c_nome'
      DataSource = ds
      TabOrder = 3
    end
    object dbeEmail: TDBEdit
      Left = 32
      Top = 196
      Width = 337
      Height = 22
      CharCase = ecLowerCase
      DataField = 'c_email'
      DataSource = ds
      TabOrder = 6
    end
    object dbeSenha: TDBEdit
      Left = 400
      Top = 196
      Width = 145
      Height = 22
      DataField = 'c_senha'
      DataSource = ds
      PasswordChar = '*'
      TabOrder = 7
    end
    object dbeCurso: TDBEdit
      Left = 32
      Top = 152
      Width = 337
      Height = 22
      CharCase = ecUpperCase
      DataField = 'c_curso'
      DataSource = ds
      TabOrder = 4
    end
    object dbeEscola: TDBEdit
      Left = 400
      Top = 152
      Width = 320
      Height = 22
      CharCase = ecUpperCase
      DataField = 'c_escola'
      DataSource = ds
      TabOrder = 5
    end
    object dbeDataCadastro: TDBEdit
      Left = 32
      Top = 240
      Width = 170
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'c_data_cadastro'
      DataSource = ds
      ReadOnly = True
      TabOrder = 8
    end
    object dbeDataInativo: TDBEdit
      Left = 400
      Top = 240
      Width = 170
      Height = 22
      TabStop = False
      CharCase = ecUpperCase
      DataField = 'c_data_inativo'
      DataSource = ds
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ReadOnly = True
      TabOrder = 9
    end
    object dbcAtivo: TDBComboBox
      Left = 264
      Top = 68
      Width = 37
      Height = 22
      CharCase = ecUpperCase
      DataField = 'c_ativo'
      DataSource = ds
      Items.Strings = (
        'S'
        'N')
      TabOrder = 1
    end
    object dbcSexo: TDBComboBox
      Left = 400
      Top = 68
      Width = 37
      Height = 22
      CharCase = ecUpperCase
      DataField = 'c_sexo'
      DataSource = ds
      Items.Strings = (
        'M'
        'F')
      TabOrder = 2
    end
  end
  inherited pnlControle: TPanel
    Top = 300
    Width = 752
    ExplicitTop = 300
    ExplicitWidth = 752
    inherited btnSalvar: TBitBtn
      Left = 455
      ExplicitLeft = 455
    end
    inherited btnFechar: TBitBtn
      Left = 656
      ExplicitLeft = 656
    end
    inherited btnCancelar: TBitBtn
      Left = 558
      ExplicitLeft = 558
    end
  end
  inherited ds: TDataSource
    DataSet = DM.tbCliente
    Left = 624
    Top = 72
  end
end
