object frmRelatorioAlunoProfessor: TfrmRelatorioAlunoProfessor
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio de Aluno x Professores'
  ClientHeight = 442
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object rpAlunoProfessor: TRLReport
    Left = 8
    Top = 0
    Width = 794
    Height = 1123
    DataSource = dsDados
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    object rlbHeader: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 67
      BandType = btHeader
      object rllTitulo: TRLLabel
        Left = 194
        Top = 19
        Width = 329
        Height = 29
        Align = faCenter
        Caption = 'Listagem Aluno X Professor'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLGroup1: TRLGroup
      Left = 38
      Top = 105
      Width = 718
      Height = 144
      DataFields = 'PROFESSORES'
      object rbbBtHeader: TRLBand
        Left = 0
        Top = 0
        Width = 718
        Height = 43
        BandType = btColumnHeader
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
        Color = clMenuBar
        ParentColor = False
        Transparent = False
        object rllProfessor: TRLLabel
          Left = 16
          Top = 3
          Width = 67
          Height = 16
          Caption = 'Professor: '
          Transparent = False
        end
        object rbtProfessor: TRLDBText
          Left = 96
          Top = 3
          Width = 104
          Height = 16
          DataField = 'PROFESSORES'
          DataSource = dsDados
          Text = ''
          Transparent = False
        end
        object rllAluno: TRLLabel
          Left = 16
          Top = 23
          Width = 48
          Height = 16
          Caption = 'Alunos:'
          Transparent = False
        end
      end
      object rlBtDetalhes: TRLBand
        Left = 0
        Top = 43
        Width = 718
        Height = 22
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        object rbtAluno: TRLDBText
          Left = 16
          Top = 6
          Width = 57
          Height = 16
          DataField = 'ALUNOS'
          DataSource = dsDados
          Text = ''
        end
      end
      object rlSumario: TRLBand
        Left = 0
        Top = 65
        Width = 718
        Height = 32
        BandType = btSummary
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = True
      end
    end
  end
  object qrDados: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM NOTAS;')
    Left = 624
    Top = 280
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
    object qrDadosALUNOS: TStringField
      FieldKind = fkLookup
      FieldName = 'ALUNOS'
      LookupDataSet = qrAlunos
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ALUNO_ID'
      Lookup = True
    end
    object qrDadosPROFESSORES: TStringField
      FieldKind = fkLookup
      FieldName = 'PROFESSORES'
      LookupDataSet = qrProfessores
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'PROFESSOR_ID'
      Lookup = True
    end
  end
  object dsDados: TDataSource
    DataSet = qrDados
    Left = 624
    Top = 336
  end
  object qrAlunos: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM ALUNOS;')
    Left = 504
    Top = 288
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
  object dsAlunos: TDataSource
    DataSet = qrAlunos
    Left = 504
    Top = 352
  end
  object qrProfessores: TFDQuery
    Active = True
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PROFESSORES;')
    Left = 400
    Top = 288
    object qrProfessoresID: TIntegerField
      FieldName = 'ID'
      Origin = 'ID'
      Required = True
    end
    object qrProfessoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qrProfessoresCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 14
    end
  end
  object dsProfessor: TDataSource
    DataSet = qrProfessores
    Left = 400
    Top = 352
  end
end
