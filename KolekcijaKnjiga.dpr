program KolekcijaKnjiga;

uses
  Forms,
  unitMain in 'unitMain.pas' {formMain},
  unitAutori in 'unitAutori.pas' {formAutori},
  unitPoAutorima in 'unitPoAutorima.pas' {formPoAutorima},
  unitDM in 'unitDM.pas' {DM: TDataModule};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TformMain, formMain);
  Application.CreateForm(TformAutori, formAutori);
  Application.CreateForm(TformPoAutorima, formPoAutorima);
  Application.CreateForm(TDM, DM);
  Application.Run;
end.
