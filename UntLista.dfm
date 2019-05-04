object frmLista: TfrmLista
  Left = 1500
  Top = 150
  Width = 388
  Height = 429
  Caption = 'ListBox estudo Marcus'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object pnl1: TPanel
    Left = 0
    Top = 0
    Width = 257
    Height = 337
    Align = alCustom
    TabOrder = 0
    object lstPrincipal: TListBox
      Left = 1
      Top = 1
      Width = 255
      Height = 335
      Align = alClient
      ItemHeight = 13
      MultiSelect = True
      TabOrder = 0
    end
  end
  object pnl2: TPanel
    Left = 256
    Top = 0
    Width = 115
    Height = 337
    Align = alCustom
    TabOrder = 1
    object btnInserir: TBitBtn
      Left = 24
      Top = 24
      Width = 75
      Height = 25
      Caption = '&Inserir'
      TabOrder = 0
      OnClick = btnInserirClick
      Kind = bkYes
    end
    object btnRemover: TBitBtn
      Left = 24
      Top = 64
      Width = 75
      Height = 25
      Caption = '&Remover'
      TabOrder = 1
      OnClick = btnRemoverClick
      Kind = bkNo
    end
    object btnEditar: TBitBtn
      Left = 24
      Top = 112
      Width = 75
      Height = 25
      Caption = '&Editar'
      TabOrder = 2
      OnClick = btnEditarClick
      Kind = bkRetry
    end
    object btnOrdenar: TBitBtn
      Left = 24
      Top = 160
      Width = 75
      Height = 25
      Caption = '&Ordenar'
      TabOrder = 3
      OnClick = btnOrdenarClick
      Kind = bkAll
    end
    object btnSair: TBitBtn
      Left = 24
      Top = 304
      Width = 75
      Height = 25
      Caption = 'Sair'
      TabOrder = 4
      Kind = bkClose
    end
  end
  object pnl3: TPanel
    Left = 0
    Top = 336
    Width = 372
    Height = 65
    Align = alCustom
    TabOrder = 2
    object edtPesquisa: TEdit
      Left = 8
      Top = 16
      Width = 353
      Height = 28
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clBlack
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsItalic]
      ParentFont = False
      TabOrder = 0
      Text = 'Pesquisar...'
      OnChange = edtPesquisaChange
      OnEnter = edtPesquisaEnter
      OnExit = edtPesquisaExit
    end
  end
end
