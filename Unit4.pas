unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess,
  Vcl.StdCtrls, frxClass, frxDBSet;

type
  TForm4 = class(TForm)
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
  MyQuery1.SQL.Clear;
  MyQuery1.SQL.Add('SELECT * FROM mahasiswa WHERE nim='+QuotedStr(Edit1.Text));
  MyQuery1.Open;
  if MyQuery1.RecordCount = 0 then Label1.Caption := 'Maaf NIM yang anda masukkan tidak terdaftar'
  else
    begin
     frxReport1.LoadFromFile(ExtractFilePath(Application.ExeName)+'\cetak.fr3');
     frxReport1.ShowReport();
    end;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
close;
end;

end.
