unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, MemDS, DBAccess, MyAccess,
  Vcl.Grids, Vcl.StdCtrls, Data.Bind.EngExt, Vcl.Bind.DBEngExt, Vcl.Bind.Grid,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.Components,
  Data.Bind.Grid, Data.Bind.DBScope;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    StringGrid1: TStringGrid;
    MyConnection1: TMyConnection;
    MyQuery1: TMyQuery;
    GroupBox1: TGroupBox;
    Button1: TButton;
    BindSourceDB1: TBindSourceDB;
    BindingsList1: TBindingsList;
    LinkGridToDataSourceBindSourceDB1: TLinkGridToDataSource;
    GroupBox2: TGroupBox;
    Label1: TLabel;
    Label2: TLabel;
    LinkPropertyToFieldCaption: TLinkPropertyToField;
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.Button1Click(Sender: TObject);
begin
 close;
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin
if Edit1.Text = '' then
  begin
     MyQuery1.SQL.Clear;
     MyQuery1.SQL.Add('SELECT * FROM mahasiswa');
     MyQuery1.ExecSQL
  end
else
  begin
     MyQuery1.SQL.Clear;
     MyQuery1.SQL.Add('SELECT * FROM mahasiswa WHERE nim='+QuotedStr(Edit1.Text)+'OR nama= '+QuotedStr(Edit1.Text));
     MyQuery1.ExecSQL
  end;
end;

end.
