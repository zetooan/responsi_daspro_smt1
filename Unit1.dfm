object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Pendaftaran Mahsiswa'
  ClientHeight = 353
  ClientWidth = 472
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 40
    Top = 64
    Width = 401
    Height = 161
    TabOrder = 0
    object Label1: TLabel
      Left = 2
      Top = 15
      Width = 397
      Height = 25
      Align = alTop
      Alignment = taCenter
      Caption = 'Aplikasi Pendaftaran Mahasiswa'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -21
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      ExplicitWidth = 342
    end
    object Button1: TButton
      Left = 24
      Top = 72
      Width = 105
      Height = 57
      Caption = 'Pendaftaran'
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button2: TButton
      Left = 144
      Top = 72
      Width = 113
      Height = 57
      Caption = 'Data Mahasiswa'
      TabOrder = 1
      OnClick = Button2Click
    end
    object Button3: TButton
      Left = 280
      Top = 72
      Width = 105
      Height = 57
      Caption = 'Cetak KTM'
      TabOrder = 2
      OnClick = Button3Click
    end
  end
end
