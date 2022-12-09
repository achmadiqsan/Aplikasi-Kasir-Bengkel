unit UService;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Panel5: TPanel;
    Edit6: TEdit;
    Panel2: TPanel;
    Label6: TLabel;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Edit4: TEdit;
    Label7: TLabel;
    Edit5: TEdit;
    Label9: TLabel;
    Edit7: TEdit;
    Label10: TLabel;
    Edit8: TEdit;
    Label11: TLabel;
    Edit9: TEdit;
    DBGrid1: TDBGrid;
    DBGrid2: TDBGrid;
    Label12: TLabel;
    ComboBox2: TComboBox;
    Label13: TLabel;
    Edit10: TEdit;
    Label14: TLabel;
    Edit11: TEdit;
    Panel3: TPanel;
    Label15: TLabel;
    Edit12: TEdit;
    Panel4: TPanel;
    Panel6: TPanel;
    Label16: TLabel;
    Edit13: TEdit;
    Label17: TLabel;
    ComboBox1: TComboBox;
    Edit14: TEdit;
    Label18: TLabel;
    Edit15: TEdit;
    Label19: TLabel;
    Label20: TLabel;
    Edit16: TEdit;
    Label21: TLabel;
    Edit17: TEdit;
    Label22: TLabel;
    ComboBox3: TComboBox;
    Panel7: TPanel;
    Panel8: TPanel;
    Panel9: TPanel;
    Label23: TLabel;
    Label24: TLabel;
    Label25: TLabel;
    Label27: TLabel;
    Label26: TLabel;
    Panel10: TPanel;
    Label28: TLabel;
    Label29: TLabel;
    Label30: TLabel;
    Label31: TLabel;
    Label32: TLabel;
    procedure Panel9Click(Sender: TObject);
    procedure Edit12Change(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure jasa;
    procedure mekanik;
    procedure Panel5Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure DBGrid2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit7Change(Sender: TObject);
    procedure ComboBox2Change(Sender: TObject);
    procedure Panel10Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure subtotal;
    procedure ComboBox1Change(Sender: TObject);
    procedure ComboBox3Change(Sender: TObject);
    procedure pilihdetaittransaksi;
    procedure hapus;
    procedure pilihdetil;
    procedure Edit16Change(Sender: TObject);
    procedure Panel7Click(Sender: TObject);
    procedure Panel8Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit7KeyPress(Sender: TObject; var Key: Char);
    procedure Edit16KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses
  UDataModule, UPelanggan, UCariPelanggan, DB, Math, ADODB, ULihatTransaksi;

{$R *.dfm}

procedure TForm5.Panel9Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQKodeTransaksi.Close;
  DM.ADOQKodeTransaksi.SQL.Clear;
  DM.ADOQKodeTransaksi.SQL.Add('SELECT TOP 1 HeaderTransaksi.noNota FROM HeaderTransaksi');
  DM.ADOQKodeTransaksi.SQL.Add('ORDER BY HeaderTransaksi.noNota DESC');
  DM.ADOQKodeTransaksi.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQKodeTransaksi.Fields[0].AsString, 4, 8);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('00000000', StrtoInt(id) + 1)
  else id := '00000001';

  // coding melakukan pengabungan kode string dan integer :
  Form5.Label23.Caption := 'NO-' + id;
  Label24.Caption := DateToStr(Date);
  pilihdetaittransaksi;
  Panel2.Enabled := True;
  Panel3.Enabled := True;
  Panel4.Enabled := True;
  Panel6.Enabled := True;
  Panel7.Enabled := True;
  DM.ADOQDataBarang.Close;
  DM.ADOQDataBarang.Open;
end;

procedure TForm5.Edit12Change(Sender: TObject);
begin
  if Edit12.Text = '' then
    begin
      Dm.ADOQDataBarang.Filtered := False;
    end
  else
    begin
       Dm.ADOQDataBarang.Close;
       Dm.ADOQDataBarang.Open;
       Dm.ADOQDataBarang.Filtered := False;
       DM.ADOQDataBarang.Filter :='namaBarang LIKE '+Quotedstr('%'+Edit12.Text+'%');
       Dm.ADOQDataBarang.Filtered := True;
    end;
end;

procedure TForm5.FormActivate(Sender: TObject);
begin
  //
end;

procedure TForm5.jasa;
begin
  combobox2.Clear;
     DM.ADOQDataJasa.Close;
     Dm.ADOQDataJasa.Open;
     While not Dm.ADOQDataJasa.Eof do
        begin
          combobox2.Items.Add(DM.ADOQDataJasa['namaJasa']);
          Dm.ADOQDataJasa.Next;
        end;
