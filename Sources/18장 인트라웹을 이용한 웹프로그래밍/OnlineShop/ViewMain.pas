unit ViewMain;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, WideStrings,
  FMTBcd, SqlExpr, DB, DBClient, Provider, Controls, IWVCLBaseControl,
  IWBaseControl, IWBaseHTMLControl, IWControl, IWGrids, IWDBGrids, IWCompLabel,
  IWDBStdCtrls, Forms, IWVCLBaseContainer, IWContainer, IWHTMLContainer,
  IWHTML40Container, IWRegion, DBXInterbase, DBXFirebird;

type
  TIWForm1 = class(TIWAppForm)
    IWDBGrid1: TIWDBGrid;
    SQLConnection: TSQLConnection;
    qrOrderList: TSQLDataSet;
    dsOrderList: TDataSource;
    IWDBGrid2: TIWDBGrid;
    dsItemList: TDataSource;
    IWDBLabel9: TIWDBLabel;
    IWLabel7: TIWLabel;
    IWDBLabel10: TIWDBLabel;
    IWLabel8: TIWLabel;
    IWRegion1: TIWRegion;
    IWDBLabel1: TIWDBLabel;
    IWLabel1: TIWLabel;
    IWDBLabel2: TIWDBLabel;
    IWDBLabel3: TIWDBLabel;
    IWLabel2: TIWLabel;
    IWDBLabel4: TIWDBLabel;
    IWDBLabel5: TIWDBLabel;
    IWLabel3: TIWLabel;
    IWDBLabel6: TIWDBLabel;
    IWLabel4: TIWLabel;
    IWDBLabel7: TIWDBLabel;
    IWLabel5: TIWLabel;
    IWDBLabel8: TIWDBLabel;
    IWLabel6: TIWLabel;
    IWLabel9: TIWLabel;
    qrItemList: TSQLDataSet;
    cdsOrderList: TClientDataSet;
    dspOrderList: TDataSetProvider;
    qrOrderListSHOPID: TStringField;
    qrOrderListORDERID: TIntegerField;
    qrOrderListUSERNAME: TStringField;
    qrOrderListUSERNAME_ENG: TStringField;
    qrOrderListUSEREMAIL: TStringField;
    qrOrderListUSERPHONE: TStringField;
    qrOrderListISCOMPANY: TSmallintField;
    qrOrderListCOMPANY: TStringField;
    qrOrderListCOMPANY_ENG: TStringField;
    qrOrderListCOMPANYNO: TStringField;
    qrOrderListHOMEPAGE: TStringField;
    qrOrderListREGDATE: TSQLTimeStampField;
    qrOrderListTOTALCNT: TLargeintField;
    cdsOrderListSHOPID: TStringField;
    cdsOrderListORDERID: TIntegerField;
    cdsOrderListUSERNAME: TStringField;
    cdsOrderListUSERNAME_ENG: TStringField;
    cdsOrderListUSEREMAIL: TStringField;
    cdsOrderListUSERPHONE: TStringField;
    cdsOrderListISCOMPANY: TSmallintField;
    cdsOrderListCOMPANY: TStringField;
    cdsOrderListCOMPANY_ENG: TStringField;
    cdsOrderListCOMPANYNO: TStringField;
    cdsOrderListHOMEPAGE: TStringField;
    cdsOrderListREGDATE: TSQLTimeStampField;
    cdsOrderListTOTALCNT: TLargeintField;
    dspItemList: TDataSetProvider;
    cdsItemList: TClientDataSet;
    cdsItemListITEMID: TIntegerField;
    cdsItemListITEMNAME: TStringField;
    cdsItemListPRICE: TIntegerField;
    cdsItemListORDERCNT: TIntegerField;
    cdsItemListTOTALPRICE: TLargeintField;
    procedure IWAppFormCreate(Sender: TObject);
    procedure IWDBGrid1Columns0Click(ASender: TObject; const AValue: string);
    procedure cdsOrderListISCOMPANYGetText(Sender: TField; var Text: string;
      DisplayText: Boolean);
  public
  end;

implementation

{$R *.dfm}

uses Windows;

procedure TIWForm1.IWAppFormCreate(Sender: TObject);
begin
// �����Ͻð�����, �Ʒ� Path ���� �κ��� ���� ���α׷��� ������ �����غ��� ���� ���̱���.
// ���� �ǹ��� ���� ���� �翬�� ���� DB�� �����ϴ� ������ ����� �۾��ؾ� �մϴ�.
//  SQLConnection.Params.Values['Database'] := 'localhost:' + ExtractFilePath(ParamStr(0)) + 'ONLINESHOPDB.FDB';

  qrOrderList.Open;
  qrItemList.Open;
end;

procedure TIWForm1.IWDBGrid1Columns0Click(ASender: TObject; const AValue: string);
begin
  qrOrderList.Locate('ORDERID', AValue, []);
  qrItemList.Close;
  qrItemList.ParamByName('ORDERID').AsInteger := StrToInt(AValue);
  qrItemList.Open;
end;

procedure TIWForm1.cdsOrderListISCOMPANYGetText(Sender: TField; var Text: string; DisplayText: Boolean);
begin
  if Sender.AsInteger = 1 then Text := '���'
  else                         Text := '����';
end;

initialization
  TIWForm1.SetAsMainForm;

end.
