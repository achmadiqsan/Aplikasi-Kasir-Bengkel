unit UPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, ExtCtrls;

type
  TForm3 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Label6: TLabel;
    Edit5: TEdit;
    ComboBox1: TComboBox;
    Label7: TLabel;
    Panel6: TPanel;
    Panel7: TPanel;
    procedure Panel7Click(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Panel6Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

uses
  UDataModule, UMekanik;

{$R *.dfm}

procedure TForm3.Panel7Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQIdPelanggan.Close;
  DM.ADOQIdPelanggan.SQL.Clear;
  DM.ADOQIdPelanggan.SQL.Add('SELECT TOP 1 DataPelanggan.idPelanggan FROM DataPelanggan');
  DM.ADOQIdPelanggan.SQL.Add('ORDER BY DataPelanggan.idPelanggan DESC');
  DM.ADOQIdPelanggan.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQIdPelanggan.Fields[0].AsString, 4, 6);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('000000', StrtoInt(id) + 1)
  else id := '000001';

  // coding melakukan pengabungan kode string dan integer :
  Form3.Edit1.Text := 'ID-' + id;
  Panel5.Enabled := True;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  ComboBox1.Text := '';
  DM.ADOQDataPelanggan.Filtered := False;
end;

procedure TForm3.Panel2Click(Sender: TObject);
begin
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  ComboBox1.Text := '';
  DM.ADOQDataPelanggan.Filtered := False;
end;

procedure TForm3.Panel5Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('ID Pelanggan Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Pelanggan Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQDataPelanggan.Append;
      DM.ADOQDataPelanggan['idPelanggan'] := Edit1.Text;
      DM.ADOQDataPelanggan['namaPelanggan'] := Edit2.Text;
      DM.ADOQDataPelanggan['noTelpon'] := Edit3.Text;
      DM.ADOQDataPelanggan['ALamat'] := Edit4.Text;
      DM.ADOQDataPelanggan.Post;
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Panel5.Enabled := False;
    end;
end;

procedure TForm3.Panel4Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('ID Pelanggan Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Pelanggan Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQDataPelanggan.Edit;
      DM.ADOQDataPelanggan['idPelanggan'] := Edit1.Text;
      DM.ADOQDataPelanggan['namaPelanggan'] := Edit2.Text;
      DM.ADOQDataPelanggan['noTelpon'] := Edit3.Text;
      DM.ADOQDataPelanggan['ALamat'] := Edit4.Text;
      DM.ADOQDataPelanggan.Post;
      Edit1.Clear;
      Edit2.Clear;
      Edit3.Clear;
      Edit4.Clear;
      Panel4.Enabled := False;
      Panel3.Enabled := False;
    end;
end;

procedure TForm3.Panel3Click(Sender: TObject);
begin
  if Dm.ADOQDataPelanggan.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQDataPelanggan.Delete;
     Edit1.Clear;
     Edit2.Clear;
     Edit3.Clear;
     Edit4.Clear;
     Panel4.Enabled := False;
     Panel3.Enabled := False;
   End;
end;

procedure TForm3.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQDataPelanggan.IsEmpty then MessageDlg('Data Pelanggan Kosong',mtInformation,[mbok],0) else
  begin
    Edit1.Text := DM.ADOQDataPelanggan['idPelanggan']  ;
    Edit2.Text := DM.ADOQDataPelanggan['namaPelanggan']  ;
    Edit3.Text := DM.ADOQDataPelanggan['noTelpon']  ;
    Edit4.Text := DM.ADOQDataPelanggan['Alamat']  ;
    Panel5.Enabled := False;
    Panel4.Enabled := True;
    Panel3.Enabled := True;
  end;

end;

procedure TForm3.Panel6Click(Sender: TObject);
begin
  if (ComboBox1.Text = '') and (Edit5.Text = '') then
    begin
      DM.ADOQDataPelanggan.Filtered := False;
    end
  else
  if (ComboBox1.Text = 'ID PELANGGAN') and (Edit5.Text <> '') then
    begin
       Dm.ADOQDataPelanggan.Close;
       Dm.ADOQDataPelanggan.Open;
       Dm.ADOQDataPelanggan.Filtered := False;
       DM.ADOQDataPelanggan.Filter :='idPelanggan LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQDataPelanggan.Filtered := True;
    end
  else
  if (ComboBox1.Text = 'NAMA PELANGGAN') and (Edit5.Text <> '') then
    begin
       Dm.ADOQDataPelanggan.Close;
       Dm.ADOQDataPelanggan.Open;
       Dm.ADOQDataPelanggan.Filtered := False;
       DM.ADOQDataPelanggan.Filter :='namaPelanggan LIKE '+Quotedstr('%'+Edit5.Text+'%');
       Dm.ADOQDataPelanggan.Filtered := True;
    end
  else
  if (ComboBox1.Text <> '') and (Edit5.Text = '') then
    begin
      DM.ADOQDataPelanggan.Filtered := False;
    end;
end;

procedure TForm3.FormActivate(Sender: TObject);
begin
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Edit5.Clear;
  ComboBox1.Text := '';
  DM.ADOQDataPelanggan.Filtered := False;
end;

procedure TForm3.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in['0'..'9', #8, #13, #32]) then
  begin
  key :=#0;
  MessageDlg('Nilai yang diinput harus angka !!!',mtError,[mbOK],0);
  end
end;

end.
