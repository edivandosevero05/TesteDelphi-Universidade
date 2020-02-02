unit uMovimentacaoProfessorDsiciplina;

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
  TfrmMovimentacaoProfessorDisciplina = class(TfrmCadBase)
    qrDisciplina: TFDQuery;
    dsDisciplina: TDataSource;
    qrDadosDISCIPLINA: TStringField;
    qrDadosDISCIPLINA_ID: TIntegerField;
    qrDadosPROFESSOR_ID: TIntegerField;
    qrProfessor: TFDQuery;
    dsProfessor: TDataSource;
    qrProfessorID: TIntegerField;
    qrProfessorNOME: TStringField;
    qrProfessorCPF: TStringField;
    qrDadosPROFESSOR: TStringField;
    Label1: TLabel;
    lkDisciplina: TDBLookupComboBox;
    Label2: TLabel;
    lkProfessor: TDBLookupComboBox;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacaoProfessorDisciplina: TfrmMovimentacaoProfessorDisciplina;

implementation

{$R *.dfm}

uses udmPrincipal;

procedure TfrmMovimentacaoProfessorDisciplina.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  qrDisciplina.Close;
  qrProfessor.Close;
  frmMovimentacaoProfessorDisciplina := nil;
end;

procedure TfrmMovimentacaoProfessorDisciplina.FormShow(Sender: TObject);
begin
  inherited;
  qrDisciplina.Open;
  qrProfessor.Open;
end;

end.
