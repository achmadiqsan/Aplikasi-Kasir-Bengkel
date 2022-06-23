unit UDataModule;

interface

uses
  SysUtils, Classes, DB, ADODB;

type
  TDM = class(TDataModule)
    ADOConnection1: TADOConnection;
    ADOQDataJasa: TADOQuery;
    DSDataJasa: TDataSource;
    ADOQDataJasakodeJasa: TWideStringField;
    ADOQDataJasanamaJasa: TWideStringField;
    ADOQDataJasabiayaJasa: TIntegerField;
    ADOQDataMekanik: TADOQuery;
    DSDataMekanik: TDataSource;
    ADOQIdMekanik: TADOQuery;
    ADOQDataPelanggan: TADOQuery;
    ADOQIdPelanggan: TADOQuery;
    DSDataPelanggan: TDataSource;
    ADOQDataBarang: TADOQuery;
    ADOQIdBarang: TADOQuery;
    DSDataBarang: TDataSource;
    ADOQKategori: TADOQuery;
    ADOQKodeTransaksi: TADOQuery;
    ADOQHeaderTransaksi: TADOQuery;
    ADOQDetailTransaksi: TADOQuery;
    DSDetailTransaksi: TDataSource;
    ADOQDataBarangkodeBarang: TWideStringField;
    ADOQDataBarangnamaBarang: TWideStringField;
    ADOQDataBarangkategori: TWideStringField;
    ADOQDataBaranghargaBeli: TIntegerField;
    ADOQDataBaranghargaJual: TIntegerField;
    ADOQDataBarangLaba: TIntegerField;
    ADOQDataBarangstok: TIntegerField;
    ADOQSubTotal: TADOQuery;
    ADOQuery1: TADOQuery;
    DSHeaderTransaksi: TDataSource;
    ADOQDetailTransaksinoNota: TWideStringField;
    ADOQDetailTransaksitglTransaksi: TDateTimeField;
    ADOQDetailTransaksikode: TWideStringField;
    ADOQDetailTransaksijasaOrBarang: TWideStringField;
    ADOQDetailTransaksijumlah: TIntegerField;
    ADOQDetailTransaksihargaSatuan: TIntegerField;
    ADOQDetailTransaksitotal: TIntegerField;
    ADOQLapHeader: TADOQuery;
    ADOQLapDetail: TADOQuery;
    ADOQtotal: TADOQuery;
    ADOQuery2: TADOQuery;
    ADOQLapDetailnoNota: TWideStringField;
    ADOQLapDetailtglTransaksi: TDateTimeField;
    ADOQLapDetailkode: TWideStringField;
    ADOQLapDetailjasaOrBarang: TWideStringField;
    ADOQLapDetailjumlah: TIntegerField;
    ADOQLapDetailhargaSatuan: TIntegerField;
    ADOQLapDetailtotal: TIntegerField;
    jmlInvetoryBrng: TADOQuery;
    ttlNilaiBrng: TADOQuery;
    jmlPlgn: TADOQuery;
    JAN: TADOQuery;
    FEB: TADOQuery;
    MAR: TADOQuery;
    APR: TADOQuery;
    MEI: TADOQuery;
    JUN: TADOQuery;
    JUL: TADOQuery;
    AUG: TADOQuery;
    SEP: TADOQuery;
    OKT: TADOQuery;
    NOV: TADOQuery;
    DES: TADOQuery;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.