end;

procedure TForm5.mekanik;
begin
  combobox3.Clear;
  DM.ADOQDataMekanik.Close;
  Dm.ADOQDataMekanik.Open;
  While not Dm.ADOQDataMekanik.Eof do
    begin
      combobox3.Items.Add(DM.ADOQDataMekanik['namaMekanik']);
      Dm.ADOQDataMekanik.Next;
    end;
end;

procedure TForm5.Panel5Click(Sender: TObject);
begin
  Form3.Show;
end;

procedure TForm5.Panel2Click(Sender: TObject);
begin
  Form6.Show;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
  Label30.Caption := '0';
  DM.ADOQDetailTransaksi.Close;
  DM.ADOQDetailTransaksi.Open;
  DM.ADOQDataBarang.Close;
  DM.ADOQDataBarang.Open;
  Edit6.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Label25.Caption := '0';
  Edit4.Clear;
  Edit5.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
  Edit13.Text := '0';
  jasa;
  mekanik;
  label27.Caption := 'Jumlah Jasa';
  Label6.Caption := 'Rp. 000.000.000.000';
  ComboBox1.Text := '';
  Label28.Caption := 'Diskon';
  Edit14.Clear;
  Edit15.Clear;
  Edit16.Clear;
  Edit17.Clear;
  ComboBox3.Text := '';
  Label29.Caption := 'Nama Mekanik';
  Label23.Caption := 'No. Transaksi';
  label24.Caption := 'Tanggal';
  Panel2.Enabled := False;
  Panel3.Enabled := False;
  Panel4.Enabled := False;
  Panel6.Enabled := False;
  Panel7.Enabled := False;
end;

procedure TForm5.DBGrid2KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
  begin
    if (Label23.Caption = 'No. Transaksi') and (Label24.Caption = 'Tanggal') then
    MessageDlg('SILAHKAN KLIK TOMBOL NEW TERLEBIH DAHULU',mtinformation,[mbok],0)
    else
    begin
      Edit4.Text := DM.ADOQDataBarang['kodeBarang']  ;
      Edit5.Text := DM.ADOQDataBarang['namaBarang']  ;
      Edit8.Text := DM.ADOQDataBarang['hargaJual']  ;
      Label25.Caption := '1';
    end;
  end;
end;

procedure TForm5.Edit7Change(Sender: TObject);
begin
  if Label25.Caption = '1' then
  begin
    if Edit7.Text = '' then
    begin
      Edit9.Text := FloatToStr(StrToFloat(Edit8.Text) * 0);
    end
    else
    begin
      Edit9.Text := FloatToStr(StrToFloat(Edit8.Text) * StrToFloat(Edit7.Text));
    end;
  end;
end;

procedure TForm5.ComboBox2Change(Sender: TObject);
begin
  if DM.ADOQDataJasa.Locate('namaJasa',ComboBox2.Text,[]) then
  begin
    Edit10.Text := DM.ADOQDataJasa['kodeJasa'];
    Edit11.Text := DM.ADOQDataJasa['biayaJasa'];
    Label27.Caption := '1';
    Label26.Caption := ComboBox2.Text;
  end;
end;

procedure TForm5.Panel10Click(Sender: TObject);
begin
  Label30.Caption := '0';
  hapus;
  DM.ADOQDetailTransaksi.Close;
  DM.ADOQDetailTransaksi.Open;
  Edit6.Clear;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Label25.Caption := '0';
  Edit4.Clear;
  Edit5.Clear;
  Edit7.Clear;
  Edit8.Clear;
  Edit9.Clear;
  Edit10.Clear;
  Edit11.Clear;
  Edit12.Clear;
  Edit13.Text := '0';
  jasa;
  mekanik;
  label27.Caption := 'Jumlah Jasa';
  Label6.Caption := 'Rp. 000.000.000.000';
  ComboBox1.Text := '';
  Label28.Caption := 'Diskon';
  Edit14.Clear;
  Edit15.Clear;
  Edit16.Clear;
  Edit17.Clear;
  ComboBox3.Text := '';
  Label29.Caption := 'Nama Mekanik';
  Label23.Caption := 'No. Transaksi';
  label24.Caption := 'Tanggal';
  Panel2.Enabled := False;
  Panel3.Enabled := False;
  Panel4.Enabled := False;
  Panel6.Enabled := False;
  Panel7.Enabled := False;
  Label31.Caption := '';
  Label32.Caption := '';
