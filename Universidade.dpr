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
  uMovimentacaoAlunoDsiciplina in 'uMovimentacaoAlunoDsiciplina.pas' {frmMovimentacaoAlunoDisciplina},
  uMovimentacaoNota in 'uMovimentacaoNota.pas' {frmMovimentacaoNota},
  uRelatorioAlunos in 'uRelatorioAlunos.pas' {frmRelatorioAlunos};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmMovimentacaoNota, frmMovimentacaoNota);
  Application.CreateForm(TfrmRelatorioAlunos, frmRelatorioAlunos);
  Application.Run;
end.
