object formMain: TformMain
  Left = 192
  Top = 125
  Width = 928
  Height = 480
  Caption = 'Kolekcija knjiga'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 24
    Top = 8
    object Unos1: TMenuItem
      Caption = 'Unos'
      object Knjige1: TMenuItem
        Caption = 'Knjige'
      end
      object Autori1: TMenuItem
        Caption = 'Autori'
        OnClick = Autori1Click
      end
    end
    object Brojknjiga1: TMenuItem
      Caption = 'Broj knjiga'
      object Pokategorijama1: TMenuItem
        Caption = 'Po kategorijama'
      end
      object Poautorima1: TMenuItem
        Caption = 'Po autorima'
        OnClick = Poautorima1Click
      end
    end
    object Kraj1: TMenuItem
      Caption = 'Kraj'
      object Izlaz1: TMenuItem
        Caption = 'Izlaz'
        ShortCut = 32841
        OnClick = Izlaz1Click
      end
    end
  end
end