end;

procedure TForm5.Panel4Click(Sender: TObject);
begin
  if Edit4.Text = '' then MessageDlg('Kode Barang Kosong',mtinformation,[mbok],0) else
  if Edit5.Text = '' then MessageDlg('Nama Barang Kosong',mtinformation,[mbok],0) else
  if Edit7.Text = '' then MessageDlg('Qty Kosong',mtinformation,[mbok],0) else
  if Edit8.Text = '' then MessageDlg('Harga Satuan Kosong',mtinformation,[mbok],0) else
  if Edit9.Text = '' then MessageDlg('Total Kosong',mtinformation,[mbok],0) else
    begin
      Label25.Caption := '0';
      //
      DM.ADOQDataBarang.Edit;
      DM.ADOQDataBarang['stok'] := DM.ADOQDataBarang['stok'] - StrToFloat(Edit7.Text);
      DM.ADOQDataBarang.Post; 
      //
      DM.ADOQDetailTransaksi.Append;
      DM.ADOQDetailTransaksi['noNota'] := Label23.Caption;
      DM.ADOQDetailTransaksi['tglTransaksi'] := Label24.Caption;
      DM.ADOQDetailTransaksi['kode'] := Edit4.Text;
      DM.ADOQDetailTransaksi['jasaOrBarang'] := Edit5.Text;
      DM.ADOQDetailTransaksi['jumlah'] := Edit7.Text;
      DM.ADOQDetailTransaksi['hargaSatuan'] := Edit8.Text;
      DM.ADOQDetailTransaksi['total'] := Edit9.Text;
      DM.ADOQDetailTransaksi.Post;
      Edit4.Clear;
      Edit5.Clear;
      Edit7.Clear;
      Edit8.Clear;
      Edit9.Clear;
      subtotal;
      if DM.ADOQSubTotal['TTLHARGA'] = null then
      begin
        Edit13.Text :=  '';
        Label6.Caption := 'Rp. 000.000.000.000';
      end
      else
      begin
        Edit13.Text :=  DM.ADOQSubTotal['TTLHARGA'];
        Label6.Caption := 'Rp. ' + FormatFloat('#,#0.00;(#,#0.00);#,#0.00',StrToFloat(Edit13.Text));
      end;
      ComboBox1.Text := '';
      Label28.Caption := 'Diskon';
      Edit14.Clear;
      Edit15.Clear;
      Edit16.Clear;
      Edit17.Clear;
      ComboBox3.Text := '';
      Label29.Caption := 'Nama Mekanik';
      Label30.Caption := '1';
    end;
end;

procedure TForm5.Panel6Click(Sender: TObject);
var
  data : string;
begin
  if Dm.ADOQDetailTransaksi.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Label25.Caption := '0';
     //
     // coding untuk mengcopy nilai yang di seleksi :
     data := Copy(Label31.Caption, 0, 2);
     //
     if data = 'BA' then
     begin
       DM.ADOQDataBarang.Edit;
       DM.ADOQDataBarang['stok'] := DM.ADOQDataBarang['stok'] + StrToFloat(Label32.Caption);
       DM.ADOQDataBarang.Post;
     end;
     //
     Dm.ADOQDetailTransaksi.Delete;
     Edit4.Clear;
     Edit5.Clear;
     Edit7.Clear;
     Edit8.Clear;
     Edit9.Clear;
     subtotal;
     if DM.ADOQSubTotal['TTLHARGA'] = null then
      begin
        Edit13.Text :=  '';
        Label6.Caption := 'Rp. 000.000.000.000';
      end
      else
      begin
        Edit13.Text :=  DM.ADOQSubTotal['TTLHARGA'];
        Label6.Caption := 'Rp. ' + FormatFloat('#,#0.00;(#,#0.00);#,#0.00',StrToFloat(Edit13.Text));
      end;
     ComboBox1.Text := '';
      Label28.Caption := 'Diskon';
      Edit14.Clear;
      Edit15.Clear;
      Edit16.Clear;
      Edit17.Clear;
      ComboBox3.Text := '';
      Label29.Caption := 'Nama Mekanik';
      Label30.Caption := '1';
      Label31.Caption := '';
      Label32.Caption := '';
   End;
end;

