unit uCadastroBase;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TfrmCadBase = class(TForm)
    pcPrincipal: TPageControl;
    tsGrid: TTabSheet;
    tsEdits: TTabSheet;
    pn: TPanel;
    btInserir: TButton;
    btEditar: TButton;
    btExcluir: TButton;
    pnEditsButtons: TPanel;
    btSalvar: TButton;
    btCancelar: TButton;
    grDados: TDBGrid;
    qrDados: TFDQuery;
    dsDados: TDataSource;
    procedure FormShow(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btSalvarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btEditarClick(Sender: TObject);
    procedure btExcluirClick(Sender: TObject);
    procedure btInserirClick(Sender: TObject);
  private
    { Private declarations }
    procedure EsconderAbas;
  protected
    function ValidarObrigatorios: boolean; virtual;
  public
    { Public declarations }
  end;

var
  frmCadBase: TfrmCadBase;

implementation

{$R *.dfm}

uses uSystemutils, udmPrincipal;

{ TfrmCadBase }

procedure TfrmCadBase.btCancelarClick(Sender: TObject);
begin
  qrDados.Cancel;
  pcPrincipal.ActivePage := tsGrid;
end;

procedure TfrmCadBase.btEditarClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsEdits;
  qrDados.Edit;
end;

procedure TfrmCadBase.btExcluirClick(Sender: TObject);
begin
  if MsgConfirm('Tem certeza ue deseja excluir o registro?') then
    qrDados.Delete;
end;

procedure TfrmCadBase.btInserirClick(Sender: TObject);
begin
  pcPrincipal.ActivePage := tsEdits;
  qrDados.Insert;
end;

procedure TfrmCadBase.btSalvarClick(Sender: TObject);
begin
  if ValidarObrigatorios then
  begin
    try
      qrDados.Post;
      qrDados.Refresh;
      pcPrincipal.ActivePage := tsGrid;
    except
      on E: Exception do
      begin
        if E.Message.Contains('PRIMARY') then
          MsgWarning('Registro duplicado')
        else
          MsgWarning('Ocorreu um erro: ' + E.Message);
      end;
    end;
  end;
end;

procedure TfrmCadBase.EsconderAbas;
var
  I: Integer;
begin
  for I := 0 to pcPrincipal.PageCount - 1 do
    pcPrincipal.Pages[I].TabVisible := False;

  pcPrincipal.ActivePage := tsGrid;
end;

procedure TfrmCadBase.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Action := caFree;
end;

procedure TfrmCadBase.FormShow(Sender: TObject);
begin
  EsconderAbas;
  qrDados.Open;
end;

function TfrmCadBase.ValidarObrigatorios: boolean;
begin
  Result := true;
end;

end.
