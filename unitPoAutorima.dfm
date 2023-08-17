object formPoAutorima: TformPoAutorima
  Left = 192
  Top = 124
  Width = 928
  Height = 481
  Caption = 'Po Autorima'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object line10: TLabel
    Left = 168
    Top = 168
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object line8: TLabel
    Left = 168
    Top = 208
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object line6: TLabel
    Left = 168
    Top = 248
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object line4: TLabel
    Left = 168
    Top = 288
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object line2: TLabel
    Left = 168
    Top = 328
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object line0: TLabel
    Left = 168
    Top = 368
    Width = 601
    Height = 1
    Caption = 'line0'
    Color = clBackground
    ParentColor = False
  end
  object Label1: TLabel
    Left = 256
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Autori'
  end
  object stub1: TLabel
    Left = 219
    Top = 368
    Width = 100
    Height = 20
    Color = clHighlight
    ParentColor = False
  end
  object stub2: TLabel
    Left = 443
    Top = 368
    Width = 100
    Height = 20
    Color = clHighlight
    ParentColor = False
  end
  object stub3: TLabel
    Left = 667
    Top = 368
    Width = 100
    Height = 20
    Color = clHighlight
    ParentColor = False
  end
  object autor1: TLabel
    Left = 288
    Top = 376
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'autor1'
  end
  object autor2: TLabel
    Left = 512
    Top = 376
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'autor2'
  end
  object autor3: TLabel
    Left = 736
    Top = 376
    Width = 30
    Height = 13
    Alignment = taRightJustify
    Caption = 'autor3'
  end
  object Label3: TLabel
    Left = 152
    Top = 360
    Width = 6
    Height = 13
    Caption = '0'
  end
  object Label4: TLabel
    Left = 152
    Top = 320
    Width = 6
    Height = 13
    Caption = '2'
  end
  object Label2: TLabel
    Left = 152
    Top = 280
    Width = 6
    Height = 13
    Caption = '4'
  end
  object Label5: TLabel
    Left = 152
    Top = 240
    Width = 6
    Height = 13
    Caption = '6'
  end
  object Label6: TLabel
    Left = 152
    Top = 200
    Width = 6
    Height = 13
    Caption = '8'
  end
  object Label7: TLabel
    Left = 152
    Top = 160
    Width = 12
    Height = 13
    Caption = '10'
  end
  object CheckBox: TCheckListBox
    Left = 296
    Top = 32
    Width = 185
    Height = 97
    ItemHeight = 13
    Sorted = True
    TabOrder = 0
  end
  object Prikazi: TButton
    Left = 512
    Top = 64
    Width = 75
    Height = 25
    Caption = 'Prikazi'
    TabOrder = 2
    OnClick = PrikaziClick
  end
  object Izadji: TButton
    Left = 512
    Top = 104
    Width = 75
    Height = 25
    Caption = 'Izadji'
    TabOrder = 1
    OnClick = IzadjiClick
  end
end
