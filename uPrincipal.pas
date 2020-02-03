unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    mmPrincipal: TMainMenu;
    Cadastros1: TMenuItem;
    Relatrios1: TMenuItem;
    Professores1: TMenuItem;
    Disciplinas1: TMenuItem;
    Alunos1: TMenuItem;
    StatusBar1: TStatusBar;
    Movimentos1: TMenuItem;
    ProfessorDisciplina1: TMenuItem;
    AlunoDisciplina1: TMenuItem;
    Alunos2: TMenuItem;
    AlunosxProfessores1: TMenuItem;
    Alunos3: TMenuItem;
    procedure Disciplinas1Click(Sender: TObject);
    procedure Professores1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
    procedure ProfessorDisciplina1Click(Sender: TObject);
    procedure AlunoDisciplina1Click(Sender: TObject);
    procedure Alunos2Click(Sender: TObject);
    procedure AlunosxProfessores1Click(Sender: TObject);
    procedure Alunos3Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastroDisciplina, uCadastroProfessor, uCadastroAluno,
  uMovimentacaoProfessorDsiciplina, uMovimentacaoAlunoDsiciplina,
  uRelatorioAlunos, uMovimentacaoNota, uRelatorioAlunoProfessor,
  uRelatorioAlunoGeral;

procedure TfrmPrincipal.AlunoDisciplina1Click(Sender: TObject);
begin
  if frmMovimentacaoNota = nil then
    frmMovimentacaoNota := TfrmMovimentacaoNota.Create(Self);

  frmMovimentacaoNota.Show();
end;

procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
  if frmCadastroAluno = nil then
    frmCadastroAluno := TfrmCadastroAluno.Create(Self);

  frmCadastroAluno.Show();
end;

procedure TfrmPrincipal.Alunos2Click(Sender: TObject);
begin
  if frmRelatorioAlunos = nil then
    frmRelatorioAlunos := TfrmRelatorioAlunos.Create(Self);

  frmRelatorioAlunos.rpAlunos.Preview;
end;

procedure TfrmPrincipal.Alunos3Click(Sender: TObject);
begin
  if frmRelatorioAlunoGeral = nil then
    frmRelatorioAlunoGeral := TfrmRelatorioAlunoGeral.Create(Self);

  frmRelatorioAlunoGeral.rpListagemAluno.Preview;
end;

procedure TfrmPrincipal.AlunosxProfessores1Click(Sender: TObject);
begin
  if frmRelatorioAlunoProfessor = nil then
    frmRelatorioAlunoProfessor := TfrmRelatorioAlunoProfessor.Create(Self);

  frmRelatorioAlunoProfessor.RLReport1.Preview;
end;

procedure TfrmPrincipal.Disciplinas1Click(Sender: TObject);
begin
  if frmCadastroDsiciplina = nil then
    frmCadastroDsiciplina := TfrmCadastroDsiciplina.Create(Self);

  frmCadastroDsiciplina.Show();
end;

procedure TfrmPrincipal.ProfessorDisciplina1Click(Sender: TObject);
begin
  if frmMovimentacaoProfessorDisciplina = nil then
    frmMovimentacaoProfessorDisciplina := TfrmMovimentacaoProfessorDisciplina.Create(Self);

  frmMovimentacaoProfessorDisciplina.Show();
end;

procedure TfrmPrincipal.Professores1Click(Sender: TObject);
begin
  if frmCadastroProfessores = nil then
    frmCadastroProfessores := TfrmCadastroProfessores.Create(Self);

  frmCadastroProfessores.Show();
end;

end.
