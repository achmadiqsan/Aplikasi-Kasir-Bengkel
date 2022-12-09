object DM: TDM
  OldCreateOrder = False
  Left = 549
  Top = 170
  Height = 457
  Width = 806
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=D:\PROJECT APLIKASI' +
      ' KASIR BENGKEL\Database.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
  end
  object ADOQDataJasa: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataJasa')
    Left = 152
    Top = 24
    object ADOQDataJasakodeJasa: TWideStringField
      FieldName = 'kodeJasa'
      Size = 255
    end
    object ADOQDataJasanamaJasa: TWideStringField
      FieldName = 'namaJasa'
      Size = 255
    end
    object ADOQDataJasabiayaJasa: TIntegerField
      FieldName = 'biayaJasa'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object DSDataJasa: TDataSource
    DataSet = ADOQDataJasa
    Left = 240
    Top = 32
  end
  object ADOQDataMekanik: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataMekanik')
    Left = 48
    Top = 104
  end
  object DSDataMekanik: TDataSource
    DataSet = ADOQDataMekanik
    Left = 240
    Top = 96
  end
  object ADOQIdMekanik: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataMekanik')
    Left = 152
    Top = 96
  end
  object ADOQDataPelanggan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataPelanggan')
    Left = 64
    Top = 160
  end
  object ADOQIdPelanggan: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataPelanggan')
    Left = 176
    Top = 152
  end
  object DSDataPelanggan: TDataSource
    DataSet = ADOQDataPelanggan
    Left = 280
    Top = 152
  end
  object ADOQDataBarang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 56
    Top = 224
    object ADOQDataBarangkodeBarang: TWideStringField
      FieldName = 'kodeBarang'
      Size = 255
    end
    object ADOQDataBarangnamaBarang: TWideStringField
      FieldName = 'namaBarang'
      Size = 255
    end
    object ADOQDataBarangkategori: TWideStringField
      FieldName = 'kategori'
      Size = 255
    end
    object ADOQDataBaranghargaBeli: TIntegerField
      FieldName = 'hargaBeli'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQDataBaranghargaJual: TIntegerField
      FieldName = 'hargaJual'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQDataBarangLaba: TIntegerField
      FieldName = 'Laba'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQDataBarangstok: TIntegerField
      FieldName = 'stok'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object ADOQIdBarang: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 144
    Top = 224
  end
  object DSDataBarang: TDataSource
    DataSet = ADOQDataBarang
    Left = 224
    Top = 208
  end
  object ADOQKategori: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataKategori')
    Left = 48
    Top = 288
  end
  object ADOQKodeTransaksi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM HeaderTransaksi')
    Left = 312
    Top = 16
  end
  object ADOQHeaderTransaksi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM HeaderTransaksi')
    Left = 344
    Top = 72
  end
  object ADOQDetailTransaksi: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 376
    Top = 144
    object ADOQDetailTransaksinoNota: TWideStringField
      FieldName = 'noNota'
      Size = 255
    end
    object ADOQDetailTransaksitglTransaksi: TDateTimeField
      FieldName = 'tglTransaksi'
    end
    object ADOQDetailTransaksikode: TWideStringField
      FieldName = 'kode'
      Size = 255
    end
    object ADOQDetailTransaksijasaOrBarang: TWideStringField
      FieldName = 'jasaOrBarang'
      Size = 255
    end
    object ADOQDetailTransaksijumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object ADOQDetailTransaksihargaSatuan: TIntegerField
      FieldName = 'hargaSatuan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQDetailTransaksitotal: TIntegerField
      FieldName = 'total'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object DSDetailTransaksi: TDataSource
    DataSet = ADOQDetailTransaksi
    Left = 447
    Top = 84
  end
  object ADOQSubTotal: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 320
    Top = 224
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 128
    Top = 288
  end
  object DSHeaderTransaksi: TDataSource
    DataSet = ADOQHeaderTransaksi
    Left = 423
    Top = 28
  end
  object ADOQLapHeader: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM HeaderTransaksi')
    Left = 544
    Top = 72
  end
  object ADOQLapDetail: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 472
    Top = 144
    object ADOQLapDetailnoNota: TWideStringField
      FieldName = 'noNota'
      Size = 255
    end
    object ADOQLapDetailtglTransaksi: TDateTimeField
      FieldName = 'tglTransaksi'
    end
    object ADOQLapDetailkode: TWideStringField
      FieldName = 'kode'
      Size = 255
    end
    object ADOQLapDetailjasaOrBarang: TWideStringField
      FieldName = 'jasaOrBarang'
      Size = 255
    end
    object ADOQLapDetailjumlah: TIntegerField
      FieldName = 'jumlah'
    end
    object ADOQLapDetailhargaSatuan: TIntegerField
      FieldName = 'hargaSatuan'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
    object ADOQLapDetailtotal: TIntegerField
      FieldName = 'total'
      DisplayFormat = '#,#0.00;(#,#0.00);#,#0.00'
    end
  end
  object ADOQtotal: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 400
    Top = 200
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM Perusahaan')
    Left = 512
    Top = 16
  end
  object jmlInvetoryBrng: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 224
    Top = 280
  end
  object ttlNilaiBrng: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataBarang')
    Left = 320
    Top = 280
  end
  object jmlPlgn: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DataPelanggan')
    Left = 400
    Top = 272
  end
  object JAN: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 24
  end
  object FEB: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 24
  end
  object MAR: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 80
  end
  object APR: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 80
  end
  object MEI: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 144
  end
  object JUN: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 144
  end
  object JUL: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 208
  end
  object AUG: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 208
  end
  object SEP: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 264
  end
  object OKT: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 264
  end
  object NOV: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 624
    Top = 320
  end
  object DES: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM DetailTransaksi')
    Left = 680
    Top = 320
  end
  object DSKategori: TDataSource
    DataSet = ADOQKategori
    Left = 48
    Top = 344
  end
end
