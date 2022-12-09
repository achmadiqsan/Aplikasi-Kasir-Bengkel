unit UCariPelanggan;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Grids, DBGrids;

type
  TForm6 = class(TForm)
    Panel1: TPanel;
    DBGrid1: TDBGrid;
    Edit4: TEdit;
    Label5: TLabel;
    procedure Edit4Change(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBGrid1KeyPress(Sender: TObject; var Key: Char);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form6: TForm6;

implementation

uses
  UDataModule, UService;

{$R *.dfm}

procedure TForm6.Edit4Change(Sender: TObject);
begin
  if Edit4.Text = '' then
    begin
      Dm.ADOQDataPelanggan.Filtered := False;
    end
  else
    begin
       Dm.ADOQDataPelanggan.Close;
       Dm.ADOQDataPelanggan.Open;
       Dm.ADOQDataPelanggan.Filtered := False;
       DM.ADOQDataPelanggan.Filter :='namaPelanggan LIKE '+Quotedstr('%'+Edit4.Text+'%');
       Dm.ADOQDataPelanggan.Filtered := True;
    end;
end;

procedure TForm6.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  Edit4.Clear;
  Dm.ADOQDataPelanggan.Filtered := False;
end;

procedure TForm6.DBGrid1KeyPress(Sender: TObject; var Key: Char);
begin
  if Key=#13 then
    begin
      if Dm.ADOQDataPelanggan.IsEmpty then MessageDlg('Data Pelanggan Kosong',mtInformation,[mbok],0) else
      begin
        Form5.Edit6.Text := DM.ADOQDataPelanggan['namaPelanggan']  ;
        Form5.Edit1.Text:= DM.ADOQDataPelanggan['noTelpon']  ;
        Edit4.Clear;
        Form6.Close;
      end;
    end;
end;

procedure TForm6.FormActivate(Sender: TObject);
begin
  DM.ADOQDataPelanggan.Close;
  DM.ADOQDataPelanggan.Open;
end;

end.
