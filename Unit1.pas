unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ZAbstractRODataset, ZAbstractDataset,
  ZDataset, ZAbstractConnection, ZConnection, StdCtrls;

type
  TForm1 = class(TForm)
    con1: TZConnection;
    zqry1: TZQuery;
    d1: TDataSource;
    dbgrd1: TDBGrid;
    lbl1: TLabel;
    lbl2: TLabel;
    lbl3: TLabel;
    lbl4: TLabel;
    lbl5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    edt4: TEdit;
    edt5: TEdit;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    procedure btn1Click(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
    procedure btn5Click(Sender: TObject);
    procedure dbgrd1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  id : string;
implementation

{$R *.dfm}

procedure TForm1.btn1Click(Sender: TObject);
begin
Edt1.Clear;
  Edt2.Clear;
  Edt3.Clear;
  Edt4.Clear;
  Edt5.Clear;
end;

procedure TForm1.btn2Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('insert into kustomer values(null,"'+Edt1.Text+'","'+Edt2.Text+'","'+Edt3.Text+'","'+Edt4.Text+'","'+Edt5.Text+'")');
  zqry1.ExecSQL ;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kustomer');
  zqry1.Open;

  Edt1.Clear;
  Edt2.Clear;
  Edt3.Clear;
  Edt4.Clear;
  Edt5.Clear;
  ShowMessage('DATA BERHASIL DISIMPAN');
end;

procedure TForm1.btn3Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add('Update kostumer set nmkustomer ="'+Edt1.Text+'",telp = "'+Edt2.Text+'",alamat ="'+Edt3.Text+'",kota ="'+Edt4.Text+'",kodepos ="'+Edt5.Text+'" where idkostumer= "'+id+'"');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kostumer');
  zqry1.Open;
end;

procedure TForm1.btn4Click(Sender: TObject);
begin
zqry1.SQL.Clear;
  zqry1.SQL.Add(' delete from kustomer where idkustomer= 3');
  zqry1.ExecSQL;

  zqry1.SQL.Clear;
  zqry1.SQL.Add('select * from kustomer');
  zqry1.Open;
end;

procedure TForm1.btn5Click(Sender: TObject);
begin
Edt1.Clear;
  Edt2.Clear;
  Edt3.Clear;
  Edt4.Clear;
  Edt5.Clear;
end;

procedure TForm1.dbgrd1CellClick(Column: TColumn);
begin
  id := zqry1.Fields[0].AsString;
edt1.Text := zqry1.Fields[1].AsString;
edt2.Text := zqry1.Fields[2].AsString;
edt3.Text := zqry1.Fields[3].AsString;
edt4.Text := zqry1.Fields[4].AsString;
edt5.Text := zqry1.Fields[5].AsString;
end;

end.
