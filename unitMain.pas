unit unitMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Menus;

type
  TformMain = class(TForm)
    MainMenu1: TMainMenu;
    Unos1: TMenuItem;
    Brojknjiga1: TMenuItem;
    Kraj1: TMenuItem;
    Izlaz1: TMenuItem;
    Knjige1: TMenuItem;
    Autori1: TMenuItem;
    Pokategorijama1: TMenuItem;
    Poautorima1: TMenuItem;
    procedure Izlaz1Click(Sender: TObject);
    procedure Autori1Click(Sender: TObject);
    procedure Poautorima1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formMain: TformMain;

implementation

uses unitAutori, unitPoAutorima;

{$R *.dfm}

procedure TformMain.Izlaz1Click(Sender: TObject);
  begin
    Close;
  end;

procedure TformMain.Autori1Click(Sender: TObject);
  begin
    formAutori.ShowModal;
  end;

procedure TformMain.Poautorima1Click(Sender: TObject);
  begin
    formPoAutorima.ShowModal;
  end;

end.
