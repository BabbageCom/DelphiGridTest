object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Babbage Grid Tester'
  ClientHeight = 680
  ClientWidth = 997
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 997
    Height = 52
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 40
      Top = 27
      Width = 86
      Height = 13
      Caption = '&Datagrid: TDBGrid'
      FocusControl = DBGrid
    end
    object Label3: TLabel
      Left = 160
      Top = 5
      Width = 107
      Height = 13
      Caption = 'DesignStyleComboBo&x'
    end
    object DesignStyleComboBox: TComboBox
      Left = 160
      Top = 24
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 0
      Text = 'gdsThemed'
      OnChange = DesignStyleComboBoxChange
      Items.Strings = (
        'gdsThemed'
        'gdsClassic'
        'gdsGradient')
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 52
    Width = 997
    Height = 174
    Margins.Left = 2
    Margins.Top = 2
    Margins.Right = 2
    Margins.Bottom = 2
    Align = alTop
    Caption = 'Panel2'
    TabOrder = 1
    object DBGrid: TDBGrid
      Left = 1
      Top = 1
      Width = 995
      Height = 172
      Align = alClient
      DataSource = DataSource
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
    end
  end
  object Button2: TButton
    Left = 104
    Top = 248
    Width = 129
    Height = 25
    Caption = '&MergeChangeLog'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DataSource: TDataSource
    DataSet = ClientDataSet
    Left = 416
    Top = 8
  end
  object XMLTransformProvider: TXMLTransformProvider
    Left = 672
    Top = 8
  end
  object ClientDataSet: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    ProviderName = 'XMLTransformProvider'
    StoreDefs = True
    Left = 512
    Top = 8
  end
end
