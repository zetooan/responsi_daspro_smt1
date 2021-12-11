object Form4: TForm4
  Left = 0
  Top = 0
  Caption = 'Cetak Kartu Mahasiswa'
  ClientHeight = 340
  ClientWidth = 405
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
    Left = 115
    Top = 118
    Width = 238
    Height = 12
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 128
    Top = 81
    Width = 185
    Height = 31
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    TextHint = 'Masukkan NIM'
  end
  object Button1: TButton
    Left = 160
    Top = 136
    Width = 105
    Height = 41
    Caption = 'Cetak Kartu'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 288
    Width = 129
    Height = 36
    Caption = 'Kembali'
    TabOrder = 2
    OnClick = Button2Click
  end
  object MyConnection1: TMyConnection
    Database = 'pendaftaran_mahasiswa'
    Username = 'root'
    Server = 'localhost'
    Connected = True
    LoginPrompt = False
    Left = 32
    Top = 224
  end
  object MyQuery1: TMyQuery
    Connection = MyConnection1
    SQL.Strings = (
      'SELECT * FROM mahasiswa')
    Active = True
    Left = 88
    Top = 208
  end
  object frxReport1: TfrxReport
    Version = '5.1.5'
    DataSet = frxDBDataset1
    DataSetName = 'frxDBDataset1'
    DotMatrixReport = True
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 44541.124152534720000000
    ReportOptions.LastChange = 44541.143269918980000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 160
    Top = 184
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      LeftMargin = 10.000000000000000000
      RightMargin = 10.000000000000000000
      TopMargin = 10.000000000000000000
      BottomMargin = 10.000000000000000000
      object frxDBDataset1nama: TfrxMemoView
        Left = 154.960730000000000000
        Top = 128.504020000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        DataField = 'nama'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."nama"]')
        ParentFont = False
      end
      object frxDBDataset1nim: TfrxMemoView
        Left = 154.960730000000000000
        Top = 90.708720000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        DataField = 'nim'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."nim"]')
        ParentFont = False
      end
      object Memo1: TfrxMemoView
        Left = 30.236240000000000000
        Top = 18.897650000000000000
        Width = 219.212740000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -19
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Kartu Mahasiswa')
        ParentFont = False
      end
      object Memo2: TfrxMemoView
        Left = 7.559060000000000000
        Top = 128.504020000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Nama')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 117.165430000000000000
        Top = 128.504020000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object Memo4: TfrxMemoView
        Left = 117.165430000000000000
        Top = 94.488250000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 3.779530000000000000
        Top = 90.708720000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'NIM')
        ParentFont = False
      end
      object frxDBDataset1jurusan: TfrxMemoView
        Left = 154.960730000000000000
        Top = 170.078850000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        DataField = 'jurusan'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jurusan"]')
        ParentFont = False
      end
      object Memo6: TfrxMemoView
        Left = 3.779530000000000000
        Top = 166.299320000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Jurusan')
        ParentFont = False
      end
      object Memo7: TfrxMemoView
        Left = 117.165430000000000000
        Top = 166.299320000000000000
        Width = 15.118120000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object frxDBDataset1jankel: TfrxMemoView
        Left = 154.960730000000000000
        Top = 207.874150000000000000
        Width = 253.228510000000000000
        Height = 18.897650000000000000
        DataField = 'jankel'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."jankel"]')
        ParentFont = False
      end
      object frxDBDataset1alamat: TfrxMemoView
        Left = 154.960730000000000000
        Top = 317.480520000000000000
        Width = 377.953000000000000000
        Height = 158.740260000000000000
        DataField = 'alamat'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."alamat"]')
        ParentFont = False
      end
      object frxDBDataset1tgl_lhr: TfrxMemoView
        Left = 154.960730000000000000
        Top = 279.685220000000000000
        Width = 264.567100000000000000
        Height = 18.897650000000000000
        DataField = 'tgl_lhr'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."tgl_lhr"]')
        ParentFont = False
      end
      object frxDBDataset1tpt_lhr: TfrxMemoView
        Left = 154.960730000000000000
        Top = 245.669450000000000000
        Width = 257.008040000000000000
        Height = 18.897650000000000000
        DataField = 'tpt_lhr'
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          '[frxDBDataset1."tpt_lhr"]')
        ParentFont = False
      end
      object Memo8: TfrxMemoView
        Left = 3.779530000000000000
        Top = 204.094620000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Jenis Kelamin')
        ParentFont = False
      end
      object Memo9: TfrxMemoView
        Left = 3.779530000000000000
        Top = 245.669450000000000000
        Width = 113.385900000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Tempat Lahir')
        ParentFont = False
      end
      object Memo10: TfrxMemoView
        Left = 3.779530000000000000
        Top = 283.464750000000000000
        Width = 109.606370000000000000
        Height = 22.677180000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Tanggal Lahir')
        ParentFont = False
      end
      object Memo11: TfrxMemoView
        Left = 3.779530000000000000
        Top = 317.480520000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          'Alamat')
        ParentFont = False
      end
      object Memo12: TfrxMemoView
        Left = 113.385900000000000000
        Top = 200.315090000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object Memo13: TfrxMemoView
        Left = 113.385900000000000000
        Top = 245.669450000000000000
        Width = 22.677180000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object Memo14: TfrxMemoView
        Left = 117.165430000000000000
        Top = 279.685220000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
      object Memo15: TfrxMemoView
        Left = 117.165430000000000000
        Top = 313.700990000000000000
        Width = 18.897650000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -16
        Font.Name = 'Arial'
        Font.Style = []
        Memo.UTF8W = (
          ':')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    FieldAliases.Strings = (
      'id=id'
      'nim=nim'
      'nama=nama'
      'agama=agama'
      'jankel=jankel'
      'tpt_lhr=tpt_lhr'
      'tgl_lhr=tgl_lhr'
      'no_hp=no_hp'
      'alamat=alamat'
      'jurusan=jurusan')
    DataSet = MyQuery1
    BCDToCurrency = False
    Left = 248
    Top = 208
  end
end
