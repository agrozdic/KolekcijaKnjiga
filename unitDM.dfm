object DM: TDM
  OldCreateOrder = False
  Left = 192
  Top = 125
  Height = 445
  Width = 380
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=KolekcijaKnjiga.mdb' +
      ';Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 72
    Top = 72
  end
  object AUTORI: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AUTOR'
    Left = 72
    Top = 152
  end
  object IZDANJA: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'AUTOR_IZDANJE'
    Left = 72
    Top = 232
  end
  object DataSource1: TDataSource
    DataSet = AUTORI
    Left = 184
    Top = 152
  end
  object DataSource2: TDataSource
    DataSet = IZDANJA
    Left = 184
    Top = 232
  end
end
