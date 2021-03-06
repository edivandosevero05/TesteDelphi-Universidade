unit uCadastroProfessor;

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
  TfrmCadastroProfessores = class(TfrmCadBase)
    qrDadosNOME: TStringField;
    qrDadosCPF: TStringField;
    qrDadosID: TFDAutoIncField;
    Label1: TLabel;
    dbeNome: TDBEdit;
    Label2: TLabel;
    dbeCPF: TDBEdit;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: Boolean; override;
  public
    { Public declarations }
  end;

var
  frmCadastroProfessores: TfrmCadastroProfessores;

implementation

{$R *.dfm}

procedure TfrmCadastroProfessores.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrDados.Close;
  frmCadastroProfessores := nil;
  inherited;
end;

procedure TfrmCadastroProfessores.FormShow(Sender: TObject);
begin
  inherited;
  qrDados.Open;
end;

function TfrmCadastroProfessores.ValidarObrigatorios: Boolean;
begin
  if trim(dbeNome.Text) = '' then
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
