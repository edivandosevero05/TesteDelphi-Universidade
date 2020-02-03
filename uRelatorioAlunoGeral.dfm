object frmRelatorioAlunoGeral: TfrmRelatorioAlunoGeral
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Alunos'
  ClientHeight = 398
  ClientWidth = 705
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object rpListagemAluno: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rpListagemAlunoBeforePrint
    object rlbHeader: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object rllTitulo: TRLLabel
        Left = 241
        Top = 19
        Width = 236
        Height = 29
        Align = faCenter
        Caption = 'Listagem de Alunos'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object rlbBtHeader: TRLBand
      Left = 38
      Top = 105
      Width = 718
      Height = 20
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rllAluno: TRLLabel
        Left = 16
        Top = 6
        Width = 31
        Height = 14
        Caption = 'Aluno'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllDisciplina: TRLLabel
        Left = 74
        Top = 5
        Width = 48
        Height = 14
        Caption = 'Disciplina'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllProfessor: TRLLabel
        Left = 152
        Top = 5
        Width = 51
        Height = 14
        Caption = 'Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllNota1: TRLLabel
        Left = 232
        Top = 5
        Width = 34
        Height = 14
        Caption = 'Nota 1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllNota2: TRLLabel
        Left = 288
        Top = 6
        Width = 34
        Height = 14
        Caption = 'Nota 2'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllNotaTrabalho: TRLLabel
        Left = 360
        Top = 6
        Width = 70
        Height = 14
        Caption = 'Nota Trabalho'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllMedia: TRLLabel
        Left = 472
        Top = 6
        Width = 31
        Height = 14
        Caption = 'M'#233'dia'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
      object rllSituacao: TRLLabel
        Left = 568
        Top = 6
        Width = 45
        Height = 14
        Caption = 'Situa'#231#227'o'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
      end
    end
    object rbBtDetalhes: TRLBand
      Left = 38
      Top = 125
      Width = 718
      Height = 23
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = False
      object rbtAluno: TRLDBText
        Left = 16
        Top = 6
        Width = 39
        Height = 14
        DataField = 'ALUNO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtNota2: TRLDBText
        Left = 288
        Top = 6
        Width = 94
        Height = 14
        DataField = 'NOTA_PERIODO_2'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtNota1: TRLDBText
        Left = 232
        Top = 6
        Width = 94
        Height = 14
        DataField = 'NOTA_PERIODO_1'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtNotaTrabalho: TRLDBText
        Left = 360
        Top = 6
        Width = 87
        Height = 14
        DataField = 'NOTA_TRABLHO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtMedia: TRLDBText
        Left = 469
        Top = 6
        Width = 34
        Height = 14
        DataField = 'MEDIA'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtSituacao: TRLDBText
        Left = 568
        Top = 6
        Width = 56
        Height = 14
        DataField = 'SITUACAO'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtDisciplina: TRLDBText
        Left = 74
        Top = 6
        Width = 57
        Height = 14
        DataField = 'DISCIPLINA'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
      object rbtProfessor: TRLDBText
        Left = 152
        Top = 6
        Width = 65
        Height = 14
        DataField = 'PROFESSOR'
        DataSource = dsDados
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Arial'
        Font.Style = []
        ParentFont = False
        Text = ''
      end
    end
  end
  object qrProfessor: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PROFESSORES;')
    Left = 277
    Top = 272
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
  object qrDisciplina: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM DISCIPLINAS;')
    Left = 341
    Top = 272
    object qrDisciplinaID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrDisciplinaDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      Origin = 'DISCIPLINA'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
  end
  object qrAlunos: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM ALUNOS;')
    Left = 397
    Top = 272
    object qrAlunosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrAlunosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qrAlunosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
  end
  object qrDados: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM NOTAS;')
    Left = 517
    Top = 264
    object qrDadosID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrDadosDISCIPLINA_ID: TIntegerField
      FieldName = 'DISCIPLINA_ID'
      Origin = 'DISCIPLINA_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosALUNO_ID: TIntegerField
      FieldName = 'ALUNO_ID'
      Origin = 'ALUNO_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosPROFESSOR_ID: TIntegerField
      FieldName = 'PROFESSOR_ID'
      Origin = 'PROFESSOR_ID'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
    end
    object qrDadosNOTA_PERIODO_1: TSingleField
      FieldName = 'NOTA_PERIODO_1'
      Origin = 'NOTA_PERIODO_1'
    end
    object qrDadosNOTA_PERIODO_2: TSingleField
      FieldName = 'NOTA_PERIODO_2'
      Origin = 'NOTA_PERIODO_2'
    end
    object qrDadosNOTA_TRABLHO: TSingleField
      FieldName = 'NOTA_TRABLHO'
      Origin = 'NOTA_TRABLHO'
    end
    object qrDadosMEDIA: TSingleField
      FieldName = 'MEDIA'
      Origin = 'MEDIA'
    end
    object qrDadosSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'SITUACAO'
      Size = 100
    end
    object qrDadosALUNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ALUNO'
      LookupDataSet = qrAlunos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ALUNO_ID'
      Lookup = True
    end
    object qrDadosDISCIPLINA: TStringField
      FieldKind = fkLookup
      FieldName = 'DISCIPLINA'
      LookupDataSet = qrDisciplina
      LookupKeyFields = 'ID'
      LookupResultField = 'DISCIPLINA'
      KeyFields = 'DISCIPLINA_ID'
      Lookup = True
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
  object dsDados: TDataSource
    DataSet = qrDados
    Left = 517
    Top = 320
  end
  object dsAlunos: TDataSource
    DataSet = qrAlunos
    Left = 397
    Top = 328
  end
  object dsDisciplina: TDataSource
    DataSet = qrDisciplina
    Left = 341
    Top = 328
  end
  object dsProfessor: TDataSource
    DataSet = qrProfessor
    Left = 277
    Top = 328
  end
end
