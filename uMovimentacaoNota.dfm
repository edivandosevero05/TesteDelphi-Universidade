inherited frmMovimentacaoNota: TfrmMovimentacaoNota
  Caption = 'Movimenta'#231#227'o Notas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdits
    inherited tsGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 411
    end
    inherited tsEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 411
      object Label1: TLabel [0]
        Left = 32
        Top = 16
        Width = 27
        Height = 13
        Caption = 'Aluno'
      end
      object Label2: TLabel [1]
        Left = 32
        Top = 56
        Width = 46
        Height = 13
        Caption = 'Professor'
      end
      object Label3: TLabel [2]
        Left = 32
        Top = 96
        Width = 43
        Height = 13
        Caption = 'Disciplina'
      end
      object Label4: TLabel [3]
        Left = 32
        Top = 136
        Width = 76
        Height = 13
        Caption = 'Nota 1'#186' Per'#237'odo'
        FocusControl = edPrimeiroPeriodo
      end
      object Label5: TLabel [4]
        Left = 32
        Top = 176
        Width = 76
        Height = 13
        Caption = 'Nota 2'#186' Per'#237'odo'
        FocusControl = edSegundoPeriodo
      end
      object Label6: TLabel [5]
        Left = 32
        Top = 216
        Width = 68
        Height = 13
        Caption = 'Nota Trabalho'
        FocusControl = edTrabalho
      end
      object edPrimeiroPeriodo: TDBEdit
        Left = 32
        Top = 151
        Width = 145
        Height = 21
        DataField = 'NOTA_PERIODO_1'
        DataSource = dsDados
        TabOrder = 1
      end
      object edSegundoPeriodo: TDBEdit
        Left = 32
        Top = 192
        Width = 145
        Height = 21
        DataField = 'NOTA_PERIODO_2'
        DataSource = dsDados
        TabOrder = 2
      end
      object edTrabalho: TDBEdit
        Left = 32
        Top = 232
        Width = 145
        Height = 21
        DataField = 'NOTA_TRABLHO'
        DataSource = dsDados
        TabOrder = 3
      end
      object lkAluno: TDBLookupComboBox
        Left = 32
        Top = 31
        Width = 145
        Height = 21
        DataField = 'ALUNO_ID'
        DataSource = dsDados
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsAlunos
        TabOrder = 4
      end
      object lkDisciplina: TDBLookupComboBox
        Left = 32
        Top = 109
        Width = 145
        Height = 21
        DataField = 'DISCIPLINA_ID'
        DataSource = dsDados
        KeyField = 'DISCIPLINA_ID'
        ListField = 'DISCIPLINA'
        ListSource = dsDisciplinaAuxiliar
        TabOrder = 5
        OnEnter = lkDisciplinaEnter
      end
      object lkProfessor: TDBLookupComboBox
        Left = 32
        Top = 69
        Width = 145
        Height = 21
        DataField = 'PROFESSOR_ID'
        DataSource = dsDados
        KeyField = 'ID'
        ListField = 'NOME'
        ListSource = dsProfessores
        TabOrder = 6
        OnExit = lkProfessorExit
      end
    end
  end
  inherited qrDados: TFDQuery
    BeforePost = qrDadosBeforePost
    SQL.Strings = (
      'SELECT * FROM NOTAS;')
    object qrDadosALUNO: TStringField
      DisplayLabel = 'Aluno'
      FieldKind = fkLookup
      FieldName = 'ALUNO'
      LookupDataSet = qrAlunos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ALUNO_ID'
      Lookup = True
    end
    object qrDadosPROFESSOR: TStringField
      DisplayLabel = 'Professor'
      FieldKind = fkLookup
      FieldName = 'PROFESSOR'
      LookupDataSet = qrProfessores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'PROFESSOR_ID'
      Lookup = True
    end
    object qrDadosDISCIPLINA: TStringField
      DisplayLabel = 'Disciplina'
      FieldKind = fkLookup
      FieldName = 'DISCIPLINA'
      LookupDataSet = qrDisciplinas
      LookupKeyFields = 'ID'
      LookupResultField = 'DISCIPLINA'
      KeyFields = 'DISCIPLINA_ID'
      Lookup = True
    end
    object qrDadosDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
      Origin = 'DISCIPLINA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosALUNO_ID: TIntegerField
      FieldName = 'ALUNO_ID'
      Origin = 'ALUNO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosPROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'PROFESSOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosNOTA_PERIODO_1: TSingleField
      DisplayLabel = '1'#186' Per'#237'odo'
      FieldName = 'NOTA_PERIODO_1'
      Origin = 'NOTA_PERIODO_1'
    end
    object qrDadosNOTA_PERIODO_2: TSingleField
      DisplayLabel = '2'#186' Per'#237'odo'
      FieldName = 'NOTA_PERIODO_2'
      Origin = 'NOTA_PERIODO_2'
    end
    object qrDadosNOTA_TRABLHO: TSingleField
      DisplayLabel = 'Trabalho'
      FieldName = 'NOTA_TRABLHO'
      Origin = 'NOTA_TRABLHO'
    end
    object qrDadosMEDIA: TSingleField
      DisplayLabel = 'M'#233'dia'
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
    object qrDadosSITUACAO: TStringField
      DisplayLabel = 'Situa'#231#227'o'
      DisplayWidth = 30
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 100
    end
  end
  object qrAlunos: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM ALUNOS;')
    Left = 324
    Top = 288
  end
  object dsAlunos: TDataSource
    DataSet = qrAlunos
    Left = 324
    Top = 344
  end
  object dsDisciplinas: TDataSource
    DataSet = qrDisciplinas
    Left = 396
    Top = 344
  end
  object qrDisciplinas: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM DISCIPLINAS;')
    Left = 396
    Top = 288
  end
  object dsProfessores: TDataSource
    DataSet = qrProfessores
    Left = 468
    Top = 344
  end
  object qrProfessores: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PROFESSORES;')
    Left = 468
    Top = 288
  end
  object dsDisciplinaAuxiliar: TDataSource
    DataSet = qrDisciplinaAuxiliar
    Left = 220
    Top = 352
  end
  object qrDisciplinaAuxiliar: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      
        'SELECT * FROM DISCIPLINAS_PROFESSORES WHERE PROFESSOR_ID = :PROF' +
        'ESSORID; ')
    Left = 220
    Top = 296
    ParamData = <
      item
        Name = 'PROFESSORID'
        DataType = ftInteger
        ParamType = ptInput
      end>
    object qrDisciplinaAuxiliarDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
      Origin = 'DISCIPLINA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDisciplinaAuxiliarPROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'PROFESSOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDisciplinaAuxiliardis123: TStringField
      FieldKind = fkLookup
      FieldName = 'DISCIPLINA'
      LookupDataSet = qrDisciplinas
      LookupKeyFields = 'ID'
      LookupResultField = 'DISCIPLINA'
      KeyFields = 'DISCIPLINA_ID'
      Lookup = True
    end
  end
end
