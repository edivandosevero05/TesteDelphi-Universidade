program Universidade;

uses
  Vcl.Forms,
  uPrincipal in 'uPrincipal.pas' {frmPrincipal},
  uCadastroBase in 'uCadastroBase.pas' {frmCadBase},
  udmPrincipal in 'udmPrincipal.pas' {dmPrincipal: TDataModule},
  uSystemutils in 'uSystemutils.pas',
  uCadastroProfessor in 'uCadastroProfessor.pas' {frmCadastroProfessores},
  uCadastroDisciplina in 'uCadastroDisciplina.pas' {frmCadastroDsiciplina},
  uCadastroAluno in 'uCadastroAluno.pas' {frmCadastroAluno},
  uMovimentacaoProfessorDsiciplina in 'uMovimentacaoProfessorDsiciplina.pas' {frmMovimentacaoProfessorDisciplina},
  uMovimentacaoNota in 'uMovimentacaoNota.pas' {frmMovimentacaoNota},
  uRelatorioAlunosSituacao in 'uRelatorioAlunosSituacao.pas' {frmRelatorioAlunos},
  uRelatorioAlunoProfessor in 'uRelatorioAlunoProfessor.pas' {frmRelatorioAlunoProfessor},
  uRelatorioAlunoGeral in 'uRelatorioAlunoGeral.pas' {frmRelatorioAlunoGeral};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
