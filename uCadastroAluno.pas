unit uCadastroAluno;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.Mask,
  Vcl.DBCtrls;

type
  TfrmCadastroAluno = class(TfrmCadBase)
    qrDadosNOME: TStringField;
    qrDadosCPF: TStringField;
    qrDadosID: TFDAutoIncField;
    Label1: TLabel;
    Label2: TLabel;
    dbeCPF: TDBEdit;
    dbeNome: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadastroAluno: TfrmCadastroAluno;

implementation

{$R *.dfm}

procedure TfrmCadastroAluno.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrDados.Close;
  frmCadastroAluno := nil;
  inherited;
end;

procedure TfrmCadastroAluno.FormShow(Sender: TObject);
begin
  inherited;
  qrDados.Open;
end;

function TfrmCadastroAluno.ValidarObrigatorios: boolean;
begin
  if Trim(dbeNome.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    dbeNome.SetFocus;
    Exit(false)
  end;
  if trim(dbeCPF.Text) = '' then
  begin
    ShowMessage('Informe o CPF.');
    dbeCPF.SetFocus;
    Exit(false)
  end;
  Result := inherited ValidarObrigatorios;
end;

end.
