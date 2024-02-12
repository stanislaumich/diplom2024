program MINVENT;

uses
  Vcl.Forms,
  UMain in 'UMain.pas' {FMain} ,
  DM in 'DM.pas' {DataModule1: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TDataModule1, DataModule1);
  Application.CreateForm(TFMain, FMain);
  Application.Run;

end.
