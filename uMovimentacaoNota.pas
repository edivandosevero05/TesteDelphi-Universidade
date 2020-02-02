unit uMovimentacaoNota;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, uCadastroBase, Data.DB,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Param,
  FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf, FireDAC.DApt.Intf,
  FireDAC.Stan.Async, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Vcl.Mask;

type
  TfrmMovimentacaoNota = class(TfrmCadBase)
    qrAlunos: TFDQuery;
    dsAlunos: TDataSource;
    dsDisciplinas: TDataSource;
    qrDisciplinas: TFDQuery;
    dsProfessores: TDataSource;
    qrProfessores: TFDQuery;
    qrDadosDISCIPLINA_ID: TIntegerField;
    qrDadosALUNO_ID: TIntegerField;
    qrDadosPROFESSOR_ID: TIntegerField;
    qrDadosNOTA_PERIODO_1: TSingleField;
    qrDadosNOTA_PERIODO_2: TSingleField;
    qrDadosNOTA_TRABLHO: TSingleField;
    qrDadosMEDIA: TSingleField;
    qrDadosSITUACAO: TStringField;
    qrDadosALUNO: TStringField;
    qrDadosPROFESSOR: TStringField;
    qrDadosDISCIPLINA: TStringField;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    edPrimeiroPeriodo: TDBEdit;
    Label5: TLabel;
    edSegundoPeriodo: TDBEdit;
    Label6: TLabel;
    edTrabalho: TDBEdit;
    lkProfessor: TDBLookupComboBox;
    lkDisciplina: TDBLookupComboBox;
    lkAluno: TDBLookupComboBox;
    qrUpdate: TFDQuery;
    procedure btSalvarClick(Sender: TObject);
  private
    { Private declarations }
  protected
    function ValidarObrigatorios: boolean; override;
  public
    { Public declarations }
  end;

var
  frmMovimentacaoNota: TfrmMovimentacaoNota;

implementation

{$R *.dfm}

uses udmPrincipal, uSystemutils;

procedure TfrmMovimentacaoNota.btSalvarClick(Sender: TObject);
var
  nota1, nota2, nota3, media: Float32;
begin
  inherited;
  nota1 := StrToFloat(edPrimeiroPeriodo.Text);
  nota2 := StrToFloat(edSegundoPeriodo.Text);
  nota3 := StrToFloat(edTrabalho.Text);
  media := ( nota1 + nota2  + nota3) / 3;
  qrDados.Edit;
  qrDadosMEDIA.Value := media;
  if media >= 7 then
  begin
    qrDadosSITUACAO.Value := 'Aprovado'
  end
  else
  begin
    qrDadosSITUACAO.Value := 'Reprovado';
  end;

end;

function TfrmMovimentacaoNota.ValidarObrigatorios: boolean;
begin
  if trim(lkAluno.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    lkAluno.SetFocus;
    Exit(false)
  end;
  if trim(lkProfessor.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    lkProfessor.SetFocus;
    Exit(false)
  end;
  if trim(lkDisciplina.Text) = '' then
  begin
    ShowMessage('Informe o nome.');
    lkDisciplina.SetFocus;
    Exit(false)
  end;
    Result := inherited ValidarObrigatorios;
end;

end.
