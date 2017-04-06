object fchAjout: TfchAjout
  Left = 0
  Top = 0
  Caption = 'fchAjout'
  ClientHeight = 233
  ClientWidth = 287
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
    Top = 19
    Width = 21
    Height = 13
    Caption = 'Nom'
  end
  object Label2: TLabel
    Left = 24
    Top = 48
    Width = 55
    Height = 13
    Caption = 'Examen #1'
  end
  object Label3: TLabel
    Left = 24
    Top = 80
    Width = 55
    Height = 13
    Caption = 'Examen #2'
  end
  object Label4: TLabel
    Left = 24
    Top = 112
    Width = 49
    Height = 13
    Caption = 'Travail #1'
  end
  object Label5: TLabel
    Left = 24
    Top = 144
    Width = 49
    Height = 13
    Caption = 'Travail #2'
  end
  object txtNom: TEdit
    Left = 96
    Top = 16
    Width = 185
    Height = 21
    TabOrder = 0
    Text = 'txtNom'
  end
  object txtEval1: TEdit
    Left = 96
    Top = 43
    Width = 65
    Height = 21
    TabOrder = 1
    Text = 'Eval1'
  end
  object txtEval2: TEdit
    Left = 96
    Top = 77
    Width = 65
    Height = 21
    TabOrder = 2
    Text = 'Edit2'
  end
  object txtEval3: TEdit
    Left = 96
    Top = 109
    Width = 65
    Height = 21
    TabOrder = 3
    Text = 'Edit2'
  end
  object txtEval4: TEdit
    Left = 96
    Top = 141
    Width = 65
    Height = 21
    TabOrder = 4
    Text = 'Edit2'
  end
  object cmdConfirmer: TButton
    Left = 24
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Confirmer'
    TabOrder = 5
  end
  object cmdAnnuler: TButton
    Left = 118
    Top = 176
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 6
  end
  object fchAjout: TStatusBar
    Left = 0
    Top = 214
    Width = 287
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
    ExplicitTop = 215
    ExplicitWidth = 294
  end
end