procedure TForm5.Panel3Click(Sender: TObject);
begin
  if ComboBox2.Text <> label26.Caption then MessageDlg('Data Pada Pilih Jasa Tidak Boleh Berubah Silahkan Pilih Kembali',mtinformation,[mbok],0) else
    begin
      DM.ADOQDetailTransaksi.Append;
      DM.ADOQDetailTransaksi['noNota'] := Label23.Caption;
      DM.ADOQDetailTransaksi['tglTransaksi'] := Label24.Caption;
      DM.ADOQDetailTransaksi['kode'] := Edit10.Text;
      DM.ADOQDetailTransaksi['jasaOrBarang'] := ComboBox2.Text;
      DM.ADOQDetailTransaksi['jumlah'] := Label27.Caption;
      DM.ADOQDetailTransaksi['hargaSatuan'] := Edit11.Text;
      DM.ADOQDetailTransaksi['total'] := Edit11.Text;
      DM.ADOQDetailTransaksi.Post;
      ComboBox2.Text := '';
      Edit10.Clear;
      Edit11.Clear;
      Label27.Caption := 'Jumlah Jasa';
      subtotal;
      if DM.ADOQSubTotal['TTLHARGA'] = null then
      begin
        Edit13.Text :=  '';
        Label6.Caption := 'Rp. 000.000.000.000';
      end
      else
      begin
        Edit13.Text :=  DM.ADOQSubTotal['TTLHARGA'];
        Label6.Caption := 'Rp. ' + FormatFloat('#,#0.00;(#,#0.00);#,#0.00',StrToFloat(Edit13.Text));
      end;
      ComboBox1.Text := '';
      Label28.Caption := 'Diskon';
      Edit14.Clear;
      Edit15.Clear;
      Edit16.Clear;
      Edit17.Clear;
      ComboBox3.Text := '';
      Label29.Caption := 'Nama Mekanik';
      Label30.Caption := '1';
    end;
end;

procedure TForm5.subtotal;
begin
  with DM.ADOQSubTotal do
  begin
    Close;
    SQL.Clear;
    SQL.Add('SELECT SUM(total) AS TTLHARGA FROM DetailTransaksi WHERE noNota = "'+Label23.Caption+'"');
    Open;
  end;
end;

procedure TForm5.ComboBox1Change(Sender: TObject);
begin
  if Label30.Caption = '1' then
  begin
    if ComboBox1.Text <> '' then
    begin
      Label28.Caption := ComboBox1.Text;
      Edit14.Text := FloatToStr(StrToFloat(Edit13.Text) * (StrToFloat(ComboBox1.Text) / 100));
      Edit15.Text := FloatToStr(StrToFloat(Edit13.Text) - StrToFloat(Edit14.Text));
      label6.Caption := 'Rp. ' + FormatFloat('#,#0.00;(#,#0.00);#,#0.00',StrToFloat(Edit15.Text));
    end;
  end;
end;

procedure TForm5.ComboBox3Change(Sender: TObject);
begin
  Label29.Caption := ComboBox3.Text;
end;

procedure TForm5.pilihdetaittransaksi;
begin
  with DM.ADOQDetailTransaksi do
  begin
    Close;
    sql.Clear;
    sql.Add('SELECT * FROM DetailTransaksi WHERE noNota= "'+Label23.Caption+'"');
    Open;
  end;
end;

procedure TForm5.hapus;
begin
  with DM.ADOQuery1 do
  begin
    Close;
    SQL.Clear;
    SQL.Add('DELETE * FROM DetailTransaksi WHERE noNota="'+Label23.Caption+'"');
    ExecSQL;
  end;
end;

procedure TForm5.pilihdetil;
begin
//  with DM.ADOQDetailTransaksi do
//  begin
//    Close;
//    sql.Clear;
//    sql.Add('SELECT * FROM DetailTransaksi');
//    Open;
//  end;
end;

procedure TForm5.Edit16Change(Sender: TObject);
begin
    if Edit16.Text <> '' then
    begin
      Edit17.Text := FloatToStr(StrToFloat(Edit16.Text) - StrToFloat(Edit15.Text));
    end;
end;

