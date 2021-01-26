object DM: TDM
  OldCreateOrder = False
  Height = 356
  Width = 726
  object FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink
    VendorLib = 'C:\mysqlwin32\lib\libmysql.dll'
    Left = 64
    Top = 40
  end
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 192
    Top = 40
  end
  object Conexao: TFDConnection
    Params.Strings = (
      'Database=cantina'
      'User_Name=hideraldo'
      'Password=senha'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 296
    Top = 40
  end
  object tbCliente: TFDTable
    IndexFieldNames = 'c_id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'cantina.c_cliente'
    TableName = 'cantina.c_cliente'
    Left = 48
    Top = 120
    object tbClientec_id: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'c_id'
      Origin = 'c_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbClientec_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'c_nome'
      Origin = 'c_nome'
      Required = True
      Size = 80
    end
    object tbClientec_sexo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Sexo'
      FieldName = 'c_sexo'
      Origin = 'c_sexo'
      FixedChar = True
      Size = 1
    end
    object tbClientec_email: TStringField
      DisplayLabel = 'Email'
      FieldName = 'c_email'
      Origin = 'c_email'
      Required = True
      Size = 80
    end
    object tbClientec_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'c_senha'
      Origin = 'c_senha'
      Required = True
      Size = 80
    end
    object tbClientec_curso: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Curso'
      FieldName = 'c_curso'
      Origin = 'c_curso'
      Size = 100
    end
    object tbClientec_escola: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Escola'
      FieldName = 'c_escola'
      Origin = 'c_escola'
      Size = 90
    end
    object tbClientec_ativo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'c_ativo'
      Origin = 'c_ativo'
      FixedChar = True
      Size = 1
    end
    object tbClientec_data_cadastro: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'c_data_cadastro'
      Origin = 'c_data_cadastro'
      EditMask = '##/##/####;1;_'
    end
    object tbClientec_data_inativo: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Inativo'
      FieldName = 'c_data_inativo'
      Origin = 'c_data_inativo'
      EditMask = '##/##/####;1;_'
    end
  end
  object tbFuncionario: TFDTable
    IndexFieldNames = 'f_id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'cantina.f_funcionario'
    TableName = 'cantina.f_funcionario'
    Left = 137
    Top = 120
    object tbFuncionariof_id: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'f_id'
      Origin = 'f_id'
      ProviderFlags = [pfInWhere, pfInKey]
      ReadOnly = True
    end
    object tbFuncionariof_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'f_nome'
      Origin = 'f_nome'
      Required = True
      Size = 80
    end
    object tbFuncionariof_usuario: TStringField
      DisplayLabel = 'Usu'#225'rio'
      FieldName = 'f_usuario'
      Origin = 'f_usuario'
      Required = True
      Size = 10
    end
    object tbFuncionariof_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'f_senha'
      Origin = 'f_senha'
      Required = True
      Size = 80
    end
    object tbFuncionariof_ativo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'f_ativo'
      Origin = 'f_ativo'
      FixedChar = True
      Size = 1
    end
    object tbFuncionariof_data_cadastro: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'f_data_cadastro'
      Origin = 'f_data_cadastro'
      EditMask = '##/##/####;1;_'
    end
    object tbFuncionariof_data_inativo: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Inativo'
      FieldName = 'f_data_inativo'
      Origin = 'f_data_inativo'
      EditMask = '##/##/####;1;_'
    end
  end
  object tbProduto: TFDTable
    IndexFieldNames = 'p_id'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'cantina.p_produto'
    TableName = 'cantina.p_produto'
    Left = 227
    Top = 120
    object tbProdutop_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'p_id'
      Origin = 'p_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbProdutop_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'p_nome'
      Origin = 'p_nome'
      Required = True
      Size = 80
    end
    object tbProdutop_foto: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'p_foto'
      Origin = 'p_foto'
    end
    object tbProdutop_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'p_preco'
      Origin = 'p_preco'
      Required = True
      currency = True
    end
    object tbProdutop_custo: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Custo'
      FieldName = 'p_custo'
      Origin = 'p_custo'
      currency = True
    end
    object tbProdutop_quantidade: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Qtd'
      FieldName = 'p_quantidade'
      Origin = 'p_quantidade'
    end
    object tbProdutop_qtd_alerta: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Alerta de Reposi'#231#227'o'
      FieldName = 'p_qtd_alerta'
      Origin = 'p_qtd_alerta'
    end
    object tbProdutop_ativo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'p_ativo'
      Origin = 'p_ativo'
      FixedChar = True
      Size = 1
    end
    object tbProdutop_data_cadastro: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'p_data_cadastro'
      Origin = 'p_data_cadastro'
      EditMask = '##/##/####;1;_'
    end
    object tbProdutop_data_inativo: TDateTimeField
      Alignment = taCenter
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Inativo'
      FieldName = 'p_data_inativo'
      Origin = 'p_data_inativo'
      EditMask = '##/##/####;1;_'
    end
  end
  object tbConta: TFDTable
    IndexFieldNames = 'co_cliente'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'cantina.co_conta'
    TableName = 'cantina.co_conta'
    Left = 316
    Top = 120
    object tbContaco_cliente: TLongWordField
      FieldName = 'co_cliente'
      Origin = 'co_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object tbContaco_saldo: TFloatField
      AutoGenerateValue = arDefault
      FieldName = 'co_saldo'
      Origin = 'co_saldo'
    end
    object tbContaco_data_criado: TDateTimeField
      FieldName = 'co_data_criado'
      Origin = 'co_data_criado'
      Required = True
    end
    object tbContaco_data_inativo: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'co_data_inativo'
      Origin = 'co_data_inativo'
    end
    object tbContaco_data_u_compra: TDateTimeField
      AutoGenerateValue = arDefault
      FieldName = 'co_data_u_compra'
      Origin = 'co_data_u_compra'
    end
    object tbContaco_ativo: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'co_ativo'
      Origin = 'co_ativo'
      FixedChar = True
      Size = 1
    end
  end
  object tbVenda: TFDTable
    IndexFieldNames = 'v_id;v_cliente'
    Connection = Conexao
    UpdateOptions.UpdateTableName = 'cantina.v_venda'
    TableName = 'cantina.v_venda'
    Left = 470
    Top = 120
    object tbVendav_id: TLargeintField
      AutoGenerateValue = arAutoInc
      DisplayLabel = 'ID'
      FieldName = 'v_id'
      Origin = 'v_id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object tbVendav_cliente: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IDcliente'
      FieldName = 'v_cliente'
      Origin = 'v_cliente'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
    end
    object tbVendav_caixa: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'IDcaixa'
      FieldName = 'v_caixa'
      Origin = 'v_caixa'
    end
    object tbVendav_atendente: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Atendente'
      FieldName = 'v_atendente'
      Origin = 'v_atendente'
    end
    object tbVendav_status: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Status'
      FieldName = 'v_status'
      Origin = 'v_status'
      FixedChar = True
      Size = 9
    end
    object tbVendav_total: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Total'
      FieldName = 'v_total'
      Origin = 'v_total'
      currency = True
    end
    object tbVendav_forma_pagamento: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'v_forma_pagamento'
      Origin = 'v_forma_pagamento'
      FixedChar = True
      Size = 8
    end
    object tbVendav_origem: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Origem'
      FieldName = 'v_origem'
      Origin = 'v_origem'
      FixedChar = True
      Size = 8
    end
    object tbVendav_data_consumo: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Consumo'
      FieldName = 'v_data_consumo'
      Origin = 'v_data_consumo'
      EditMask = '##/##/####;1;_'
    end
    object tbVendav_data: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data'
      FieldName = 'v_data'
      Origin = 'v_data'
      EditMask = '##/##/####;1;_'
    end
    object tbVendav_data_devolucao: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data de Devolu'#231#227'o'
      FieldName = 'v_data_devolucao'
      Origin = 'v_data_devolucao'
      EditMask = '##/##/####;1;_'
    end
  end
  object qryCliente: TFDQuery
    Connection = Conexao
    UpdateObject = updCliente
    SQL.Strings = (
      'SELECT'
      '   c.c_id,'
      '   c.c_nome,'
      '   c.c_sexo,'
      '   c.c_email,'
      '   c.c_senha,'
      '   c.c_curso,'
      '   c.c_escola,'
      '   c.c_ativo,'
      '   c.c_data_cadastro,'
      '   c.c_data_inativo,'
      '   co.co_cliente,'
      '   co.co_saldo'
      'FROM'
      '   c_cliente c, co_conta co'
      'WHERE'
      '   co.co_cliente = c.c_id'
      'AND'
      '   c.c_ativo = '#39'S'#39
      '  ')
    Left = 48
    Top = 200
    object qryClientec_id: TFDAutoIncField
      DisplayLabel = 'ID'
      FieldName = 'c_id'
      ReadOnly = True
    end
    object qryClientec_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'c_nome'
      Required = True
      Size = 80
    end
    object qryClientec_sexo: TStringField
      DisplayLabel = 'Sexo'
      FieldName = 'c_sexo'
      FixedChar = True
      Size = 1
    end
    object qryClientec_email: TStringField
      DisplayLabel = 'E-mail'
      FieldName = 'c_email'
      Required = True
      Size = 80
    end
    object qryClientec_senha: TStringField
      DisplayLabel = 'Senha'
      FieldName = 'c_senha'
      Required = True
      Size = 80
    end
    object qryClientec_curso: TStringField
      DisplayLabel = 'Curso'
      FieldName = 'c_curso'
      Size = 100
    end
    object qryClientec_escola: TStringField
      DisplayLabel = 'Escola'
      FieldName = 'c_escola'
      Size = 90
    end
    object qryClientec_ativo: TStringField
      DisplayLabel = 'Ativo'
      FieldName = 'c_ativo'
      FixedChar = True
      Size = 1
    end
    object qryClientec_data_cadastro: TDateTimeField
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'c_data_cadastro'
    end
    object qryClientec_data_inativo: TDateTimeField
      DisplayLabel = 'Data Inativo'
      FieldName = 'c_data_inativo'
    end
    object qryClienteco_saldo: TFloatField
      DisplayLabel = 'Saldo da Conta'
      FieldName = 'co_saldo'
      currency = True
    end
  end
  object updCliente: TFDUpdateSQL
    Connection = Conexao
    ModifySQL.Strings = (
      'UPDATE cantina.co_conta'
      'SET co_saldo = :new_co_saldo'
      'WHERE co_cliente = :old_co_cliente')
    FetchRowSQL.Strings = (
      
        'SELECT co_cliente, co_saldo, co_data_criado, co_data_inativo, co' +
        '_data_u_compra, '
      '  co_ativo'
      'FROM cantina.co_conta'
      'WHERE co_cliente = :old_co_cliente')
    Left = 48
    Top = 256
  end
  object qryVendaItem: TFDQuery
    IndexFieldNames = 'vi_venda'
    MasterSource = dsVenda
    MasterFields = 'v_id'
    Connection = Conexao
    UpdateObject = updVendaItem
    SQL.Strings = (
      'SELECT'
      '   vi.*,'
      '   p.p_nome,'
      '   p.p_preco,'
      '   p.p_quantidade'
      'FROM'
      '   vi_venda_item vi,'
      '   p_produto p'
      'WHERE'
      '   vi.vi_produto = p.p_id')
    Left = 536
    Top = 120
    object qryVendaItemvi_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'vi_id'
    end
    object qryVendaItemvi_produto: TLargeintField
      DisplayLabel = 'IDProduto'
      FieldName = 'vi_produto'
      Required = True
    end
    object qryVendaItemvi_cliente: TLongWordField
      DisplayLabel = 'IDCliente'
      FieldName = 'vi_cliente'
      Required = True
    end
    object qryVendaItemvi_venda: TLargeintField
      DisplayLabel = 'IDVenda'
      FieldName = 'vi_venda'
      Required = True
    end
    object qryVendaItemvi_valor: TFloatField
      DisplayLabel = 'Valor'
      FieldName = 'vi_valor'
      Required = True
      currency = True
    end
    object qryVendaItemvi_quantidade: TLongWordField
      DisplayLabel = 'Qtd'
      FieldName = 'vi_quantidade'
      Required = True
    end
    object qryVendaItemvi_total: TFloatField
      DisplayLabel = 'Total'
      FieldName = 'vi_total'
      currency = True
    end
    object qryVendaItemvi_status: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      FieldName = 'vi_status'
      FixedChar = True
      Size = 9
    end
    object qryVendaItemvi_prod_trocado: TLongWordField
      DisplayLabel = 'Trocado'
      FieldName = 'vi_prod_trocado'
    end
    object qryVendaItemp_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'p_nome'
      ReadOnly = True
      Size = 80
    end
    object qryVendaItemp_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'p_preco'
      ReadOnly = True
      currency = True
    end
    object qryVendaItemp_quantidade: TLongWordField
      DisplayLabel = 'Estoque'
      FieldName = 'p_quantidade'
      ReadOnly = True
    end
  end
  object updVendaItem: TFDUpdateSQL
    Connection = Conexao
    InsertSQL.Strings = (
      'INSERT INTO cantina.vi_venda_item'
      '(vi_produto, vi_cliente, vi_venda, vi_valor, '
      '  vi_quantidade, vi_total, vi_status, vi_prod_trocado)'
      
        'VALUES (:new_vi_produto, :new_vi_cliente, :new_vi_venda, :new_vi' +
        '_valor, '
      
        '  :new_vi_quantidade, :new_vi_total, :new_vi_status, :new_vi_pro' +
        'd_trocado)')
    ModifySQL.Strings = (
      'UPDATE cantina.vi_venda_item'
      'SET vi_produto = :new_vi_produto, vi_cliente = :new_vi_cliente, '
      
        '  vi_venda = :new_vi_venda, vi_valor = :new_vi_valor, vi_quantid' +
        'ade = :new_vi_quantidade, '
      
        '  vi_total = :new_vi_total, vi_status = :new_vi_status, vi_prod_' +
        'trocado = :new_vi_prod_trocado'
      
        'WHERE vi_id = :old_vi_id AND vi_produto = :old_vi_produto AND vi' +
        '_cliente = :old_vi_cliente AND '
      '  vi_venda = :old_vi_venda')
    DeleteSQL.Strings = (
      'DELETE FROM cantina.vi_venda_item'
      
        'WHERE vi_id = :old_vi_id AND vi_produto = :old_vi_produto AND vi' +
        '_cliente = :old_vi_cliente AND '
      '  vi_venda = :old_vi_venda')
    FetchRowSQL.Strings = (
      
        'SELECT vi_id, vi_produto, vi_cliente, vi_venda, vi_valor, vi_qua' +
        'ntidade, '
      '  vi_total, vi_status, vi_prod_trocado'
      'FROM cantina.vi_venda_item'
      
        'WHERE vi_id = :old_vi_id AND vi_produto = :old_vi_produto AND vi' +
        '_cliente = :old_vi_cliente AND '
      '  vi_venda = :old_vi_venda')
    Left = 616
    Top = 120
  end
  object rqryProduto: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      'SELECT * FROM p_produto WHERE p_ativo = '#39'S'#39)
    Left = 464
    Top = 184
    object rqryProdutop_id: TLargeintField
      DisplayLabel = 'ID'
      FieldName = 'p_id'
      Origin = 'p_id'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object rqryProdutop_nome: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'p_nome'
      Origin = 'p_nome'
      Required = True
      Size = 80
    end
    object rqryProdutop_foto: TBlobField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Foto'
      FieldName = 'p_foto'
      Origin = 'p_foto'
    end
    object rqryProdutop_preco: TFloatField
      DisplayLabel = 'Pre'#231'o'
      FieldName = 'p_preco'
      Origin = 'p_preco'
      Required = True
      currency = True
    end
    object rqryProdutop_custo: TFloatField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Custo'
      FieldName = 'p_custo'
      Origin = 'p_custo'
      currency = True
    end
    object rqryProdutop_quantidade: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Qtd'
      FieldName = 'p_quantidade'
      Origin = 'p_quantidade'
    end
    object rqryProdutop_qtd_alerta: TLongWordField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Alerta'
      FieldName = 'p_qtd_alerta'
      Origin = 'p_qtd_alerta'
    end
    object rqryProdutop_ativo: TStringField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Ativo'
      FieldName = 'p_ativo'
      Origin = 'p_ativo'
      FixedChar = True
      Size = 1
    end
    object rqryProdutop_data_cadastro: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data do Cadastro'
      FieldName = 'p_data_cadastro'
      Origin = 'p_data_cadastro'
    end
    object rqryProdutop_data_inativo: TDateTimeField
      AutoGenerateValue = arDefault
      DisplayLabel = 'Data Inativo'
      FieldName = 'p_data_inativo'
      Origin = 'p_data_inativo'
    end
  end
  object dsVenda: TDataSource
    DataSet = tbVenda
    Left = 472
    Top = 56
  end
  object rqryCalculaTotal: TFDQuery
    Connection = Conexao
    SQL.Strings = (
      ' SELECT'
      '    SUM(vi_total) as total'
      ' FROM '
      '    vi_venda_item'
      'WHERE'
      '     vi_venda=:idvenda')
    Left = 584
    Top = 184
    ParamData = <
      item
        Name = 'IDVENDA'
        DataType = ftLargeint
        Value = 0
      end>
  end
end
