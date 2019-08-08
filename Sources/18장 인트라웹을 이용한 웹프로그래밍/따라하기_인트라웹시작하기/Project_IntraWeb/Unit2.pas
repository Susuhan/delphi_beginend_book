unit Unit2;

interface

uses
  Classes, SysUtils, IWAppForm, IWApplication, IWColor, IWTypes, IWDBStdCtrls,
  Controls, IWVCLBaseControl, IWBaseControl, IWBaseHTMLControl, IWControl,
  IWGrids, IWDBGrids, DB, DBTables,Graphics;

type
  TIWForm2 = class(TIWAppForm)
    Table1: TTable;
    DataSource1: TDataSource;
    IWDBGrid1: TIWDBGrid;
    IWDBNavigator1: TIWDBNavigator;
    procedure IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
      AColumn: Integer);
  public
  end;

implementation

{$R *.dfm}


procedure TIWForm2.IWDBGrid1RenderCell(ACell: TIWGridCell; const ARow,
  AColumn: Integer);
begin
  // Ÿ��Ʋ�̸�
  if ARow = 0 then
  begin
    ACell.BGColor := clSilver;
    ACell.Font.Color := clRed;
  end
//���� ���ڵ��̸�
  else if IwDBGrid1.RowIsCurrent then
     ACell.BGColor := clYellow;

end;

end.
