object Form6: TForm6
  Left = 300
  Top = 206
  Width = 794
  Height = 386
  BorderIcons = [biSystemMenu]
  Caption = 'CARI DATA PELANGGAN'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 778
    Height = 347
    Align = alClient
    Color = clWhite
    TabOrder = 0
    object Label5: TLabel
      Left = 17
      Top = 7
      Width = 135
      Height = 16
      Caption = 'Cari Nama Pelanggan'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 8421631
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 13
      Top = 64
      Width = 748
      Height = 257
      Color = 12632319
      DataSource = DM.DSDataPelanggan
      FixedColor = 12632319
      Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit]
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      OnKeyPress = DBGrid1KeyPress
      Columns = <
        item
          Expanded = False
          FieldName = 'idPelanggan'
          Title.Alignment = taCenter
          Title.Caption = 'ID PELANGGAN'
          Width = 100
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
          Width = 100
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
    object Edit4: TEdit
      Left = 16
      Top = 27
      Width = 737
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
      OnChange = Edit4Change
    end
  end
end
