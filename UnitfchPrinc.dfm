object fchPrinc: TfchPrinc
  Left = 189
  Top = 122
  Width = 506
  Height = 320
  Caption = 'Gestion des notes d'#39#233'l'#232'ves'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object grlEleves: TStringGrid
    Left = 8
    Top = 56
    Width = 457
    Height = 201
    FixedCols = 0
    RowCount = 2
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goRowSelect]
    TabOrder = 0
    ColWidths = (
      192
      64
      64
      64
      64)
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 490
    Height = 41
    Align = alTop
    TabOrder = 1
    object otlTrier: TSpeedButton
      Left = 8
      Top = 8
      Width = 65
      Height = 22
      Caption = 'Trier'
      OnClick = otlTrierClick
    end
    object otlAjouter: TSpeedButton
      Left = 103
      Top = 8
      Width = 65
      Height = 22
      Caption = 'Ajouter'
      OnClick = otlAjouterClick
    end
    object otlSupprimer: TSpeedButton
      Left = 198
      Top = 8
      Width = 65
      Height = 22
      Caption = 'Supprimer'
      OnClick = otlSupprimerClick
    end
    object otlStats: TSpeedButton
      Left = 306
      Top = 8
      Width = 65
      Height = 22
      Caption = 'Statistiques'
      OnClick = otlStatsClick
    end
    object otlQuitter: TSpeedButton
      Left = 400
      Top = 8
      Width = 65
      Height = 22
      Caption = 'Quitter'
    end
  end
  object staNbEleves: TStatusBar
    Left = 0
    Top = 263
    Width = 490
    Height = 19
    Panels = <
      item
        Width = 50
      end
      item
        Text = #233'l'#232'ves sur un max. de'
        Width = 125
      end
      item
        Width = 50
      end
      item
        Width = 50
      end>
    SimplePanel = False
  end
end
