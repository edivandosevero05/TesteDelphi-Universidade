inherited frmCadastroDsiciplina: TfrmCadastroDsiciplina
  Caption = 'Cadastro de disciplinas'
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
        Left = 3
        Top = 37
        Width = 53
        Height = 16
        Caption = 'Disciplina'
        FocusControl = dbeDisciplina
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
      end
      inherited pnEditsButtons: TPanel
        ExplicitLeft = 526
      end
      object dbeDisciplina: TDBEdit
        Left = 3
        Top = 56
        Width = 400
        Height = 21
        DataField = 'DISCIPLINA'
        DataSource = dsDados
        TabOrder = 1
      end
    end
  end
  inherited qrDados: TFDQuery
    SQL.Strings = (
      'SELECT * FROM disciplinas')
    object qrDadosDISCIPLINA: TStringField
      FieldName = 'DISCIPLINA'
      Origin = 'DISCIPLINA'
      Required = True
      Size = 100
    end
    object qrDadosID: TFDAutoIncField
      FieldName = 'ID'
      ReadOnly = True
      Visible = False
    end
  end
end
