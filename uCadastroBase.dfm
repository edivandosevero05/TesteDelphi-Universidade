object frmCadBase: TfrmCadBase
  Left = 0
  Top = 0
  Caption = 'Cadastro Base'
  ClientHeight = 439
  ClientWidth = 647
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pcPrincipal: TPageControl
    Left = 0
    Top = 0
    Width = 647
    Height = 439
    ActivePage = tsGrid
    Align = alClient
    TabOrder = 0
    object tsGrid: TTabSheet
      Caption = 'tsGrids'
      object pn: TPanel
        Left = 526
        Top = 0
        Width = 113
        Height = 411
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object btInserir: TButton
          Left = 24
          Top = 32
          Width = 75
          Height = 25
          Caption = 'Inserir'
          TabOrder = 0
          OnClick = btInserirClick
        end
        object btEditar: TButton
          Left = 24
          Top = 63
          Width = 75
          Height = 25
          Caption = 'Editar'
          TabOrder = 1
          OnClick = btEditarClick
        end
        object btExcluir: TButton
          Left = 24
          Top = 94
          Width = 75
          Height = 25
          Caption = 'Excluir'
          TabOrder = 2
          OnClick = btExcluirClick
        end
      end
      object grDados: TDBGrid
        Left = 0
        Top = 0
        Width = 526
        Height = 411
        Align = alClient
        DataSource = dsDados
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
        TabOrder = 1
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -11
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
      end
    end
    object tsEdits: TTabSheet
      Caption = 'tsEdits'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object pnEditsButtons: TPanel
        Left = 526
        Top = 0
        Width = 113
        Height = 411
        Align = alRight
        ParentBackground = False
        TabOrder = 0
        object btSalvar: TButton
          Left = 24
          Top = 32
          Width = 75
          Height = 25
          Caption = 'Salvar'
          TabOrder = 0
          OnClick = btSalvarClick
        end
        object btCancelar: TButton
          Left = 24
          Top = 63
          Width = 75
          Height = 25
          Caption = 'Cancelar'
          TabOrder = 1
          OnClick = btCancelarClick
        end
      end
    end
  end
  object qrDados: TFDQuery
    Connection = dmPrincipal.fdConn
    Left = 546
    Top = 288
  end
  object dsDados: TDataSource
    DataSet = qrDados
    Left = 546
    Top = 344
  end
end
