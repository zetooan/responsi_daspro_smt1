object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Pendaftaran'
  ClientHeight = 391
  ClientWidth = 486
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 0
    Top = 0
    Width = 486
    Height = 23
    Align = alTop
    Caption = '  Data Diri'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    ExplicitWidth = 96
  end
  object Label2: TLabel
    Left = 8
    Top = 40
    Width = 27
    Height = 13
    Caption = 'Nama'
  end
  object Label3: TLabel
    Left = 8
    Top = 67
    Width = 36
    Height = 17
    Caption = 'Agama '
  end
  object Label4: TLabel
    Left = 8
    Top = 94
    Width = 63
    Height = 15
    Caption = 'Jenis Kelmain'
  end
  object Label5: TLabel
    Left = 8
    Top = 121
    Width = 62
    Height = 18
    Caption = 'Tempat Lahir'
  end
  object Label6: TLabel
    Left = 8
    Top = 152
    Width = 64
    Height = 17
    Caption = 'Tanggal Lahir'
  end
  object Label7: TLabel
    Left = 8
    Top = 202
    Width = 33
    Height = 13
    Caption = 'Alamat'
  end
  object Label8: TLabel
    Left = 8
    Top = 175
    Width = 29
    Height = 13
    Caption = 'No Hp'
  end
  object Label9: TLabel
    Left = 264
    Top = 40
    Width = 49
    Height = 18
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 88
    Top = 37
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 64
    Width = 113
    Height = 21
    TabOrder = 1
    Text = '-- Pilih Agama --'
    Items.Strings = (
      'Islam'
      'Kristen'
      'Katolik'
      'Hindu'
      'Buddha'
      'Lainnya')
  end
  object ComboBox2: TComboBox
    Left = 88
    Top = 91
    Width = 137
    Height = 21
    TabOrder = 2
    Text = '-- Pilih Jenis Kelamin --'
    Items.Strings = (
      'Laki-Laki'
      'Perempuan')
  end
  object Edit2: TEdit
    Left = 88
    Top = 118
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object DateTimePicker1: TDateTimePicker
    Left = 88
    Top = 145
    Width = 121
    Height = 21
    Date = 44541.059657372690000000
    Time = 44541.059657372690000000
    TabOrder = 4
  end
  object Edit3: TEdit
    Left = 88
    Top = 172
    Width = 121
    Height = 21
    TabOrder = 5
  end
  object Memo1: TMemo
    Left = 88
    Top = 199
    Width = 185
    Height = 89
    TabOrder = 6
  end
  object ComboBox3: TComboBox
    Left = 319
    Top = 37
    Width = 130
    Height = 21
    TabOrder = 7
    Text = '-- Pilih Jurusan --'
    Items.Strings = (
      'Informatika'
      'Mesin'
      'Pertanian')
  end
  object Button1: TButton
    Left = 319
    Top = 312
    Width = 130
    Height = 49
    Caption = 'Daftar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 32
    Top = 312
    Width = 129
    Height = 49
    Caption = 'Kembali'
    TabOrder = 9
    OnClick = Button2Click
  end
  object MyConnection1: TMyConnection
    Database = 'pendaftaran_mahasiswa'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 368
    Top = 96
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM mahasiswa')
    Active = True
    Left = 328
    Top = 96
  end
end
