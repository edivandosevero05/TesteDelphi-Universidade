unit uSystemUtils;

interface

function MsgConfirm(aMessage: string): boolean;
procedure MsgWarning(aMessage: string);

implementation

uses
  Vcl.Forms, Winapi.Windows, System.SysUtils;

function MsgConfirm(aMessage: string): boolean;
begin
  Result := Application.MessageBox(PWideChar(aMessage), 'Universidade', MB_YESNO + MB_ICONQUESTION + MB_DEFBUTTON2) = ID_YES;
end;

procedure MsgWarning(aMessage: string);
begin
  Application.MessageBox(PWideChar(aMessage), 'Universidade', MB_OK + MB_ICONWARNING);
end;

end.
