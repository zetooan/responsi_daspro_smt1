unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm2 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    Edit2: TEdit;
    DateTimePicker1: TDateTimePicker;
    Edit3: TEdit;
    Memo1: TMemo;
    ComboBox3: TComboBox;
    Button1: TButton;
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
var nim : string;
begin
  if (Edit1.Text = '') or (Edit2.Text = '') or (Edit3.Text = '') or (ComboBox1.Text = '-- Pilih Agama --') or (ComboBox2.Text = '-- Pilih Jenis Kelamin --') or (ComboBox3.Text = '-- Pilih Jurusan --') or (Memo1.Text = '') then
   begin
     ShowMessage('Data Anda Masih Ada Yang Belum Terisi');
   end
   else
    begin
      MyQuery1.SQL.Clear;
      MyQuery1.SQL.Add('INSERT INTO mahasiswa(nim, nama, agama, jankel, tpt_lhr, tgl_lhr, no_hp, alamat, jurusan) VALUES (:A, :B, :C, :D, :E, :F, :G, :H, :I)');
      MyQuery1.Params [0].Value := FormatDateTime('yyyymmddhhnnss',Now);
      MyQuery1.Params [1].Value := Edit1.Text;
      MyQuery1.Params [2].Value := ComboBox1.Text;
      MyQuery1.Params [3].Value := ComboBox2.Text;
      MyQuery1.Params [4].Value := Edit2.Text;
      MyQuery1.Params [5].Value := FormatDateTime('yyyy-mm-dd',DateTimePicker1.DateTime);
      MyQuery1.Params [6].Value := Edit3.Text;
      MyQuery1.Params [7].Value := Memo1.Text;
      MyQuery1.Params [8].Value := ComboBox3.Text;
      MyQuery1.ExecSQL;
      ShowMessage('Data Telah Tersimpan');
    end;

end;

procedure TForm2.Button2Click(Sender: TObject);
begin
close;
end;

end.
