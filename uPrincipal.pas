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
    procedure Disciplinas1Click(Sender: TObject);
    procedure Professores1Click(Sender: TObject);
    procedure Alunos1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses uCadastroDisciplina, uCadastroProfessor, uCadastroAluno;

procedure TfrmPrincipal.Alunos1Click(Sender: TObject);
begin
  if frmCadastroAluno = nil then
    frmCadastroAluno := TfrmCadastroAluno.Create(Self);

  frmCadastroAluno.Show();
end;

procedure TfrmPrincipal.Disciplinas1Click(Sender: TObject);
begin
  if frmCadastroDsiciplina = nil then
    frmCadastroDsiciplina := TfrmCadastroDsiciplina.Create(Self);

  frmCadastroDsiciplina.Show();
end;

procedure TfrmPrincipal.Professores1Click(Sender: TObject);
begin
  if frmCadastroProfessores = nil then
    frmCadastroProfessores := TfrmCadastroProfessores.Create(Self);

  frmCadastroProfessores.Show();
end;

end.
