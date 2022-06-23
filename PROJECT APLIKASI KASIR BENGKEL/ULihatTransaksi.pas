unit ULihatTransaksi;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm7 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    ComboBox1: TComboBox;
    Edit5: TEdit;
    Panel6: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel3Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses
  UDataModule, ULaporan;

{$R *.dfm}

procedure TForm7.Panel2Click(Sender: TObject);
begin
  ComboBox1.Text := '';
  Edit5.Clear;
  Label4.Caption := 'No Nota';
  Label5.Caption := 'Tanggal Transaksi';
  DM.ADOQHeaderTransaksi.Filtered := False;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  label4.Caption := DM.ADOQHeaderTransaksi['noNota'];
  label5.Caption := DM.ADOQHeaderTransaksi['tglTransaksi'];
end;

procedure TForm7.Panel3Click(Sender: TObject);
var
  data,data1,data2,data3,data4 : String;
begin
  if (label4.Caption = 'No Nota') or (label4.Caption = 'No Nota') then MessageDlg('SILAHKAN DI PILIH TERLEBIH DAHULU DATANYA',mtinformation,[mbok],0) else
  if (label5.Caption = 'Tanggal Transaksi') or (label4.Caption = 'No Nota') then MessageDlg('SILAHKAN DI PILIH TERLEBIH DAHULU DATANYA',mtinformation,[mbok],0) else
    begin
      with DM.ADOQLapHeader do
      begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM HeaderTransaksi WHERE noNota = "'+Label4.Caption+'"');
        Open;
      end;
      //
      with DM.ADOQLapDetail do
      begin
        Close;
        sql.Clear;
        sql.Add('SELECT * FROM DetailTransaksi WHERE noNota = "'+Label4.Caption+'"');
        Open;
      end;
      //
      with DM.ADOQtotal do
      begin
        Close;
        sql.Clear;
        sql.Add('SELECT SUM(total) AS TTL FROM DetailTransaksi WHERE noNota = "'+Label4.Caption+'"');
        Open;
      end;
      //
      Form8.QRLabel1.Caption := DM.ADOQuery2['namaUsaha'];
      Form8.QRLabel2.Caption := DM.ADOQuery2['alamat'];
      Form8.QRLabel3.Caption := 'Telp. ' + DM.ADOQuery2['telp'];
      Form8.QRLabel39.Caption := DM.ADOQuery2['namaUsaha'];
      //
      Form8.QRLabel9.Caption := DM.ADOQLapHeader['noNota'];
      Form8.QRLabel6.Caption := DM.ADOQLapHeader['tglTransaksi'];
      //
      Form8.QRLabel13.Caption := DM.ADOQLapHeader['namaPelanggan'];
      Form8.QRLabel14.Caption := DM.ADOQLapHeader['kendaraan'];
      Form8.QRLabel16.Caption := DM.ADOQLapHeader['noTelpon'];
      Form8.QRLabel18.Caption := DM.ADOQLapHeader['nopol'];
      Form8.QRLabel23.Caption := DM.ADOQLapHeader['mekanik'];
      //
      data := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQtotal['TTL']);
      data1 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['totalDiskon']);
      data2 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['hargaBayar']);
      data3 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['bayar']);
      data4 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['kembali']);
      Form8.QRLabel26.Caption := data;
      Form8.QRLabel30.Caption := data1;
      Form8.QRLabel33.Caption := data2;
      Form8.QRLabel35.Caption := data3;
      Form8.QRLabel37.Caption := data4;
      //
      //data3 := FormatFloat('#,#0.00;(#,#0.00);#,#0.00',DM.ADOQLapHeader['totalHarga'] * (DM.ADOQPajak['ppn'] / 100));
      //Form8.QRLabel35.Caption := data3;
      Form8.QuickRep1.Preview;
    end;
end;

procedure TForm7.Panel6Click(Sender: TObject);
begin
  if (ComboBox1.Text = '') and (Edit5.Text = '') then
    begin
      DM.ADOQHeaderTransaksi.Filtered := False;
    end
  else
  if (ComboBox1.Text = 'No Nota') and (Edit5.Text <> '') then
    begin
       Dm.ADOQHeaderTransaksi.Close;
       Dm.ADOQHeaderTransaksi.Open;
       Dm.ADOQHeaderTransaksi.Filtered := False;
       DM.ADOQHeaderTransaksi.Filter :='noNota LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQHeaderTransaksi.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'Nama Pelanggan') and (Edit5.Text <> '') then
    begin
       Dm.ADOQHeaderTransaksi.Close;
       Dm.ADOQHeaderTransaksi.Open;
       Dm.ADOQHeaderTransaksi.Filtered := False;
       DM.ADOQHeaderTransaksi.Filter :='namaPelanggan LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQHeaderTransaksi.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'Kendaraan') and (Edit5.Text <> '') then
    begin
       Dm.ADOQHeaderTransaksi.Close;
       Dm.ADOQHeaderTransaksi.Open;
       Dm.ADOQHeaderTransaksi.Filtered := False;
       DM.ADOQHeaderTransaksi.Filter :='kendaraan LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQHeaderTransaksi.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'Nomor Polisi') and (Edit5.Text <> '') then
    begin
       Dm.ADOQHeaderTransaksi.Close;
       Dm.ADOQHeaderTransaksi.Open;
       Dm.ADOQHeaderTransaksi.Filtered := False;
       DM.ADOQHeaderTransaksi.Filter :='nopol LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQHeaderTransaksi.Filtered := True;
    end
  else
  if (ComboBox1.Text <> '') and (Edit5.Text = '') then
    begin
      DM.ADOQHeaderTransaksi.Filtered := False;
    end;
end;

procedure TForm7.FormActivate(Sender: TObject);
begin
  ComboBox1.Text := '';
  Edit5.Clear;
  Label4.Caption := 'No Nota';
  Label5.Caption := 'Tanggal Transaksi';
  DM.ADOQHeaderTransaksi.Filtered := False;
  DM.ADOQHeaderTransaksi.Close;
  DM.ADOQHeaderTransaksi.Open;
end;

end.
