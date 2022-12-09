unit UKategori;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ExtCtrls;

type
  TFKategori = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Shape1: TShape;
    Label2: TLabel;
    Edit1: TEdit;
    DBGrid1: TDBGrid;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    GroupBox1: TGroupBox;
    Edit5: TEdit;
    procedure Panel5Click(Sender: TObject);
    procedure Panel3Click(Sender: TObject);
    procedure Panel4Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Edit5Change(Sender: TObject);
    procedure Panel2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FKategori: TFKategori;

implementation

uses
  UDataModule;

{$R *.dfm}

procedure TFKategori.Panel5Click(Sender: TObject);
begin
  if Edit1.Text = '' then MessageDlg('Nama Kategori Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQKategori.Append;
      DM.ADOQKategori['kategori'] := Edit1.Text;
      DM.ADOQKategori.Post;
      Edit1.Clear;
    end;
end;

procedure TFKategori.Panel3Click(Sender: TObject);
begin
  if Dm.ADOQKategori.IsEmpty then MessageDlg('Data Kosong',mtInformation,[mbok],0) else
  if Application.MessageBox('Yakin Hapus Data ??','Pesan',Mb_YesNo or Mb_IconQuestion)=MrYes then
   Begin
     Dm.ADOQKategori.Delete;
     Edit1.Clear;
   End;
end;

procedure TFKategori.Panel4Click(Sender: TObject);
begin
if Edit1.Text = '' then MessageDlg('Nama Kategori Kosong',mtinformation,[mbok],0) else
    begin
      DM.ADOQKategori.Edit;
      DM.ADOQKategori['kategori'] := Edit1.Text;
      DM.ADOQKategori.Post;
      Edit1.Clear;
    end;
end;

procedure TFKategori.DBGrid1CellClick(Column: TColumn);
begin
if Dm.ADOQKategori.IsEmpty then MessageDlg('Data Kategori Kosong',mtInformation,[mbok],0) else
  begin
    Edit1.Text := DM.ADOQKategori['kategori'] ;
  end;
end;

procedure TFKategori.Edit5Change(Sender: TObject);
begin
  if Edit5.Text <> '' then
    begin
      Dm.ADOQKategori.Filtered := False;
      DM.ADOQKategori.Filter :='kategori LIKE '+Quotedstr('%'+Edit5.Text+'%');
      Dm.ADOQKategori.Filtered := True;
    end
  else
    begin
      Dm.ADOQKategori.Filtered := False;
    end;
end;

procedure TFKategori.Panel2Click(Sender: TObject);
begin
  Edit1.Clear;
  Edit5.Clear;
end;

end.
