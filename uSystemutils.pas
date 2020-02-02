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

function AsciiToInt(Caracter: Char): Integer;
var
  i: Integer;
begin
  i := 32;
  while i < 255 do begin
    if Chr(i) = Caracter then
      Break;
    i := i + 1;
  end;
  Result := i;
end;



end.
