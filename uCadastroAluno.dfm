inherited frmCadastroAluno: TfrmCadastroAluno
  Caption = 'Cadastro de Alunos'
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
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 411
      object Label1: TLabel [0]
        Left = 3
        Top = 16
        Width = 33
        Height = 16
        Caption = 'Nome'
        FocusControl = dbeNome
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      object Label2: TLabel [1]
        Left = 3
        Top = 56
        Width = 19
        Height = 13
        Caption = 'CPF'
        FocusControl = dbeCPF
      end
      inherited pnEditsButtons: TPanel
        ExplicitLeft = 526
      end
      object dbeNome: TDBEdit
        Left = 3
        Top = 34
        Width = 394
        Height = 21
        DataField = 'NOME'
        DataSource = dsDados
        TabOrder = 1
      end
      object dbeCPF: TDBEdit
        Left = 3
        Top = 72
        Width = 186
        Height = 21
        DataField = 'CPF'
        DataSource = dsDados
        TabOrder = 2
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM ALUNOS;')
    object qrDadosNOME: TStringField
      DisplayLabel = 'Nome'
      DisplayWidth = 30
      FieldName = 'NOME'
      Origin = 'NOME'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      Size = 100
    end
    object qrDadosCPF: TStringField
      FieldName = 'CPF'
      Origin = 'CPF'
      ProviderFlags = [pfInUpdate, pfInWhere, pfInKey]
      Required = True
      EditMask = '999.999.999-99;0; '
      Size = 14
    end
    object qrDadosID: TFDAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
end
