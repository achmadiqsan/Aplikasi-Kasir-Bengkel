unit UMainMenu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, jpeg, frxpngimage, ExtCtrls, Grids, DBGrids, TeEngine, Series,
  TeeProcs, Chart, DBCtrls, StdCtrls;

type
  TForm1 = class(TForm)
    Panel1: TPanel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Shape1: TShape;
    Shape2: TShape;
    Image8: TImage;
    Panel2: TPanel;
    Image9: TImage;
    Image10: TImage;
    Image11: TImage;
    DBGrid1: TDBGrid;
    Image12: TImage;
    Panel3: TPanel;
    Chart1: TChart;
    Series1: TBarSeries;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    Image13: TImage;
    Image14: TImage;
    Image15: TImage;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    Label2: TLabel;
    ComboBox1: TComboBox;
    procedure Image7Click(Sender: TObject);
    procedure Image4Click(Sender: TObject);
    procedure Image3Click(Sender: TObject);
    procedure Image2Click(Sender: TObject);
    procedure Image5Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure jmlInvetoryBrng1;
    procedure ttlNilaiBrng1;
    procedure jmlPlgn1;
    procedure Image6Click(Sender: TObject);
    procedure data;
    procedure ComboBox1Change(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses
  UMekanik, UPelanggan, UBarang, UService, UDataModule, DB;

{$R *.dfm}

procedure TForm1.Image7Click(Sender: TObject);
begin
  Application.Terminate;
end;

procedure TForm1.Image4Click(Sender: TObject);
begin
  Form2.Show;
end;

procedure TForm1.Image3Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm1.Image2Click(Sender: TObject);
begin
  Form5.Show;
end;

procedure TForm1.Image5Click(Sender: TObject);
begin
  Form4.Show;
end;

procedure TForm1.FormActivate(Sender: TObject);
var
  x : integer;
begin
  combobox1.Clear;
  x := 2022;
  while (x<2222) do
  begin
   combobox1.Items.Add(inttostr(x));
   inc(x);
  end;
  jmlInvetoryBrng1;
  ttlNilaiBrng1;
  jmlPlgn1;
end;

procedure TForm1.jmlInvetoryBrng1;
begin
  with DM.jmlInvetoryBrng do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(DataBarang.stok) AS jmlBrg FROM DataBarang');
    Open;
  end;
  Panel7.Caption := FormatFloat('#,#0;(#,#0);#,#0',DM.jmlInvetoryBrng['jmlBrg']);
end;

procedure TForm1.ttlNilaiBrng1;
begin
  with DM.ttlNilaiBrng do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(DataBarang.hargaJual * DataBarang.stok) AS nilaiBrng FROM DataBarang');
    Open;
  end;
  Panel8.Caption := FormatFloat('#,#0;(#,#0);#,#0',DM.ttlNilaiBrng['nilaiBrng']);
end;

procedure TForm1.jmlPlgn1;
begin
  with DM.jmlPlgn do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT Count(DataPelanggan.idPelanggan) AS jmlPlg FROM DataPelanggan');
    Open;
  end;
  Panel9.Caption := FormatFloat('#,#0;(#,#0);#,#0',DM.jmlPlgn['jmlPlg']);
end;

procedure TForm1.Image6Click(Sender: TObject);
begin
  jmlInvetoryBrng1;
  ttlNilaiBrng1;
  jmlPlgn1;
end;

procedure TForm1.data;
var
  JAN,FEB,MAR,APR,MEI,JUN,JUL,AUG,SEP,OKT,NOV,DES : Real;
begin
  with DM.JAN do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS JAN FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 1 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.JAN['JAN'] = null then JAN := 0 else JAN := DM.JAN['JAN'];
  Chart1.Series[0].Add(JAN,'JAN');
  //
  with DM.FEB do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS FEB FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 2 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.FEB['FEB'] = null then FEB := 0 else FEB := DM.FEB['FEB'];
  Chart1.Series[0].Add(FEB,'FEB');
  //
  with DM.MAR do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS MAR FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 3 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.MAR['MAR'] = null then MAR := 0 else MAR := DM.MAR['MAR'];
  Chart1.Series[0].Add(MAR,'MAR');
  //
  with DM.APR do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS APR FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 4 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.APR['APR'] = null then APR := 0 else APR := DM.APR['APR'];
  Chart1.Series[0].Add(APR,'APR');
  //
  with DM.MEI do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS MEI FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 5 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.MEI['MEI'] = null then MEI := 0 else MEI := DM.MEI['MEI'];
  Chart1.Series[0].Add(MEI,'MEI');
  //
  with DM.JUN do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS JUN FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 6 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.JUN['JUN'] = null then JUN := 0 else JUN := DM.JUN['JUN'];
  Chart1.Series[0].Add(JUN,'JUN');
  //
  with DM.JUL do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS JUL FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 7 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.JUL['JUL'] = null then JUL := 0 else JUL := DM.JUL['JUL'];
  Chart1.Series[0].Add(JUL,'JUL');
  //
  with DM.AUG do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS AUG FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 8 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.AUG['AUG'] = null then AUG := 0 else AUG := DM.AUG['AUG'];
  Chart1.Series[0].Add(AUG,'AUG');
  //
  with DM.SEP do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS SEP FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 9 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.SEP['SEP'] = null then SEP := 0 else SEP := DM.SEP['SEP'];
  Chart1.Series[0].Add(SEP,'SEP');
  //
  with DM.OKT do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS OKT FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 10 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.OKT['OKT'] = null then OKT := 0 else OKT := DM.OKT['OKT'];
  Chart1.Series[0].Add(OKT,'OKT');
  //
  with DM.NOV do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS NOV FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 11 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.NOV['NOV'] = null then NOV := 0 else NOV := DM.NOV['NOV'];
  Chart1.Series[0].Add(NOV,'NOV');
  //
  with DM.DES do
  begin
    close;
    sql.Clear;
    sql.Add('SELECT SUM(DetailTransaksi.total) AS DES FROM DetailTransaksi');
    sql.Add('WHERE MONTH(DetailTransaksi.tglTransaksi) = 12 AND YEAR(DetailTransaksi.tglTransaksi) = "'+ComboBox1.Text+'"');
    open;
  end;
  if DM.DES['DES'] = null then DES := 0 else DES := DM.DES['DES'];
  Chart1.Series[0].Add(DES,'DES');
end;

procedure TForm1.ComboBox1Change(Sender: TObject);
begin
  if ComboBox1.Text <> '' then
  begin
    Chart1.Series[0].Clear;
    data;
  end;
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  Chart1.Series[0].Add(0,'JAN');
  Chart1.Series[0].Add(0,'FEB');
  Chart1.Series[0].Add(0,'MAR');
  Chart1.Series[0].Add(0,'APR');
  Chart1.Series[0].Add(0,'MEI');
  Chart1.Series[0].Add(0,'JUN');
  Chart1.Series[0].Add(0,'JUL');
  Chart1.Series[0].Add(0,'AUG');
  Chart1.Series[0].Add(0,'SEP');
  Chart1.Series[0].Add(0,'OKT');
  Chart1.Series[0].Add(0,'NOV');
  Chart1.Series[0].Add(0,'DES');
end;

end.
