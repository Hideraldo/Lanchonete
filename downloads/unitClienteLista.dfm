inherited frmClienteLista: TfrmClienteLista
  Caption = 'Lista de Clientes'
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited dbgDados: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'c_id'
          Width = 26
          Visible = True
        end
        item
          Alignment = taCenter
          Expanded = False
          FieldName = 'c_ativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_nome'
          Width = 176
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_sexo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_email'
          Width = 178
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_curso'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_escola'
          Width = 168
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_cadastro'
          Width = 109
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'c_data_inativo'
          Width = 98
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
    DataSet = DM.tbCliente
  end
end
