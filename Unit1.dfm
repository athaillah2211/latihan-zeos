object Form1: TForm1
  Left = 257
  Top = 183
  Width = 870
  Height = 450
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 24
    Top = 8
    Width = 107
    Height = 17
    Caption = 'Nama Kustomer'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl2: TLabel
    Left = 48
    Top = 48
    Width = 45
    Height = 17
    Caption = 'Telpon'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl3: TLabel
    Left = 48
    Top = 80
    Width = 46
    Height = 17
    Caption = 'Alamat'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl4: TLabel
    Left = 56
    Top = 120
    Width = 32
    Height = 17
    Caption = 'Kota'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object lbl5: TLabel
    Left = 48
    Top = 160
    Width = 69
    Height = 17
    Caption = 'Kode Post'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -15
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object dbgrd1: TDBGrid
    Left = 16
    Top = 248
    Width = 745
    Height = 161
    DataSource = d1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    OnCellClick = dbgrd1CellClick
  end
  object edt1: TEdit
    Left = 168
    Top = 8
    Width = 249
    Height = 21
    TabOrder = 1
  end
  object edt2: TEdit
    Left = 168
    Top = 40
    Width = 249
    Height = 21
    TabOrder = 2
  end
  object edt3: TEdit
    Left = 168
    Top = 72
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object edt4: TEdit
    Left = 168
    Top = 112
    Width = 249
    Height = 21
    TabOrder = 4
  end
  object edt5: TEdit
    Left = 168
    Top = 152
    Width = 249
    Height = 21
    TabOrder = 5
  end
  object btn1: TButton
    Left = 64
    Top = 192
    Width = 73
    Height = 33
    Caption = 'Baru'
    TabOrder = 6
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 160
    Top = 192
    Width = 89
    Height = 33
    Caption = 'Simpan'
    TabOrder = 7
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 280
    Top = 192
    Width = 81
    Height = 33
    Caption = 'Edit'
    TabOrder = 8
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 384
    Top = 192
    Width = 89
    Height = 33
    Caption = 'Hapus'
    TabOrder = 9
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 504
    Top = 192
    Width = 97
    Height = 33
    Caption = 'Batal'
    TabOrder = 10
    OnClick = btn5Click
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'Localhost'
    Port = 3306
    Database = 'db_visual2'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'C:\Program Files (x86)\Borland\Zeos703\latihan visual\libmysql.d' +
      'll'
    Left = 800
    Top = 256
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from kostumer')
    Params = <>
    Left = 800
    Top = 304
  end
  object d1: TDataSource
    DataSet = zqry1
    Left = 800
    Top = 360
  end
end
