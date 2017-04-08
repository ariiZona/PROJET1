object fchStats: TfchStats
  Left = 195
  Top = 445
  Width = 325
  Height = 206
  Caption = 'fchStats'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 176
    Top = 5
    Width = 28
    Height = 13
    Caption = 'Notes'
  end
  object grlStats: TStringGrid
    Left = 8
    Top = 24
    Width = 133
    Height = 129
    ColCount = 6
    Enabled = False
    RowCount = 6
    ScrollBars = ssNone
    TabOrder = 0
  end
  object lstNomNotes: TListBox
    Left = 176
    Top = 24
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 1
  end
  object cmdFermer: TButton
    Left = 176
    Top = 128
    Width = 75
    Height = 25
    Caption = '&Fermer'
    TabOrder = 2
  end
end
