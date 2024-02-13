unit DM;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error,
  FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
  FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
  FireDAC.Stan.ExprFuncs,
  FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
  FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client;

type
  TDataModule1 = class(TDataModule)
    FDC: TFDConnection;
    Qtemp: TFDQuery;
    DataSource1: TDataSource;
    DataSource2: TDataSource;
    DataSource3: TDataSource;
    DataSource4: TDataSource;
    DataSource5: TDataSource;
    DataSource6: TDataSource;
    FDTable1: TFDTable;
    FDTable2: TFDTable;
    FDTable3: TFDTable;
    FDTable4: TFDTable;
    FDTable5: TFDTable;
    FDTable6: TFDTable;
    QList: TFDQuery;
    DList: TDataSource;
    QLists: TFDQuery;
    DListS: TDataSource;
    QRep: TFDQuery;
    DSrep: TDataSource;
    QDel: TFDQuery;
    procedure FDTable4AfterPost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataModule1: TDataModule1;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses umain;
{$R *.dfm}

procedure TDataModule1.FDTable4AfterPost(DataSet: TDataSet);
begin
  // обновим комбо
  with fmain do
  begin
    combobox1.items.clear;
    combobox1.text := '';
    Qtemp.Close();
    Qtemp.SQL.clear;
    Qtemp.SQL.Add('select * from dolg');
    Qtemp.Open();
    while not Qtemp.eof do
    begin
      combobox1.items.Add(Qtemp.FieldByName('name').AsString);
      Qtemp.Next;
    end;

  end;

end;

end.