procedure TForm5.Panel7Click(Sender: TObject);
begin
  if Edit6.Text = '' then MessageDlg('Nama Pelanggan Kosong',mtinformation,[mbok],0) else
  if Edit1.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Kendaraan Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Nomor Polisi Kosong',mtinformation,[mbok],0) else
  if ComboBox1.Text <> label28.Caption then MessageDlg('Data Pada Diskon Tidak Boleh Berubah Silahkan Pilih Kembali',mtinformation,[mbok],0) else
  if Edit14.Text = '' then MessageDlg('Total Diskon Kosong',mtinformation,[mbok],0) else
  if Edit15.Text = '' then MessageDlg('Harga Bayar Kosong',mtinformation,[mbok],0) else
  if (Edit16.Text = '') or (Edit16.Text = '0') then MessageDlg('Bayar Kosong Atau Tidak Boleh Angka 0 Saja !!!',mtinformation,[mbok],0) else
  if Edit17.Text = '' then MessageDlg('Kembali Kosong',mtinformation,[mbok],0) else
  if ComboBox3.Text <> label29.Caption then MessageDlg('Data Pada Nama Mekanik Tidak Boleh Berubah Silahkan Pilih Kembali',mtinformation,[mbok],0) else
  begin
    DM.ADOQHeaderTransaksi.Append;
    DM.ADOQHeaderTransaksi['noNota'] := Label23.Caption;
    DM.ADOQHeaderTransaksi['tglTransaksi'] := Label24.Caption;
    DM.ADOQHeaderTransaksi['namaPelanggan'] := Edit6.Text;
    DM.ADOQHeaderTransaksi['noTelpon'] := Edit1.Text;
    DM.ADOQHeaderTransaksi['kendaraan'] := Edit2.Text;
    DM.ADOQHeaderTransaksi['nopol'] := Edit3.Text;
    DM.ADOQHeaderTransaksi['diskon'] := ComboBox1.Text;
    DM.ADOQHeaderTransaksi['totalDiskon'] := Edit14.Text;
    DM.ADOQHeaderTransaksi['hargaBayar'] := Edit15.Text;
    DM.ADOQHeaderTransaksi['bayar'] := Edit16.Text;
    DM.ADOQHeaderTransaksi['kembali'] := Edit17.Text;
    DM.ADOQHeaderTransaksi['mekanik'] := ComboBox3.Text;
    DM.ADOQHeaderTransaksi.Post;
    Label30.Caption := '0';
    DM.ADOQDetailTransaksi.Close;
    DM.ADOQDetailTransaksi.Open;
    DM.ADOQDataBarang.Close;
    DM.ADOQDataBarang.Open;
    Edit6.Clear;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Label25.Caption := '0';
    Edit4.Clear;
    Edit5.Clear;
    Edit7.Clear;
    Edit8.Clear;
    Edit9.Clear;
    Edit10.Clear;
    Edit11.Clear;
    Edit12.Clear;
    Edit13.Text := '0';
    jasa;
    mekanik;
    label27.Caption := 'Jumlah Jasa';
    Label6.Caption := 'Rp. 000.000.000.000';
    ComboBox1.Text := '';
    Label28.Caption := 'Diskon';
    Edit14.Clear;
    Edit15.Clear;
    Edit16.Clear;
    Edit17.Clear;
    ComboBox3.Text := '';
    Label29.Caption := 'Nama Mekanik';
    Label23.Caption := 'No. Transaksi';
    label24.Caption := 'Tanggal';
    Panel2.Enabled := False;
    Panel3.Enabled := False;
    Panel4.Enabled := False;
    Panel6.Enabled := False;
    Panel7.Enabled := False;
    Label31.Caption := '';
    Label32.Caption := '';
  end;
end;

procedure TForm5.Panel8Click(Sender: TObject);
begin
  Form7.Show;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  if Label23.Caption = 'No. Transaksi' then MessageDlg('SILAHKAN ANDA KLIK TOMBOL NEW TERLEBIH DAHULU',mtinformation,[mbok],0) else
  if DM.ADOQDetailTransaksi.IsEmpty then MessageDlg('DATA YANG ANDA PILIH KOSONG',mtinformation,[mbok],0) else
  begin
    Label31.Caption := DM.ADOQDetailTransaksi['kode'];
    Label32.Caption := DM.ADOQDetailTransaksi['jumlah'];
  end;
end;

procedure TForm5.Edit7KeyPress(Sender: TObject; var Key: Char);
begin
  if not (key in['0'..'9',#8]) then
   begin
     key:=#0;
     MessageDlg('Silahkan Masukkan Angka Tidak Boleh Huruf dan yang Lainnya !!!',mtInformation,[mbok],0);
   end;
end;

procedure TForm5.Edit16KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9', #8, #13, #32]) then
  begin
  key :=#0;
  MessageDlg('Nilai yang diinput harus angka !!!',mtError,[mbOK],0);
  end
end;

end.
