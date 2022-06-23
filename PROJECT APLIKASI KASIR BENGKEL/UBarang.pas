unit UBarang;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TForm4 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Panel6: TPanel;
    Panel7: TPanel;
    Label8: TLabel;
    Edit6: TEdit;
    Edit7: TEdit;
    Label9: TLabel;
    Label10: TLabel;
    ComboBox2: TComboBox;
    Label11: TLabel;
    Label12: TLabel;
    procedure Panel7Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit7Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TForm4.Panel7Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQIdBarang.Close;
  DM.ADOQIdBarang.SQL.Clear;
  DM.ADOQIdBarang.SQL.Add('SELECT TOP 1 DataBarang.kodeBarang FROM DataBarang');
  DM.ADOQIdBarang.SQL.Add('ORDER BY DataBarang.kodeBarang DESC');
  DM.ADOQIdBarang.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQIdBarang.Fields[0].AsString, 4, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  Form4.Edit6.Text := 'BA-' + id;
  Panel5.Enabled := True;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit7.Clear;
  ComboBox2.Text := '';
  DM.ADOQDataBarang.Filtered := False;
end;

procedure TForm4.FormActivate(Sender: TObject);
begin
  combobox2.Clear;
  DM.ADOQKategori.Close;
  Dm.ADOQKategori.Open;
  While not Dm.ADOQKategori.Eof do
    begin
      combobox2.Items.Add(DM.ADOQKategori['kategori']);
      Dm.ADOQKategori.Next;
    end;
  Edit6.Clear;
  Edit1.Clear;
  ComboBox2.Text := '';
  Edit2.Clear;
  Edit7.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  ComboBox1.Text := '';
  Edit5.Clear;
  Label11.Caption := '1';
  Label12.Caption := '0';
end;

