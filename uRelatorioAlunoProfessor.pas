unit uRelatorioAlunoProfessor;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, RLReport, Data.DB,
  FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TfrmRelatorioAlunoProfessor = class(TForm)
    qrDados: TFDQuery;
    dsDados: TDataSource;
    rpAlunoProfessor: TRLReport;
    rlbHeader: TRLBand;
    rllTitulo: TRLLabel;
    rbbBtHeader: TRLBand;
    rllAluno: TRLLabel;
    rllProfessor: TRLLabel;
    rlBtDetalhes: TRLBand;
    rbtAluno: TRLDBText;
    qrAlunos: TFDQuery;
    dsAlunos: TDataSource;
    qrDadosID: TIntegerField;
    qrDadosDISCIPLINA_ID: TIntegerField;
    qrDadosALUNO_ID: TIntegerField;
    qrDadosPROFESSOR_ID: TIntegerField;
    qrDadosNOTA_PERIODO_1: TSingleField;
    qrDadosNOTA_PERIODO_2: TSingleField;
    qrDadosNOTA_TRABLHO: TSingleField;
    qrDadosMEDIA: TSingleField;
    qrDadosSITUACAO: TStringField;
    qrAlunosID: TIntegerField;
    qrAlunosNOME: TStringField;
    qrAlunosCPF: TStringField;
    qrDadosALUNOS: TStringField;
    qrProfessores: TFDQuery;
    dsProfessor: TDataSource;
    qrProfessoresID: TIntegerField;
    qrProfessoresNOME: TStringField;
    qrProfessoresCPF: TStringField;
    rbtProfessor: TRLDBText;
    qrDadosPROFESSORES: TStringField;
    RLGroup1: TRLGroup;
    rlSumario: TRLBand;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmRelatorioAlunoProfessor: TfrmRelatorioAlunoProfessor;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmRelatorioAlunoProfessor.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  qrDados.Close;
  qrProfessores.Close;
  qrAlunos.Close;
  frmRelatorioAlunoProfessor := nil;
end;

procedure TfrmRelatorioAlunoProfessor.FormShow(Sender: TObject);
begin
  qrDados.Open;
  qrAlunos.Open;
  qrProfessores.Open;
  qrDados.Refresh;
end;

end.
