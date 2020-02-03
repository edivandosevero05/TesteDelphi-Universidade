object frmRelatorioAlunosProfessores: TfrmRelatorioAlunosProfessores
  Left = 0
  Top = 0
  Caption = 'Relat'#243'rio Aluno/Professores'
  ClientHeight = 308
  ClientWidth = 758
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  WindowState = wsMaximized
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object rpAlunosProfessores: TRLReport
    Left = 0
    Top = 0
    Width = 794
    Height = 1123
    Borders.Sides = sdCustom
    Borders.DrawLeft = False
    Borders.DrawTop = False
    Borders.DrawRight = False
    Borders.DrawBottom = True
    Borders.FixedBottom = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -13
    Font.Name = 'Arial'
    Font.Style = []
    BeforePrint = rpAlunosProfessoresBeforePrint
    object RLBand1: TRLBand
      Left = 38
      Top = 38
      Width = 718
      Height = 51
      BandType = btHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object rlTitulo: TRLLabel
        Left = 176
        Top = 10
        Width = 365
        Height = 29
        Align = faCenter
        Borders.Sides = sdCustom
        Borders.DrawLeft = False
        Borders.DrawTop = False
        Borders.DrawRight = False
        Borders.DrawBottom = False
        Caption = 'Listagem Alunos x Professores'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -24
        Font.Name = 'Arial'
        Font.Style = [fsBold]
        ParentFont = False
      end
    end
    object RLBand2: TRLBand
      Left = 38
      Top = 89
      Width = 718
      Height = 32
      BandType = btColumnHeader
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      object RLLabel1: TRLLabel
        Left = 32
        Top = 16
        Width = 37
        Height = 16
        Caption = 'Aluno'
      end
      object RLLabel2: TRLLabel
        Left = 256
        Top = 16
        Width = 59
        Height = 16
        Caption = 'Professor'
      end
    end
    object RLBand3: TRLBand
      Left = 38
      Top = 121
      Width = 718
      Height = 88
      Borders.Sides = sdCustom
      Borders.DrawLeft = False
      Borders.DrawTop = False
      Borders.DrawRight = False
      Borders.DrawBottom = True
      Borders.FixedBottom = True
      object RLDBText1: TRLDBText
        Left = 32
        Top = 6
        Width = 48
        Height = 16
        DataField = 'ALUNO'
        DataSource = dsDados
        Text = ''
      end
      object RLDBText2: TRLDBText
        Left = 256
        Top = 6
        Width = 86
        Height = 16
        DataField = 'PROFESSOR'
        DataSource = dsDados
        Text = ''
      end
      object RLDBText3: TRLDBText
        Left = 464
        Top = 8
        Width = 16
        Height = 16
        DataField = 'ID'
        DataSource = dsDados
        Text = ''
      end
    end
  end
  object RLLabel3: TRLLabel
    Left = 40
    Top = 24
    Width = 37
    Height = 16
    Caption = 'Aluno'
  end
  object qrDados: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM NOTAS;')
    Left = 584
    Top = 168
    object qrDadosALUNO: TStringField
      FieldKind = fkLookup
      FieldName = 'ALUNO'
      LookupDataSet = qrAluno
      LookupKeyFields = 'ID'
      LookupResultField = 'NOME'
      KeyFields = 'ALUNO_ID'
      Lookup = True
    end
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
    Left = 584
    Top = 216
  end
  object qrProfessor: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM PROFESSORES;')
    Left = 512
    Top = 168
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
    Left = 512
    Top = 216
  end
  object qrAluno: TFDQuery
    Connection = dmPrincipal.fdConn
    SQL.Strings = (
      'SELECT * FROM ALUNOS;')
    Left = 448
    Top = 168
  end
  object dsAluno: TDataSource
    DataSet = qrAluno
    Left = 448
    Top = 216
  end
end