procedure TForm4.Panel5Click(Sender: TObject);
begin
  if Edit6.Text = '' then MessageDlg('Kode Barang Kosong',mtinformation,[mbok],0) else
  if Edit1.Text = '' then MessageDlg('Nama Barang Kosong',mtinformation,[mbok],0) else
  if ComboBox2.Text = '' then MessageDlg('Kategori Kosong',mtinformation,[mbok],0) else
  if Edit7.Text = '' then MessageDlg('Harga Jual Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Harga Beli Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Keuntungan Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Stok Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQDataBarang.Append;
      DM.ADOQDataBarang['kodeBarang'] := Edit6.Text;
      DM.ADOQDataBarang['namaBarang'] := Edit1.Text;
      DM.ADOQDataBarang['kategori'] := ComboBox2.Text;
      DM.ADOQDataBarang['hargaBeli'] := Edit2.Text;
      DM.ADOQDataBarang['hargaJual'] := Edit7.Text;
      DM.ADOQDataBarang['Laba'] := Edit3.Text;
      DM.ADOQDataBarang['stok'] := Edit4.Text;
      DM.ADOQDataBarang.Post;
      Edit6.Clear;
      Edit1.Clear;
      ComboBox2.Text := '';
      Edit2.Clear;
      Edit7.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Panel5.Enabled := False;
    end;
end;

procedure TForm4.Panel4Click(Sender: TObject);
begin
  if Edit6.Text = '' then MessageDlg('Kode Barang Kosong',mtinformation,[mbok],0) else
  if Edit1.Text = '' then MessageDlg('Nama Barang Kosong',mtinformation,[mbok],0) else
  if ComboBox2.Text = '' then MessageDlg('Kategori Kosong',mtinformation,[mbok],0) else
  if Edit7.Text = '' then MessageDlg('Harga Jual Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Harga Beli Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('Keuntungan Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Stok Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQDataBarang.Edit;
      DM.ADOQDataBarang['kodeBarang'] := Edit6.Text;
      DM.ADOQDataBarang['namaBarang'] := Edit1.Text;
      DM.ADOQDataBarang['kategori'] := ComboBox2.Text;
      DM.ADOQDataBarang['hargaBeli'] := Edit2.Text;
      DM.ADOQDataBarang['hargaJual'] := Edit7.Text;
      DM.ADOQDataBarang['Laba'] := Edit3.Text;
      DM.ADOQDataBarang['stok'] := Edit4.Text;
      DM.ADOQDataBarang.Post;
      Edit6.Clear;
      Edit1.Clear;
      ComboBox2.Text := '';
      Edit2.Clear;
      Edit7.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Panel4.Enabled := False;
      Panel3.Enabled := False;
    end;
  Label11.Caption := '1';
  Label12.Caption := '0';
end;

procedure TForm4.Panel3Click(Sender: TObject);
begin
  if Dm.ADOQDataBarang.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQDataBarang.Delete;
     Edit6.Clear;
      Edit1.Clear;
      ComboBox2.Text := '';
      Edit2.Clear;
      Edit7.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Panel4.Enabled := False;
      Panel3.Enabled := False;
   End;
  Label11.Caption := '1';
  Label12.Caption := '0';
end;

procedure TForm4.Panel2Click(Sender: TObject);
begin
  Edit6.Clear;
  Edit1.Clear;
  ComboBox2.Text := '';
  Edit2.Clear;
  Edit7.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  ComboBox1.Text := '';
  Edit5.Clear;
  Label11.Caption := '1';
  Label12.Caption := '0';
end;

procedure TForm4.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQDataBarang.IsEmpty then MessageDlg('Data Barang Kosong',mtInformation,[mbok],0) else
  begin
    Label11.Caption := '0';
    Label12.Caption := '1';
    Edit6.Text := DM.ADOQDataBarang['kodeBarang']  ;
    Edit1.Text := DM.ADOQDataBarang['namaBarang']  ;
    ComboBox2.Text := DM.ADOQDataBarang['kategori']  ;
    Edit2.Text := DM.ADOQDataBarang['hargaBeli']  ;
    Edit7.Text := DM.ADOQDataBarang['hargaJual']  ;
    Edit3.Text := DM.ADOQDataBarang['Laba']  ;
    Edit4.Text := DM.ADOQDataBarang['stok']  ;
    Panel5.Enabled := False;
    Panel4.Enabled := True;
    Panel3.Enabled := True;
  end;  
end;

procedure TForm4.Edit7Change(Sender: TObject);
begin
  if Label11.Caption = '1' then
    begin
      if (Edit2.Text <> '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - 0);
      end
      else
      if (Edit2.Text <> '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - 0);
      end;
    end;

    if Label12.Caption = '1' then
    begin
      if (Edit2.Text <> '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - 0);
      end
      else
      if (Edit2.Text <> '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - 0);
      end;
    end;
end;

procedure TForm4.Edit2Change(Sender: TObject);
begin
  if Label11.Caption = '1' then
    begin
      if (Edit2.Text <> '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - 0);
      end
      else
      if (Edit2.Text <> '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - 0);
      end;
    end;

    if Label12.Caption = '1' then
    begin
      if (Edit2.Text <> '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text <> '') then
      begin
        Edit3.Text := FloatToStr(StrToFloat(Edit7.Text) - 0);
      end
      else
      if (Edit2.Text <> '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - StrToFloat(Edit2.Text));
      end
      else
      if (Edit2.Text = '') and (Edit7.Text = '') then
      begin
        Edit3.Text := FloatToStr(0 - 0);
      end;
    end;
end;

procedure TForm4.Panel6Click(Sender: TObject);
begin
  if (ComboBox1.Text = '') and (Edit5.Text = '') then
    begin
      DM.ADOQDataBarang.Filtered := False;
    end
  else
  if (ComboBox1.Text = 'KODE BARANG') and (Edit5.Text <> '') then
    begin
       Dm.ADOQDataBarang.Close;
       Dm.ADOQDataBarang.Open;
       Dm.ADOQDataBarang.Filtered := False;
       DM.ADOQDataBarang.Filter :='kodeBarang LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQDataBarang.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'NAMA BARANG') and (Edit5.Text <> '') then
    begin
       Dm.ADOQDataBarang.Close;
       Dm.ADOQDataBarang.Open;
       Dm.ADOQDataBarang.Filtered := False;
       DM.ADOQDataBarang.Filter :='namaBarang LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQDataBarang.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'KATEGORI') and (Edit5.Text <> '') then
    begin
       Dm.ADOQDataBarang.Close;
       Dm.ADOQDataBarang.Open;
       Dm.ADOQDataBarang.Filtered := False;
       DM.ADOQDataBarang.Filter :='kategori LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQDataBarang.Filtered := True;
    end
  else
  if (ComboBox1.Text <> '') and (Edit5.Text = '') then
    begin
      DM.ADOQDataBarang.Filtered := False;
    end;
end;

end.
