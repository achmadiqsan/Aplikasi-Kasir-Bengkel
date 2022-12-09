object FKategori: TFKategori
  Left = 239
  Top = 165
  Width = 907
  Height = 376
  Caption = 'KATEGORI'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 891
    Height = 337
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 254
      Height = 39
      Caption = 'FORM KATEGORI'
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
      Left = 15
      Top = 132
      Width = 94
      Height = 16
      Caption = 'Nama Kategori'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Edit1: TEdit
      Left = 15
      Top = 152
      Width = 233
      Height = 21
      BevelOuter = bvRaised
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
      Left = 272
      Top = 72
      Width = 601
      Height = 161
      Color = 12632319
      DataSource = DM.DSKategori
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
          FieldName = 'id'
          Title.Alignment = taCenter
          Title.Caption = 'ID KATEGORI'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'kategori'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA KATEGORI'
          Width = 300
          Visible = True
        end>
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
      TabOrder = 2
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
      TabOrder = 3
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
      TabOrder = 4
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
      TabOrder = 5
      OnClick = Panel5Click
    end
    object GroupBox1: TGroupBox
      Left = 16
      Top = 237
      Width = 857
      Height = 89
      Caption = 'Cari Data Nama Kategori : '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 6
      object Edit5: TEdit
        Left = 16
        Top = 40
        Width = 825
        Height = 21
        BevelOuter = bvRaised
        BorderStyle = bsNone
        Color = 12632319
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -17
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnChange = Edit5Change
      end
    end
  end
end
