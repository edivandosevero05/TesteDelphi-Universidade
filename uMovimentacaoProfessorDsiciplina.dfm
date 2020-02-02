inherited frmCadBase1: TfrmCadBase1
  Caption = 'frmCadBase1'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pcPrincipal: TPageControl
    ActivePage = tsEdits
    inherited tsGrid: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 411
      inherited pn: TPanel
        ExplicitLeft = 526
        ExplicitTop = 0
      end
    end
    inherited tsEdits: TTabSheet
      ExplicitLeft = 4
      ExplicitTop = 24
      ExplicitWidth = 639
      ExplicitHeight = 411
      object Label1: TLabel [0]
        Left = 104
        Top = 64
        Width = 57
        Height = 13
        Caption = 'DISCIPLINA'
        FocusControl = DBEdit1
      end
      inherited pnEditsButtons: TPanel
        ExplicitLeft = 526
      end
      object DBEdit1: TDBEdit
        Left = 104
        Top = 80
        Width = 89
        Height = 21
        DataField = 'DISCIPLINA'
        DataSource = dsDados
        TabOrder = 1
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
      Size = 0
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
end
