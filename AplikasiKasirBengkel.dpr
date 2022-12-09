program AplikasiKasirBengkel;

uses
  Forms,
  UMainMenu in 'UMainMenu.pas' {Form1},
  UMekanik in 'UMekanik.pas' {Form2},
  UPelanggan in 'UPelanggan.pas' {Form3},
  UBarang in 'UBarang.pas' {Form4},
  UService in 'UService.pas' {Form5},
  UDataModule in 'UDataModule.pas' {DM: TDataModule},
  UCariPelanggan in 'UCariPelanggan.pas' {Form6},
  ULihatTransaksi in 'ULihatTransaksi.pas' {Form7},
  ULaporan in 'ULaporan.pas' {Form8},
  UKategori in 'UKategori.pas' {FKategori};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TFKategori, FKategori);
  Application.Run;
end.
