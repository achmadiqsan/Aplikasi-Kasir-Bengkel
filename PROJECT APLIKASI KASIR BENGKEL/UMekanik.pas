unit UMekanik;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, Grids, DBGrids, StdCtrls;

type
  TForm2 = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Label3: TLabel;
    Edit2: TEdit;
    Label4: TLabel;
    Edit3: TEdit;
    Label5: TLabel;
    Edit4: TEdit;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    Panel6: TPanel;
    procedure Panel2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure Panel6Click(Sender: TObject);
    procedure Panel5Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TForm2.Panel2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
end;

procedure TForm2.FormActivate(Sender: TObject);
begin
  Edit1.Clear;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
  Panel5.Enabled := False;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
end;

procedure TForm2.Panel6Click(Sender: TObject);
var
  id : string;
begin
    // coding untuk memilih kode dengan nomor yg paling terbesar :
  DM.ADOQIdMekanik.Close;
  DM.ADOQIdMekanik.SQL.Clear;
  DM.ADOQIdMekanik.SQL.Add('SELECT TOP 1 DataMekanik.idMekanik FROM DataMekanik');
  DM.ADOQIdMekanik.SQL.Add('ORDER BY DataMekanik.idMekanik DESC');
  DM.ADOQIdMekanik.Open;

  // coding untuk mengcopy nilai yang di seleksi :
  id := Copy(DM.ADOQIdMekanik.Fields[0].AsString, 4, 4);

  // coding jika seleksi = 0 maka id = 00001 jika tdk maka tambah 1 :
  if id <> '' then id := FormatFLoat('0000', StrtoInt(id) + 1)
  else id := '0001';

  // coding melakukan pengabungan kode string dan integer :
  Form2.Edit1.Text := 'MK-' + id;
  Panel5.Enabled := True;
  Panel4.Enabled := False;
  Panel3.Enabled := False;
  Edit2.Clear;
  Edit3.Clear;
  Edit4.Clear;
end;

procedure TForm2.Panel5Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('ID Mekanik Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Mekanik Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
  begin
    DM.ADOQDataMekanik.Append;
    DM.ADOQDataMekanik['idMekanik'] := Edit1.Text;
    DM.ADOQDataMekanik['NamaMekanik'] := Edit2.Text;
    DM.ADOQDataMekanik['noTelpon'] := Edit3.Text;
    DM.ADOQDataMekanik['Alamat'] := Edit4.Text;
    DM.ADOQDataMekanik.Post;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Panel5.Enabled := False;
  end;
end;

procedure TForm2.Panel4Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('ID Mekanik Kosong',mtinformation,[mbok],0) else
  if Edit2.Text = '' then MessageDlg('Nama Mekanik Kosong',mtinformation,[mbok],0) else
  if Edit3.Text = '' then MessageDlg('No Telpon Kosong',mtinformation,[mbok],0) else
  if Edit4.Text = '' then MessageDlg('Alamat Kosong',mtinformation,[mbok],0) else
  begin
    DM.ADOQDataMekanik.Edit;
    DM.ADOQDataMekanik['idMekanik'] := Edit1.Text;
    DM.ADOQDataMekanik['NamaMekanik'] := Edit2.Text;
    DM.ADOQDataMekanik['noTelpon'] := Edit3.Text;
    DM.ADOQDataMekanik['Alamat'] := Edit4.Text;
    DM.ADOQDataMekanik.Post;
    Edit1.Clear;
    Edit2.Clear;
    Edit3.Clear;
    Edit4.Clear;
    Panel4.Enabled := False;
    Panel3.Enabled := False;
  end;
end;

procedure TForm2.Panel3Click(Sender: TObject);
begin
  if Dm.ADOQDataMekanik.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQDataMekanik.Delete;
     Edit1.Clear;
     Edit2.Clear;
     Edit3.Clear;
     Edit4.Clear;
     Panel4.Enabled := False;
     Panel3.Enabled := False;
   End;
end;

procedure TForm2.DBGrid1CellClick(Column: TColumn);
begin
  if Dm.ADOQDataMekanik.IsEmpty then MessageDlg('Data Mekanik Kosong',mtInformation,[mbok],0) else
  begin
    Edit1.Text := DM.ADOQDataMekanik['idMekanik']  ;
    Edit2.Text := DM.ADOQDataMekanik['NamaMekanik']  ;
    Edit3.Text := DM.ADOQDataMekanik['noTelpon']  ;
    Edit4.Text := DM.ADOQDataMekanik['Alamat']  ;
    Panel5.Enabled := False;
    Panel4.Enabled := True;
    Panel3.Enabled := True;
  end;
end;

end.
