object DM: TDM
  OldCreateOrder = False
  Height = 304
  Width = 445
  object Con: TFDConnection
    Params.Strings = (
      'DriverID=FB'
      'User_Name=sysdba'
      'Password=masterkey'
      'Database=C:\database\ESTOQUE.FDB')
    Connected = True
    LoginPrompt = False
    Left = 40
    Top = 48
  end
  object Qry: TFDQuery
    Connection = Con
    SQL.Strings = (
      'SELECT * FROM PESSOA')
    Left = 104
    Top = 96
  end
  object FDPhysFBDriverLink: TFDPhysFBDriverLink
    VendorLib = 'C:\Firebird-2.5.9.27139-0_Win32\bin\fbclient.dll'
    Left = 72
    Top = 192
  end
end
