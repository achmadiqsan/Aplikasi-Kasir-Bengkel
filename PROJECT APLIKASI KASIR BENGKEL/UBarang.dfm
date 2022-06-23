object Form4: TForm4
  Left = 234
  Top = 147
  Width = 903
  Height = 480
  BorderIcons = [biSystemMenu]
  Caption = 'DATA BARANG'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 887
    Height = 441
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 343
      Height = 38
      Caption = 'FORM DATA BARANG'
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
      Width = 858
      Height = 3
      Brush.Color = 4210752
      Pen.Color = 4210752
    end
    object Label2: TLabel
      Left = 16
      Top = 116
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
    object Label3: TLabel
      Left = 297
      Top = 116
      Width = 65
      Height = 16
      Caption = 'Harga Beli'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 574
      Top = 115
      Width = 78
      Height = 16
      Caption = 'Keuntungan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 742
      Top = 115
      Width = 29
      Height = 16
      Caption = 'Stok'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 390
      Width = 82
      Height = 16
      Caption = 'Berdasarkan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 184
      Top = 390
      Width = 68
      Height = 16
      Caption = 'Kata Kunci'
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
    object Label9: TLabel
      Left = 574
      Top = 68
      Width = 68
      Height = 16
      Caption = 'Harga Jual'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label10: TLabel
      Left = 295
      Top = 68
      Width = 55
      Height = 16
      Caption = 'Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label11: TLabel
      Left = 415
      Top = 61
      Width = 8
      Height = 16
      Caption = '1'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      Visible = False
    end
    object Label12: TLabel
      Left = 454
      Top = 61
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
    object Edit1: TEdit
      Left = 16
      Top = 135
      Width = 265
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
    object DBGrid1: TDBGrid
      Left = 16
      Top = 169
      Width = 857
      Height = 217
      Color = 12632319
      DataSource = DM.DSDataBarang
      FixedColor = 12632319
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 1
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'kodeBarang'
          Title.Alignment = taCenter
          Title.Caption = 'KODE BARANG'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaBarang'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA BARANG'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Alignment = taCenter
          Title.Caption = 'KATEGORI'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hargaBeli'
          Title.Alignment = taCenter
          Title.Caption = 'HARGA BELI'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'hargaJual'
          Title.Alignment = taCenter
          Title.Caption = 'HARGA JALAN'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Laba'
          Title.Alignment = taCenter
          Title.Caption = 'LABA'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'stok'
          Title.Alignment = taCenter
          Title.Caption = 'STOK'
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 295
      Top = 135
      Width = 265
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
      OnChange = Edit2Change
    end
    object Edit3: TEdit
      Left = 573
      Top = 134
      Width = 156
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 744
      Top = 134
      Width = 126
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
      Left = 777
      Top = 18
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
      TabOrder = 5
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 673
      Top = 18
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Delete'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = Panel3Click
    end
    object Panel4: TPanel
      Left = 569
      Top = 18
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Update'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 7
      OnClick = Panel4Click
    end
    object Panel5: TPanel
      Left = 465
      Top = 18
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Add'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 8
      OnClick = Panel5Click
    end
    object Edit5: TEdit
      Left = 184
      Top = 409
      Width = 161
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 408
      Width = 145
      Height = 22
      BevelKind = bkFlat
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 10
      Items.Strings = (
        'KODE BARANG'
        'NAMA BARANG'
        'KATEGORI')
    end
    object Panel6: TPanel
      Left = 776
      Top = 399
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Cari'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 11
      OnClick = Panel6Click
    end
    object Panel7: TPanel
      Left = 181
      Top = 76
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Kode'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 12
      OnClick = Panel7Click
    end
    object Edit6: TEdit
      Left = 16
      Top = 88
      Width = 153
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Enabled = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 13
    end
    object Edit7: TEdit
      Left = 572
      Top = 87
      Width = 301
      Height = 21
      BorderStyle = bsNone
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -17
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 14
      OnChange = Edit7Change
    end
    object ComboBox2: TComboBox
      Left = 296
      Top = 86
      Width = 265
      Height = 22
      BevelKind = bkFlat
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Tahoma'
      Font.Style = []
      ItemHeight = 14
      ParentFont = False
      TabOrder = 15
    end
  end
end
