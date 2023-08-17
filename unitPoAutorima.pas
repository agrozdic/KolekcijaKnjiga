unit unitPoAutorima;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, OleCtrls, VCFI, StdCtrls, CheckLst;

type
  autor = record
    id: integer;
    ime: string;
  end;
  TformPoAutorima = class(TForm)
    CheckBox: TCheckListBox;
    Label1: TLabel;
    Prikazi: TButton;
    Izadji: TButton;
    stub1: TLabel;
    stub2: TLabel;
    stub3: TLabel;
    autor1: TLabel;
    autor2: TLabel;
    autor3: TLabel;
    line0: TLabel;
    line2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    line4: TLabel;
    line6: TLabel;
    line8: TLabel;
    line10: TLabel;
    Label2: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    procedure IzadjiClick(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure PrikaziClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  formPoAutorima: TformPoAutorima;
  autori: array[1..100] of autor;
  autoriBr: integer;

implementation

uses unitDM;

{$R *.dfm}

procedure TformPoAutorima.IzadjiClick(Sender: TObject);
  begin
    Close;
  end;

procedure TformPoAutorima.FormActivate(Sender: TObject);
  begin
    autor1.Caption:='';
    autor2.Caption:='';
    autor3.Caption:='';
    stub1.Height:=0;
    stub2.Height:=0;
    stub3.Height:=0;
    line0.Height:=1;
    line0.Width:=601;
    line2.Height:=1;
    line2.Width:=601;
    line4.Height:=1;
    line4.Width:=601;
    line6.Height:=1;
    line6.Width:=601;
    line8.Height:=1;
    line8.Width:=601;
    line10.Height:=1;
    line10.Width:=601;
    DM.AUTORI.Open;
    DM.AUTORI.First;
    CheckBox.Clear;
    while(not(DM.AUTORI.Eof)) do
      begin
        CheckBox.Items.Add(DM.AUTORI.FieldByName('Ime').AsString + ' ' + DM.AUTORI.FieldByName('Prezime').AsString);
        autoriBr:=autoriBr+1;
        autori[autoriBr].id:=DM.AUTORI.FieldByName('AutorID').Value;
        autori[autoriBr].ime:=DM.AUTORI.FieldByName('Ime').AsString + ' ' + DM.AUTORI.FieldByName('Prezime').AsString;
        DM.AUTORI.Next;
      end;
    DM.AUTORI.Close;
  end;

procedure TformPoAutorima.PrikaziClick(Sender: TObject);
  var
    i, autorID, br, br1, br2, br3: integer;
    obelezeni: array[1..3] of integer;
  begin
    DM.AUTORI.Open;
    DM.IZDANJA.Open;
    br:=0;
    br1:=0;
    br2:=0;
    br3:=0;
    for i:=0 to CheckBox.Items.Count-1 do
      if(CheckBox.Checked[i])
        then
          begin
            br:=br+1;
            obelezeni[br]:=i;
          end;
    if(br=3)
      then
        begin
          for i:=1 to autoriBr do
          begin
            if(CheckBox.Items[obelezeni[1]]=autori[i].ime)
              then
                begin
                  autorID:=autori[i].id;
                  break;
                end;
                end;
          DM.IZDANJA.First;
          while(not(DM.IZDANJA.Eof)) do
            begin
              if(autorID=DM.IZDANJA.FieldByName('AutorID').Value)
                then
                  br1:=br1+1;
              DM.IZDANJA.Next;
            end;
          for i:=1 to autoriBr do
            if(CheckBox.Items[obelezeni[2]]=autori[i].ime)
              then
                begin
                  autorID:=autori[i].id;
                  break;
                end;
          DM.IZDANJA.First;
          while(not(DM.IZDANJA.Eof)) do
            begin
              if(autorID=DM.IZDANJA.FieldByName('AutorID').Value)
                then
                  br2:=br2+1;
              DM.IZDANJA.Next;
            end;
          for i:=1 to autoriBr do
            if(CheckBox.Items[obelezeni[3]]=autori[i].ime)
              then
                begin
                  autorID:=autori[i].id;
                  break;
                end;
          DM.IZDANJA.First;
          while(not(DM.IZDANJA.Eof)) do
            begin
              if(autorID=DM.IZDANJA.FieldByName('AutorID').Value)
                then
                  br3:=br3+1;
              DM.IZDANJA.Next;
            end;
          autor1.Caption:=CheckBox.Items[obelezeni[1]];
          autor2.Caption:=CheckBox.Items[obelezeni[2]];
          autor3.Caption:=CheckBox.Items[obelezeni[3]];
          stub1.Height:=-20*br1;
          stub1.Width:=100;
          stub2.Height:=-20*br2;
          stub2.Width:=100;
          stub3.Height:=-20*br3;
          stub3.Width:=100;
        end
      else
        begin
          showmessage('Mora biti obelezeno tacno tri autora!');
          for i:=0 to CheckBox.Items.Count-1 do
            CheckBox.Checked[i]:=False;
        end;
    DM.AUTORI.Close;
    DM.IZDANJA.Close;
  end;

end.
