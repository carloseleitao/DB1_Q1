object fmMain: TfmMain
  Left = 437
  Top = 125
  Width = 603
  Height = 385
  Caption = 'Gerador de SQL'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object lblColunas: TLabel
    Left = 8
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblTabelas: TLabel
    Left = 200
    Top = 8
    Width = 38
    Height = 13
    Caption = 'Colunas'
  end
  object lblCondocoes: TLabel
    Left = 392
    Top = 8
    Width = 50
    Height = 13
    Caption = 'Condi'#231#245'es'
  end
  object lblSQL: TLabel
    Left = 8
    Top = 192
    Width = 24
    Height = 13
    Caption = 'SQL:'
  end
  object mmoColunas: TMemo
    Left = 8
    Top = 24
    Width = 185
    Height = 89
    TabOrder = 0
  end
  object mmoTabelas: TMemo
    Left = 200
    Top = 24
    Width = 185
    Height = 89
    TabOrder = 1
  end
  object mmoCondicoes: TMemo
    Left = 392
    Top = 24
    Width = 185
    Height = 89
    TabOrder = 2
  end
  object btnGerar: TButton
    Left = 248
    Top = 128
    Width = 75
    Height = 25
    Caption = 'Gerar SQL'
    TabOrder = 3
    OnClick = btnGerarClick
  end
  object mmoSQL: TMemo
    Left = 8
    Top = 208
    Width = 569
    Height = 129
    TabOrder = 4
  end
end
