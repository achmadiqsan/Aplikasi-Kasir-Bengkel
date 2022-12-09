object Form7: TForm7
  Left = 193
  Top = 179
  Width = 901
  Height = 392
  BorderIcons = [biSystemMenu]
  Caption = 'LIHAT TRANSAKSI'
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
    Width = 885
    Height = 353
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 294
      Height = 38
      Caption = 'LIHAT TRANSAKSI'
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
      Brush.Color = 8421631
      Pen.Color = 8421631
    end
    object Label2: TLabel
      Left = 16
      Top = 69
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
    object Label3: TLabel
      Left = 185
      Top = 69
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
    object Label4: TLabel
      Left = 456
      Top = 36
      Width = 50
      Height = 16
      Caption = 'No Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 757
      Top = 36
      Width = 115
      Height = 16
      Caption = 'Tanggal Transaksi'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 121
      Width = 857
      Height = 223
      Color = 12632319
      DataSource = DM.DSHeaderTransaksi
      FixedColor = 12632319
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnCellClick = DBGrid1CellClick
      Columns = <
        item
          Expanded = False
          FieldName = 'noNota'
          Title.Alignment = taCenter
          Title.Caption = 'No Nota'
          Width = 120
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'tglTransaksi'
          Title.Alignment = taCenter
          Title.Caption = 'Tanggal Transaksi'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaPelanggan'
          Title.Alignment = taCenter
          Title.Caption = 'Nama Pelanggan'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noTelpon'
          Title.Alignment = taCenter
          Title.Caption = 'No Telepon'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kendaraan'
          Title.Alignment = taCenter
          Title.Caption = 'Kendaraan'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nopol'
          Title.Alignment = taCenter
          Title.Caption = 'Nomor Polisi'
          Width = 120
          Visible = True
        end>
    end
    object Panel2: TPanel
      Left = 774
      Top = 82
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Refresh'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Panel2Click
    end
    object Panel3: TPanel
      Left = 670
      Top = 82
      Width = 97
      Height = 33
      Cursor = crHandPoint
      Caption = 'Cetak'
      Color = 8421631
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWhite
      Font.Height = -17
      Font.Name = 'Roboto'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Panel3Click
    end
    object ComboBox1: TComboBox
      Left = 16
      Top = 91
      Width = 145
      Height = 24
      BevelKind = bkFlat
      BevelOuter = bvRaised
      Color = 12632319
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ItemHeight = 16
      ParentFont = False
      TabOrder = 3
      Items.Strings = (
        'No Nota'
        'Nama Pelanggan'
        'Kendaraan'
        'Nomor Polisi')
    end
    object Edit5: TEdit
      Left = 184
      Top = 92
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
      TabOrder = 4
    end
    object Panel6: TPanel
      Left = 566
      Top = 82
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
      TabOrder = 5
      OnClick = Panel6Click
    end
  end
end
