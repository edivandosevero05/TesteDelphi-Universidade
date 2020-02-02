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
  uMovimentacaoProfessorDsiciplina in 'uMovimentacaoProfessorDsiciplina.pas' {frmCadBase1};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TdmPrincipal, dmPrincipal);
  Application.CreateForm(TfrmCadBase1, frmCadBase1);
  Application.Run;
end.
