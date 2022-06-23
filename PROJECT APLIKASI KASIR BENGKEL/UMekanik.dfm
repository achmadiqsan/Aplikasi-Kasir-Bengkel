object Form2: TForm2
  Left = 227
  Top = 100
  Width = 905
  Height = 338
  BorderIcons = [biSystemMenu]
  Caption = 'MEKANIK'
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
    Width = 889
    Height = 299
    Align = alClient
    Color = 2562330
    TabOrder = 0
    object Label1: TLabel
      Left = 14
      Top = 13
      Width = 261
      Height = 38
      Caption = 'FORM MEKANIK'
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
      Width = 70
      Height = 16
      Caption = 'ID Mekanik'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 16
      Top = 125
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
    object Label4: TLabel
      Left = 16
      Top = 184
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
      Left = 16
      Top = 243
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
    object Edit1: TEdit
      Left = 16
      Top = 88
      Width = 233
      Height = 21
      BevelOuter = bvRaised
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
      Left = 272
      Top = 72
      Width = 601
      Height = 217
      Color = 12632319
      DataSource = DM.DSDataMekanik
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
          FieldName = 'idMekanik'
          Title.Alignment = taCenter
          Title.Caption = 'ID MEKANIK'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'namaMekanik'
          Title.Alignment = taCenter
          Title.Caption = 'NAMA MEKANIK'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'noTelpon'
          Title.Alignment = taCenter
          Title.Caption = 'NO TELPON'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'Alamat'
          Title.Alignment = taCenter
          Title.Caption = 'ALAMAT'
          Width = 150
          Visible = True
        end>
    end
    object Edit2: TEdit
      Left = 16
      Top = 144
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
      TabOrder = 2
    end
    object Edit3: TEdit
      Left = 16
      Top = 203
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
      TabOrder = 3
    end
    object Edit4: TEdit
      Left = 16
      Top = 262
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
    object Panel6: TPanel
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
      TabOrder = 9
      OnClick = Panel6Click
    end
  end
end
