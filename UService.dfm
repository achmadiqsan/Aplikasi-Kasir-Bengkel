object Form5: TForm5
  Left = 153
  Top = 63
  Width = 1129
  Height = 634
  BorderIcons = [biSystemMenu]
  Caption = 'SERVICE'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 1113
    Height = 595
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 228
      Height = 39
      Caption = 'FORM SERVICE'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -33
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Shape1: TShape
      Left = 15
      Top = 55
      Width = 1084
      Height = 3
      Brush.Color = 8421631
      Pen.Color = 8421631
    end
    object Label2: TLabel
      Left = 372
      Top = 66
      Width = 62
      Height = 16
      Caption = 'No Telpon'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 580
      Top = 66
      Width = 70
      Height = 16
      Caption = 'Kendaraan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 783
      Top = 64
      Width = 77
      Height = 16
      Caption = 'Nomor Polisi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 16
      Top = 68
      Width = 106
      Height = 16
      Caption = 'Nama Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 800
      Top = 11
      Width = 297
      Height = 37
      Alignment = taRightJustify
      Caption = 'Rp. 000.000.000.000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -31
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label23: TLabel
      Left = 300
      Top = 34
      Width = 85
      Height = 16
      Caption = 'No. Transaksi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label24: TLabel
      Left = 410
      Top = 34
      Width = 50
      Height = 16
      Caption = 'Tanggal'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 372
      Top = 85
      Width = 191
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 0
    end
    object Edit2: TEdit
      Left = 578
      Top = 85
      Width = 191
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
    end
    object Edit3: TEdit
      Left = 782
      Top = 84
      Width = 191
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 2
    end
    object Panel5: TPanel
      Left = 1001
      Top = 74
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Tambah'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Panel5Click
    end
    object Edit6: TEdit
      Left = 16
      Top = 87
      Width = 197
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 4
    end
    object Panel2: TPanel
      Left = 227
      Top = 74
      Width = 130
      Height = 33
      Cursor = crHandPoint
      Caption = 'Cari'
      Color = 8421631
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
      OnClick = Panel2Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 120
      Width = 1086
      Height = 353
      Caption = 'JASA DAN PENJUALAN : '
      Color = 15329790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 6
      object Label5: TLabel
        Left = 8
        Top = 18
        Width = 82
        Height = 16
        Caption = 'Kode Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label7: TLabel
        Left = 208
        Top = 18
        Width = 85
        Height = 16
        Caption = 'Nama Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label9: TLabel
        Left = 410
        Top = 18
        Width = 23
        Height = 16
        Caption = 'Qty'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 465
        Top = 18
        Width = 89
        Height = 16
        Caption = 'Harga Satuan'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label11: TLabel
        Left = 665
        Top = 18
        Width = 32
        Height = 16
        Caption = 'Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label12: TLabel
        Left = 863
        Top = 68
        Width = 58
        Height = 16
        Caption = 'Pilih Jasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label13: TLabel
        Left = 863
        Top = 130
        Width = 65
        Height = 16
        Caption = 'Kode Jasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label14: TLabel
        Left = 865
        Top = 186
        Width = 62
        Height = 16
        Caption = 'Tarif Jasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label15: TLabel
        Left = 8
        Top = 300
        Width = 110
        Height = 16
        Caption = 'Cari Data Barang'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label16: TLabel
        Left = 607
        Top = 295
        Width = 60
        Height = 16
        Caption = 'Sub Total'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label25: TLabel
        Left = 882
        Top = 18
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label27: TLabel
        Left = 906
        Top = 16
        Width = 77
        Height = 16
        Caption = 'Jumlah Jasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label26: TLabel
        Left = 943
        Top = 67
        Width = 58
        Height = 16
        Caption = 'Pilih Jasa'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label31: TLabel
        Left = 893
        Top = 39
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label32: TLabel
        Left = 938
        Top = 39
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Edit4: TEdit
        Left = 8
        Top = 35
        Width = 191
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
      end
      object Edit5: TEdit
        Left = 208
        Top = 35
        Width = 191
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit7: TEdit
        Left = 408
        Top = 35
        Width = 49
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnChange = Edit7Change
        OnKeyPress = Edit7KeyPress
      end
      object Edit8: TEdit
        Left = 465
        Top = 35
        Width = 191
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
      end
      object Edit9: TEdit
        Left = 665
        Top = 35
        Width = 191
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object DBGrid1: TDBGrid
        Left = 208
        Top = 72
        Width = 648
        Height = 225
        Color = 12632319
        DataSource = DM.DSDetailTransaksi
        FixedColor = 12632319
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 5
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnCellClick = DBGrid1CellClick
        Columns = <
          item
            Expanded = False
            FieldName = 'tglTransaksi'
            Title.Alignment = taCenter
            Title.Caption = 'Tanggal Transaksi'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'kode'
            Title.Alignment = taCenter
            Title.Caption = 'Kode'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jasaOrBarang'
            Title.Alignment = taCenter
            Title.Caption = 'Jasa / Barang'
            Width = 300
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'jumlah'
            Title.Alignment = taCenter
            Title.Caption = 'Jumlah'
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hargaSatuan'
            Title.Alignment = taCenter
            Title.Caption = 'Harga Satuan'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'total'
            Title.Alignment = taCenter
            Title.Caption = 'Total'
            Visible = True
          end>
      end
      object DBGrid2: TDBGrid
        Left = 8
        Top = 74
        Width = 192
        Height = 224
        Color = 12632319
        DataSource = DM.DSDataBarang
        FixedColor = 12632319
        Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
        TabOrder = 6
        TitleFont.Charset = DEFAULT_CHARSET
        TitleFont.Color = clWindowText
        TitleFont.Height = -15
        TitleFont.Name = 'Tahoma'
        TitleFont.Style = []
        OnKeyPress = DBGrid2KeyPress
        Columns = <
          item
            Expanded = False
            FieldName = 'kodeBarang'
            Title.Alignment = taCenter
            Title.Caption = 'Kode Barang'
            Width = 100
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'namaBarang'
            Title.Alignment = taCenter
            Title.Caption = 'Nama Barang'
            Width = 64
            Visible = True
          end
          item
            Expanded = False
            FieldName = 'hargaJual'
            Title.Alignment = taCenter
            Title.Caption = 'Harga Jual'
            Visible = True
          end>
      end
      object ComboBox2: TComboBox
        Left = 864
        Top = 88
        Width = 216
        Height = 27
        BevelKind = bkFlat
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 7
        OnChange = ComboBox2Change
      end
      object Edit10: TEdit
        Left = 863
        Top = 149
        Width = 216
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 8
      end
      object Edit11: TEdit
        Left = 864
        Top = 205
        Width = 216
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 9
      end
      object Panel3: TPanel
        Left = 863
        Top = 242
        Width = 216
        Height = 43
        Cursor = crHandPoint
        Caption = 'Add'
        Color = 8421631
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 10
        OnClick = Panel3Click
      end
      object Edit12: TEdit
        Left = 8
        Top = 319
        Width = 191
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 11
        OnChange = Edit12Change
      end
      object Panel4: TPanel
        Left = 213
        Top = 313
        Width = 97
        Height = 33
        Cursor = crHandPoint
        Caption = 'Add'
        Color = 8421631
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 12
        OnClick = Panel4Click
      end
      object Panel6: TPanel
        Left = 325
        Top = 313
        Width = 97
        Height = 33
        Cursor = crHandPoint
        Caption = 'Delete'
        Color = 8421631
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 13
        OnClick = Panel6Click
      end
      object Edit13: TEdit
        Left = 607
        Top = 314
        Width = 250
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 14
      end
    end
    object GroupBox2: TGroupBox
      Left = 15
      Top = 477
      Width = 1085
      Height = 113
      Caption = 'TOTAL BIAYA : '
      Color = 15329790
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentColor = False
      ParentFont = False
      TabOrder = 7
      object Label17: TLabel
        Left = 7
        Top = 28
        Width = 42
        Height = 16
        Caption = 'Diskon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label18: TLabel
        Left = 104
        Top = 28
        Width = 78
        Height = 16
        Caption = 'Total Diskon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label19: TLabel
        Left = 272
        Top = 28
        Width = 81
        Height = 16
        Caption = 'Harga Bayar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label20: TLabel
        Left = 441
        Top = 28
        Width = 38
        Height = 16
        Caption = 'Bayar'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label21: TLabel
        Left = 610
        Top = 28
        Width = 49
        Height = 16
        Caption = 'Kembali'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label22: TLabel
        Left = 780
        Top = 28
        Width = 91
        Height = 16
        Caption = 'Nama Mekanik'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label28: TLabel
        Left = 15
        Top = 84
        Width = 42
        Height = 16
        Caption = 'Diskon'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label29: TLabel
        Left = 781
        Top = 81
        Width = 91
        Height = 16
        Caption = 'Nama Mekanik'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object Label30: TLabel
        Left = 74
        Top = 18
        Width = 8
        Height = 16
        Caption = '0'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 8421631
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        Visible = False
      end
      object ComboBox1: TComboBox
        Left = 8
        Top = 47
        Width = 89
        Height = 27
        BevelKind = bkFlat
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 0
        OnChange = ComboBox1Change
        Items.Strings = (
          '0'
          '5'
          '10'
          '15')
      end
      object Edit14: TEdit
        Left = 105
        Top = 48
        Width = 160
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
      end
      object Edit15: TEdit
        Left = 273
        Top = 48
        Width = 160
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
      end
      object Edit16: TEdit
        Left = 442
        Top = 48
        Width = 160
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnChange = Edit16Change
        OnKeyPress = Edit16KeyPress
      end
      object Edit17: TEdit
        Left = 611
        Top = 48
        Width = 160
        Height = 26
        BorderStyle = bsNone
        Color = 12632319
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -19
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object ComboBox3: TComboBox
        Left = 781
        Top = 47
        Width = 169
        Height = 27
        BevelKind = bkFlat
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -16
        Font.Name = 'Tahoma'
        Font.Style = []
        ItemHeight = 19
        ParentFont = False
        TabOrder = 5
        OnChange = ComboBox3Change
      end
      object Panel7: TPanel
        Left = 969
        Top = 16
        Width = 97
        Height = 33
        Cursor = crHandPoint
        Caption = 'Save'
        Color = 8421631
        Enabled = False
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -17
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 6
        OnClick = Panel7Click
      end
      object Panel8: TPanel
        Left = 963
        Top = 56
        Width = 111
        Height = 41
        Cursor = crHandPoint
        Caption = 'Lihat Transaksi'
        Color = 8421631
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWhite
        Font.Height = -13
        Font.Name = 'Roboto'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 7
        OnClick = Panel8Click
      end
    end
    object Panel9: TPanel
      Left = 602
      Top = 13
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'New'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Panel9Click
    end
    object Panel10: TPanel
      Left = 705
      Top = 14
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Clear'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = Panel10Click
    end
  end
end
