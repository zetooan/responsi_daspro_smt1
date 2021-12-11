object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Data Mahasiswa'
  ClientHeight = 395
  ClientWidth = 560
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 0
    Top = 0
    Width = 560
    Height = 21
    Align = alTop
    TabOrder = 0
    TextHint = 'Cari NIM atau Nama'
    OnChange = Edit1Change
    ExplicitLeft = 8
    ExplicitTop = 8
    ExplicitWidth = 121
  end
  object StringGrid1: TStringGrid
    Tag = 9
    Left = 0
    Top = 65
    Width = 560
    Height = 271
    Align = alClient
    ColCount = 9
    DefaultColWidth = 100
    FixedCols = 0
    RowCount = 3
    TabOrder = 1
    ExplicitTop = 21
    ExplicitHeight = 315
  end
  object GroupBox1: TGroupBox
    Left = 0
    Top = 336
    Width = 560
    Height = 59
    Align = alBottom
    TabOrder = 2
    object Button1: TButton
      Left = 3
      Top = 2
      Width = 121
      Height = 54
      Caption = 'Kembali'
      TabOrder = 0
      OnClick = Button1Click
    end
  end
  object GroupBox2: TGroupBox
    Left = 0
    Top = 21
    Width = 560
    Height = 44
    Align = alTop
    TabOrder = 3
    object Label1: TLabel
      Left = 2
      Top = 15
      Width = 47
      Height = 27
      Align = alLeft
      Caption = '    NIM :   '
      ExplicitHeight = 13
    end
    object Label2: TLabel
      Left = 49
      Top = 15
      Width = 84
      Height = 27
      Align = alLeft
      Caption = '20211211021312'
      ExplicitHeight = 13
    end
  end
  object MyConnection1: TMyConnection
    Database = 'pendaftaran_mahasiswa'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 408
    Top = 104
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM mahasiswa')
    Active = True
    Left = 416
    Top = 160
  end
  object BindSourceDB1: TBindSourceDB
    DataSet = MyQuery1
    ScopeMappings = <>
    Left = 272
    Top = 200
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 148
    Top = 189
    object LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      GridControl = StringGrid1
      Columns = <
        item
          MemberName = 'nim'
        end
        item
          MemberName = 'nama'
        end
        item
          MemberName = 'agama'
        end
        item
          MemberName = 'jankel'
        end
        item
          MemberName = 'tpt_lhr'
        end
        item
          MemberName = 'tgl_lhr'
        end
        item
          MemberName = 'no_hp'
        end
        item
          MemberName = 'alamat'
        end
        item
          MemberName = 'jurusan'
        end>
    end
    object LinkPropertyToFieldCaption: TLinkPropertyToField
      Category = 'Quick Bindings'
      DataSource = BindSourceDB1
      FieldName = 'nim'
      Component = Label2
      ComponentProperty = 'Caption'
    end
  end
end
