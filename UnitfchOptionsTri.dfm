object fchOptionsTri: TfchOptionsTri
  Left = 0
  Top = 0
  Caption = 'Options de tri'
  ClientHeight = 198
  ClientWidth = 326
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
    Left = 24
    Top = 24
    Width = 43
    Height = 13
    Caption = 'Cl'#233' du tri'
  end
  object lstClesTri: TListBox
    Left = 24
    Top = 43
    Width = 121
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object grpOrdresTri: TGroupBox
    Left = 176
    Top = 24
    Width = 121
    Height = 105
    Caption = 'Ordre de tri'
    TabOrder = 1
    object optCroissant: TRadioButton
      Left = 16
      Top = 32
      Width = 113
      Height = 17
      Caption = 'Croissant'
      TabOrder = 0
    end
    object optDecroissant: TRadioButton
      Left = 16
      Top = 71
      Width = 113
      Height = 17
      Caption = 'D'#233'croissant'
      TabOrder = 1
    end
  end
  object cmdOK: TButton
    Left = 128
    Top = 152
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 2
  end
  object cmdAnnuler: TButton
    Left = 222
    Top = 152
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 3
  end
end
