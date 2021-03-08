object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Gerador de Cpfs'
  ClientHeight = 114
  ClientWidth = 265
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Button1: TButton
    Left = 44
    Top = 45
    Width = 177
    Height = 25
    Caption = 'Gerar CPFs / CNPJs'
    TabOrder = 0
    OnClick = Button1Click
  end
  object ZConnection1: TZConnection
    ControlsCodePage = cCP_UTF16
    HostName = '127.0.01'
    Port = 3306
    Database = 'bed'
    User = 'root'
    Password = 'newpwd'
    Protocol = 'mysql-5'
    Left = 64
    Top = 40
  end
  object ZQuery1: TZQuery
    Connection = ZConnection1
    Params = <>
    Left = 128
    Top = 48
  end
  object CPF_CNPJ_Query: TZQuery
    Connection = ZConnection1
    SQL.Strings = (
      'select  id_clientes from tbl_clientes where cpf_cnpj is null')
    Params = <>
    Left = 160
    Top = 16
    object CPF_CNPJ_Queryid_clientes: TIntegerField
      FieldName = 'id_clientes'
      Required = True
    end
  end
end
