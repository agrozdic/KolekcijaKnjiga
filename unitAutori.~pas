unit unitAutori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls;

type
  TformAutori = class(TForm)
    GroupBox1: TGroupBox;
    rbUnos: TRadioButton;
    rbBrisanje: TRadioButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    editSifra: TEdit;
    editIme: TEdit;
    editPrezime: TEdit;
    DatePicker: TDateTimePicker;
    btnUpisi: TButton;
    btnObrisi: TButton;
    btnIzadji: TButton;
    procedure btnIzadjiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure rbUnosClick(Sender: TObject);
    procedure rbBrisanjeClick(Sender: TObject);
    procedure btnUpisiClick(Sender: TObject);
    procedure btnObrisiClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formAutori: TformAutori;

implementation

uses unitDM;

{$R *.dfm}

procedure TformAutori.btnIzadjiClick(Sender: TObject);
  begin
    Close;
  end;

procedure TformAutori.FormActivate(Sender: TObject);
  begin
    DatePicker.MaxDate:=Now;
    rbUnos.Checked:=false;
    rbBrisanje.Checked:=false;
    editSifra.Enabled:=false;
    editIme.Enabled:=false;
    editPrezime.Enabled:=false;
    DatePicker.Enabled:=false;
    btnUpisi.Enabled:=false;
    btnObrisi.Enabled:=false;
    editSifra.Text:='';
    editIme.Text:='';
    editPrezime.Text:='';
  end;

procedure TformAutori.rbUnosClick(Sender: TObject);
  begin
    editSifra.Enabled:=true;
    editIme.Enabled:=true;
    editPrezime.Enabled:=true;
    DatePicker.Enabled:=true;
    btnUpisi.Enabled:=true;
    btnObrisi.Enabled:=false;
  end;

procedure TformAutori.rbBrisanjeClick(Sender: TObject);
  begin
    editSifra.Enabled:=true;
    editIme.Enabled:=false;
    editPrezime.Enabled:=false;
    DatePicker.Enabled:=false;
    btnUpisi.Enabled:=false;
    btnObrisi.Enabled:=true;
    editSifra.Text:='';
    editIme.Text:='';
    editPrezime.Text:='';
  end;

procedure TformAutori.btnUpisiClick(Sender: TObject);
  var
    int, ind: integer;
  begin
    DM.AUTORI.Open;
    if((editSifra.Text<>'') and (editIme.Text<>'') and (editPrezime.Text<>''))
      then
        begin
          val(editSifra.Text, int, ind);
          if(ind=0)
            then
              begin
                if(DM.AUTORI.Locate('AutorID', editSifra.Text, [])=false)
                  then
                    begin
                      DM.AUTORI.Append;
                      DM.AUTORI.FieldByName('AutorID').Value:=editSifra.Text;
                      DM.AUTORI.FieldByName('Ime').Value:=editIme.Text;
                      DM.AUTORI.FieldByName('Prezime').Value:=editPrezime.Text;
                      DM.AUTORI.FieldByName('DatumRodjenja').Value:=DatePicker.Date;
                      DM.AUTORI.Post;
                      showmessage('Uspesno upisan autor!');
                    end
                  else
                    showmessage('Vec postoji rezultat pod upisanom sifrom!');
              end
            else
              showmessage('Sifra mora biti broj!');
        end
      else
        showmessage('Polja Sifra, Ime i Prezime su obavezna!');
    DM.AUTORI.Close;
  end;

procedure TformAutori.btnObrisiClick(Sender: TObject);
  var
    int, ind: integer;
  begin
    DM.AUTORI.Open;
    if(editSifra.Text<>'')
      then
        begin
          val(editSifra.Text, int, ind);
          if(ind=0)
            then
              begin
                if(DM.AUTORI.Locate('AutorID', editSifra.Text, [])=true)
                  then
                    begin
                      DM.AUTORI.Locate('AutorID', editSifra.Text, []);
                      DM.AUTORI.Delete;
                      showmessage('Uspesno obrisan autor!');
                    end
                  else
                    showmessage('Ne postoji rezultat pod upisanom sifrom!');
              end
            else
              showmessage('Sifra mora biti broj!');
        end
      else
        showmessage('Polje Sifra je obavezno!');
    DM.AUTORI.Close;
  end;

end.
