inherited frmProdutoLista: TfrmProdutoLista
  Caption = 'Lista de Produtos'
  PixelsPerInch = 96
  TextHeight = 13
  inherited gbDados: TGroupBox
    inherited dbgDados: TDBGrid
      Columns = <
        item
          Expanded = False
          FieldName = 'p_id'
          Width = 110
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_ativo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_nome'
          Width = 207
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_foto'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_preco'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_custo'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_quantidade'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_qtd_alerta'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_data_cadastro'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'p_data_inativo'
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
    DataSet = DM.tbProduto
  end
end
