inherited frmFuncionarioLista: TfrmFuncionarioLista
  Caption = 'Lista de Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited dbgDados: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'f_id'
          Width = 39
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_ativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_nome'
          Width = 245
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_usuario'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_data_cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'f_data_inativo'
          Visible = True
        end>
    end
  end
  inherited pnControle: TPanel
    inherited btnEditar: TBitBtn
      OnClick = btnEditarClick
    end
  end
  inherited ds: TDataSource
    DataSet = DM.tbFuncionario
  end
end
