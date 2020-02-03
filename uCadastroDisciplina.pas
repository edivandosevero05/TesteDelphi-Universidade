unit uCadastroDisciplina;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client, Vcl.Grids, Vcl.DBGrids,
  Vcl.ExtCtrls, Vcl.ComCtrls;

type
  TfrmCadastroDsiciplina = class(TfrmCadBase)
    qrDadosDISCIPLINA: TStringField;
    Label1: TLabel;
    dbeDisciplina: TDBEdit;
    qrDadosID: TFDAutoIncField;
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
  frmCadastroDsiciplina: TfrmCadastroDsiciplina;

implementation

{$R *.dfm}

{ TfrmDsiciplina }

procedure TfrmCadastroDsiciplina.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  qrDados.Close;
  frmCadastroDsiciplina := nil;
  inherited;
end;

procedure TfrmCadastroDsiciplina.FormShow(Sender: TObject);
begin
  inherited;
  qrDados.Open;
end;

function TfrmCadastroDsiciplina.ValidarObrigatorios: boolean;
begin
  if trim(dbeDisciplina.Text) = '' then
  begin
    ShowMessage('Informe a disciplina.');
    dbeDisciplina.SetFocus;
    Exit(false)
  end;

  Result := inherited ValidarObrigatorios;
end;

end.
