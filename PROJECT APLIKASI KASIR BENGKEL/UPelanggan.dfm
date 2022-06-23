object Form3: TForm3
  Left = 285
  Top = 154
  Width = 901
  Height = 430
  BorderIcons = [biSystemMenu]
  Caption = 'PELANGGAN'
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
    Height = 391
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 314
      Height = 38
      Caption = 'FORM PELANGGAN'
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
      Width = 85
      Height = 16
      Caption = 'ID Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 148
      Top = 69
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
    object Label4: TLabel
      Left = 392
      Top = 68
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
    object Label5: TLabel
      Left = 637
      Top = 68
      Width = 46
      Height = 16
      Caption = 'Alamat'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 16
      Top = 341
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
      Top = 341
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
    object Edit1: TEdit
      Left = 16
      Top = 88
      Width = 121
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
      TabOrder = 0
    end
    object DBGrid1: TDBGrid
      Left = 16
      Top = 120
      Width = 857
      Height = 217
      Color = 12632319
      DataSource = DM.DSDataPelanggan
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
          FieldName = 'idPelanggan'
          Title.Alignment = taCenter
          Title.Caption = 'ID PELANGGAN'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaPelanggan'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA PELANGGAN'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noTelpon'
          Title.Alignment = taCenter
          Title.Caption = 'NO TELPON'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alamat'
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT'
          Width = 200
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 148
      Top = 88
      Width = 233
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
    object Edit3: TEdit
      Left = 392
      Top = 87
      Width = 233
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
      Left = 637
      Top = 87
      Width = 233
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
      Enabled = False
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
      Enabled = False
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
      Enabled = False
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
      Top = 360
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
      Top = 359
      Width = 145
      Height = 22
      BevelKind = bkFlat
      BevelOuter = bvRaised
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
        'ID PELANGGAN'
        'NAMA PELANGGAN')
    end
    object Panel6: TPanel
      Left = 776
      Top = 350
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
      Left = 361
      Top = 18
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
      TabOrder = 12
      OnClick = Panel7Click
    end
  end
end
