inherited frmCadBase1: TfrmCadBase1
  Caption = 'frmCadBase1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdits
    inherited tsGrid: TTabSheet
      inherited grDados: TDBGrid
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      end
    end
    inherited tsEdits: TTabSheet
      ExplicitLeft = 0
      ExplicitTop = 28
      object Label1: TLabel [0]
        Left = 24
        Top = 24
        Width = 57
        Height = 13
        Caption = 'DISCIPLINA'
      end
      object Label2: TLabel [1]
        Left = 24
        Top = 70
        Width = 60
        Height = 13
        Caption = 'PROFESSOR'
      end
      object lkDisciplina: TDBLookupComboBox
        Left = 24
        Top = 43
        Width = 145
        Height = 21
        DataField = 'DISCIPLINA'
        DataSource = dsDados
        KeyField = 'ID'
        ListField = 'DISCIPLINA'
        ListSource = dsDisciplina
        TabOrder = 1
      end
      object DBLookupComboBox1: TDBLookupComboBox
        Left = 24
        Top = 89
        Width = 145
        Height = 21
        DataField = 'DISCIPLINA'
        DataSource = dsDados
        KeyField = 'ID'
        ListField = 'DISCIPLINA'
        ListSource = dsDisciplina
        TabOrder = 2
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM DISCIPLINAS_PROFESSORES;')
    object qrDadosDISCIPLINA: TStringField
      FieldKind = fkLookup
      FieldName = 'DISCIPLINA'
      LookupDataSet = qrDisciplina
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
    object qrDadosPROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'PROFESSOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Visible = False
    end
    object qrDadosPROFESSOR: TStringField
      FieldKind = fkLookup
      FieldName = 'PROFESSOR'
      LookupDataSet = qrProfessor
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'PROFESSOR_ID'
      Lookup = True
    end
  end
  object qrDisciplina: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM DISCIPLINAS;')
    Left = 336
    Top = 216
  end
  object dsDisciplina: TDataSource
    DataSet = qrDisciplina
    Left = 336
    Top = 280
  end
  object qrProfessor: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PROFESSORES;')
    Left = 404
    Top = 216
    object qrProfessorID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrProfessorNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qrProfessorCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
  end
  object dsProfessor: TDataSource
    DataSet = qrProfessor
    Left = 404
    Top = 280
  end
end
