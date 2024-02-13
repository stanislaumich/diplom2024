unit UMain;

interface

uses
        Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
        System.Classes, Vcl.Graphics,
        Vcl.Controls, Vcl.Forms, Vcl.Dialogs, FireDAC.Stan.Intf,
        FireDAC.Stan.Option, FireDAC.Stan.Error,
        FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool,
        FireDAC.Stan.Async,
        FireDAC.Phys, FireDAC.Phys.SQLite, FireDAC.Phys.SQLiteDef,
        FireDAC.Stan.ExprFuncs,
        FireDAC.Phys.SQLiteWrapper.Stat, FireDAC.VCLUI.Wait, FireDAC.Stan.Param,
        FireDAC.DatS,
        FireDAC.DApt.Intf, FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet,
        FireDAC.Comp.Client, Vcl.ExtCtrls,
        Vcl.ComCtrls, Vcl.Grids, Vcl.DBGrids, DM, Vcl.StdCtrls, Vcl.DBCtrls,
        Vcl.Mask, inifiles, ComObj;

type
        TFMain = class(TForm)
                PageControl1: TPageControl;
                TabSheet1: TTabSheet;
                TabSheet2: TTabSheet;
                TabSheet3: TTabSheet;
                TabSheet4: TTabSheet;
                TabSheet5: TTabSheet;
                StatusBar1: TStatusBar;
                Panel1: TPanel;
                DBGrid1: TDBGrid;
                DBGrid2: TDBGrid;
                DBGrid3: TDBGrid;
                DBGrid4: TDBGrid;
                DBGrid5: TDBGrid;
                TabSheet6: TTabSheet;
                DBGrid6: TDBGrid;
                Label1: TLabel;
                Label2: TLabel;
                Label3: TLabel;
                Edit1: TEdit;
                Edit2: TEdit;
                Edit3: TEdit;
                Button1: TButton;
                Button2: TButton;
                Button3: TButton;
                DBEdit1: TDBEdit;
                DBEdit2: TDBEdit;
                Label4: TLabel;
                Label5: TLabel;
                DBNavigator1: TDBNavigator;
                DBGrid7: TDBGrid;
                DBGrid8: TDBGrid;
                Label6: TLabel;
                Label7: TLabel;
                Button4: TButton;
                Button5: TButton;
                Button6: TButton;
                DBGrid9: TDBGrid;
                Label8: TLabel;
                DBNavigator3: TDBNavigator;
                DBEdit5: TDBEdit;
                DBEdit6: TDBEdit;
                DBEdit7: TDBEdit;
                Label9: TLabel;
                Label10: TLabel;
                Label11: TLabel;
                Label12: TLabel;
                ComboBox1: TComboBox;
                Edit4: TEdit;
                Edit5: TEdit;
                Button7: TButton;
                Label13: TLabel;
                Label14: TLabel;
                Label15: TLabel;
                Edit6: TEdit;
                Edit7: TEdit;
                Edit8: TEdit;
                Button8: TButton;
                Button9: TButton;
                Button10: TButton;
                Label16: TLabel;
                Label17: TLabel;
                Edit9: TEdit;
                Edit10: TEdit;
                Button11: TButton;
                Button12: TButton;
                Button13: TButton;
                Label18: TLabel;
                Edit11: TEdit;
                Label19: TLabel;
                DBGrid10: TDBGrid;
                Button14: TButton;
                GroupBox1: TGroupBox;
                DBGrid11: TDBGrid;
                Label20: TLabel;
                Edit12: TEdit;
                Button15: TButton;
                OpenDialog1: TOpenDialog;
                Label21: TLabel;
                ComboBox2: TComboBox;
                Label22: TLabel;
                Button16: TButton;
                DBGrid12: TDBGrid;
                Label23: TLabel;
                Label24: TLabel;
                ComboBox3: TComboBox;
                Label25: TLabel;
                Button17: TButton;
                ComboBox4: TComboBox;
                ComboBox5: TComboBox;
                TabSheet7: TTabSheet;
                GroupBox2: TGroupBox;
                Memo1: TMemo;
                Button18: TButton;
                Label26: TLabel;
                Button19: TButton;
                Button20: TButton;
                DBGrid13: TDBGrid;
                Button21: TButton;
                SaveDialog1: TSaveDialog;
    Label27: TLabel;
    Edit13: TEdit;
    Button22: TButton;
    Label28: TLabel;
    ComboBox6: TComboBox;
    Label29: TLabel;
    Button23: TButton;
    Label30: TLabel;
    ComboBox7: TComboBox;
    Button24: TButton;
    Label31: TLabel;
    ComboBox8: TComboBox;
    Button25: TButton;
    DBGrid14: TDBGrid;
                procedure DBGrid1CellClick(Column: TColumn);
                procedure Button1Click(Sender: TObject);
                procedure Button3Click(Sender: TObject);
                procedure DBGrid3CellClick(Column: TColumn);
                procedure Button5Click(Sender: TObject);
                procedure Button4Click(Sender: TObject);
                procedure FormActivate(Sender: TObject);
                procedure FormClose(Sender: TObject; var Action: TCloseAction);
                procedure Button7Click(Sender: TObject);
                procedure DBGrid5CellClick(Column: TColumn);
                procedure Button8Click(Sender: TObject);
                procedure Button9Click(Sender: TObject);
                procedure Button10Click(Sender: TObject);
                procedure DBGrid6CellClick(Column: TColumn);
                procedure Button11Click(Sender: TObject);
                procedure Button12Click(Sender: TObject);
                procedure Button14Click(Sender: TObject);
                procedure FormCreate(Sender: TObject);
                procedure Button15Click(Sender: TObject);
                procedure Button6Click(Sender: TObject);
                procedure Button16Click(Sender: TObject);
                procedure Button13Click(Sender: TObject);
                procedure Button17Click(Sender: TObject);
                procedure Button18Click(Sender: TObject);
                procedure Button19Click(Sender: TObject);
                procedure Button21Click(Sender: TObject);
                procedure Button20Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button22Click(Sender: TObject);
    procedure Button23Click(Sender: TObject);
    procedure Button24Click(Sender: TObject);
    procedure Button25Click(Sender: TObject);
        private
                { Private declarations }
        public
                { Public declarations }
        end;

var
        FMain: TFMain;
        mydir:string;
implementation

{$R *.dfm}

procedure TFMain.Button10Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('delete from oborud where id= ' +
                  DBGrid5.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid5.DataSource.DataSet.Refresh;
        end;
end;

procedure TFMain.Button11Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('insert into sklad (name,adres) values(' +
                  Quotedstr(Edit9.Text) + ',' + Quotedstr(Edit10.Text) + ')');
                QTemp.ExecSQL;
                DBGrid6.DataSource.DataSet.Refresh;
        end;
        ComboBox5.Items.Clear;
        ComboBox5.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from sklad');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox5.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
end;

procedure TFMain.Button12Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update sklad set name=' + Quotedstr(Edit9.Text) +
                  ', adres=' + Quotedstr(Edit10.Text) + ' where id=' +
                  DBGrid6.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid6.DataSource.DataSet.Refresh;
        end;
        ComboBox5.Items.Clear;
        ComboBox5.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from sklad');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox5.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
end;

procedure TFMain.Button13Click(Sender: TObject);
begin
{
        ComboBox5.Items.Clear;
        ComboBox5.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from sklad');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox5.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
        }
        with DataModule1 do
            begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('delete from sklad where id=' +
                  DBGrid6.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid6.DataSource.DataSet.Refresh;
        end;
end;

procedure TFMain.Button14Click(Sender: TObject);
var
        n: integer;
begin
        if Edit11.Text = '0' then
        begin
                ShowMessage('Поступило 0 единиц!');
                Exit;
        end;
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select id from place where idoborud= ' +
                  Quotedstr(DBGrid4.DataSource.DataSet.FieldByName('id')
                  .Asstring) + ' and tip=0 and idpers=' +
                  Quotedstr(DBGrid10.DataSource.DataSet.FieldByName('id')
                  .Asstring));
                QTemp.Open();
                if QTemp.RecordCount <> 0 then
                begin
                        n := QTemp.FieldByName('id').asinteger;
                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add('update place set num=num+' + Edit11.Text
                          + ' where id=' + Inttostr(n));
                        QTemp.ExecSQL;
                end
                else
                begin
                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add
                          ('insert into place (idoborud, idpers,tip,num) values('
                          + Quotedstr(DBGrid4.DataSource.DataSet.FieldByName
                          ('id').Asstring) + ',' +
                          Quotedstr(DBGrid10.DataSource.DataSet.FieldByName
                          ('id').Asstring) + ',' + Quotedstr('0') + ', ' +
                          Edit11.Text + ')');
                        QTemp.ExecSQL;
                end;
        end;
        DBGrid11.DataSource.DataSet.Refresh;
end;

procedure TFMain.Button15Click(Sender: TObject);
begin
        If OpenDialog1.Execute() then
                Edit12.Text := OpenDialog1.FileName;
end;

procedure TFMain.Button16Click(Sender: TObject);
var
        peopid, oborid: string;
begin
        if ComboBox2.Text = '0' then
        begin
                ShowMessage('0 единиц можно и не перемещать!');
                Exit;
        end;
        With DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from people where name=' +
                  Quotedstr(ComboBox4.Text));
                QTemp.Open;
                peopid := QTemp.FieldByName('id').Asstring;
                oborid := DBGrid11.DataSource.DataSet.FieldByName
                  ('idoborud').Asstring;

                if Strtoint(ComboBox2.Text) >
                  DBGrid11.DataSource.DataSet.FieldByName('num').asinteger then
                begin
                        ShowMessage('На складе столько нет!');
                        Exit;
                end;
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update place set num=num-' + ComboBox2.Text +
                  ' where id=' + DBGrid11.DataSource.DataSet.FieldByName('id')
                  .Asstring);
                QTemp.ExecSQL; // спісалі со склада

                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from place where idoborud=' + oborid +
                  ' and idpers=' + peopid + ' and tip=1');
                QTemp.Open;
                if QTemp.RecordCount <> 0 then
                begin

                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add('update place set num=num+' +
                          ComboBox2.Text + ' where tip=1 and idoborud=' + oborid
                          + ' and idpers=' + peopid);
                        QTemp.ExecSQL;
                end
                else
                begin
                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add
                          ('insert into place (idoborud,idpers,tip,num) values ('
                          + oborid + ' , ' + peopid + ',1, ' +
                          ComboBox2.Text + ')');
                        QTemp.ExecSQL;
                end;

                DBGrid11.DataSource.DataSet.Close;
                DBGrid11.DataSource.DataSet.Open;
                QLists.Refresh;

        end;
end;

procedure TFMain.Button17Click(Sender: TObject);
var
        skladid, oborid: string;
begin
        if ComboBox3.Text = '0' then
        begin
                ShowMessage('0 единиц можно и не перемещать!');
                Exit;
        end;
        With DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from sklad where name=' +
                  Quotedstr(ComboBox5.Text));
                QTemp.Open;
                skladid := QTemp.FieldByName('id').Asstring;
                oborid := DBGrid12.DataSource.DataSet.FieldByName
                  ('idoborud').Asstring;

                if Strtoint(ComboBox3.Text) >
                  DBGrid12.DataSource.DataSet.FieldByName('num').asinteger then
                begin
                        ShowMessage('У работника столько нет!');
                        Exit;
                end;
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update place set num=num-' + ComboBox3.Text +
                  ' where id=' + DBGrid12.DataSource.DataSet.FieldByName('id')
                  .Asstring);
                QTemp.ExecSQL; // спісалі со склада

                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from place where idoborud=' + oborid +
                  ' and idpers=' + skladid + ' and tip=1');
                QTemp.Open;
                if QTemp.RecordCount <> 0 then
                begin

                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add('update place set num=num+' +
                          ComboBox3.Text + ' where tip=1 and idoborud=' + oborid
                          + ' and idpers=' + skladid);
                        QTemp.ExecSQL;
                end
                else
                begin
                        QTemp.Close;
                        QTemp.SQL.Clear;
                        QTemp.SQL.Add
                          ('insert into place (idoborud,idpers,tip,num) values ('
                          + oborid + ' , ' + skladid + ',0, ' +
                          ComboBox3.Text + ')');
                        QTemp.ExecSQL;
                end;

                DBGrid11.DataSource.DataSet.Close;
                DBGrid11.DataSource.DataSet.Open;
                QLists.Refresh;

        end;

end;

procedure TFMain.Button18Click(Sender: TObject);
begin
        if OpenDialog1.Execute then
        begin
                Label26.Caption := OpenDialog1.FileName;
                Memo1.Lines.LoadFromFile(Label26.Caption);
        end;
end;

procedure TFMain.Button19Click(Sender: TObject);
begin
        DataModule1.QRep.Close;
        DataModule1.QRep.SQL := Memo1.Lines;
        DataModule1.QRep.Open();
end;

procedure TFMain.Button1Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('insert into org (name,bank,schet) values(' +
                  Quotedstr(Edit1.Text) + ',' + Quotedstr(Edit2.Text) + ',' +
                  Quotedstr(Edit3.Text) + ')');
                QTemp.ExecSQL;
                DBGrid1.DataSource.DataSet.Refresh;
        end;
end;

procedure TFMain.Button20Click(Sender: TObject);
var
        XL, xlw: Variant;
        templatedir, SQL, s: string;
        i, j: integer;
begin
        if DBGrid13.DataSource.DataSet.Active then
        begin
                XL := CreateOLEObject('Excel.Application');
                XL.DisplayAlerts := False;
                XL.Visible := true;
                XL.WorkBooks.Add;
                //XL.WorkBooks.Open(MyDir + '\akt.xls');
                //xlw := XL.Workbooks.Add(extractfilepath(paramstr(0)) +
                //  'tpl.xlsx');
                // https://delphisources.ru/pages/faq/base/excel_work.html
                for I := 0 to dbgrid13.DataSource.DataSet.RecordCount-1 do
                 begin
                  for j := 0 to dbgrid13.DataSource.DataSet.FieldCount-1 do
                   begin
                    XL.Workbooks[1].WorkSheets[1].Cells[i+1, j+1] := dbgrid13.DataSource.DataSet.Fields[j].AsString;

                   end;
                   dbgrid13.DataSource.DataSet.Next;
                 end;
                // XL.ActiveWorkbook.SaveAs(tmpdir+'\print'+parsedatetime('%D.%M.%Y-%H-%T-%S')+'.xls');
                XL.Visible := true;
                // XL.worksheets.Printout;
                //XL.Quit;
                //XL := Unassigned;
        end
        else
                ShowMessage('Запрос не открыт!');

end;

procedure TFMain.Button21Click(Sender: TObject);
begin
        if SaveDialog1.Execute then
                Memo1.Lines.SaveToFile(SaveDialog1.FileName);
end;

procedure TFMain.Button22Click(Sender: TObject);
var
 oborid:string;
begin
if edit13.Text = '0' then
        begin
                ShowMessage('0 единиц можно и не списывать!');
                Exit;
        end;
        With DataModule1 do
        begin
                oborid := DBGrid11.DataSource.DataSet.FieldByName
                  ('idoborud').Asstring;

                if Strtoint(edit13.Text) >
                  DBGrid11.DataSource.DataSet.FieldByName('num').asinteger then
                begin
                        ShowMessage('На складе столько нет!');
                        Exit;
                end;

                if Strtoint(edit13.Text) =
                  DBGrid11.DataSource.DataSet.FieldByName('num').asinteger then
                begin
                                 QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('delete from place where id=' + DBGrid11.DataSource.DataSet.FieldByName('id')
                  .Asstring);
                QTemp.ExecSQL; // спісалі со склада
                end
                 else
                begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update place set num=num-' + edit13.Text +
                  ' where id=' + DBGrid11.DataSource.DataSet.FieldByName('id')
                  .Asstring);
                QTemp.ExecSQL; // спісалі со склада
               end;
                DBGrid11.DataSource.DataSet.Close;
                DBGrid11.DataSource.DataSet.Open;
                QLists.Refresh;

        end;
end;

procedure TFMain.Button23Click(Sender: TObject);
var
        XL, xlw: Variant;
        templatedir, SQL, s: string;
        i, j,r,c: integer;
begin
r:=5;
c:=2;
sql:='select o.name,o.dtend,c.num from people p, oborud o, place c ';
sql:=sql+'WHERE c.idpers=p.id and c.tip=1 and o.id=c.idoborud and p.name='+Quotedstr(ComboBox6.Text);
DataModule1.QRep.SQL.Clear;
DataModule1.QRep.Close;
        DataModule1.QRep.SQL.Add(sql);
        DataModule1.QRep.Open();
        if DBGrid14.DataSource.DataSet.Active then
        begin
                XL := CreateOLEObject('Excel.Application');
                XL.DisplayAlerts := False;
                XL.Visible := true;
                //XL.WorkBooks.Add;
                XL.WorkBooks.Open(MyDir + 'pers.xlsx');
                XL.Visible := true;
                //xlw := XL.Workbooks.Add(extractfilepath(paramstr(0)) +
                //  'tpl.xlsx');
                // https://delphisources.ru/pages/faq/base/excel_work.html
                for I := 0 to dbgrid14.DataSource.DataSet.RecordCount-1 do
                 begin
                  for j := 0 to dbgrid14.DataSource.DataSet.FieldCount-1 do
                   begin
                    XL.Workbooks[1].WorkSheets[1].Cells[i+r, j+c] := dbgrid14.DataSource.DataSet.Fields[j].AsString;

                   end;
                   dbgrid14.DataSource.DataSet.Next;
                 end;
                // XL.ActiveWorkbook.SaveAs(tmpdir+'\print'+parsedatetime('%D.%M.%Y-%H-%T-%S')+'.xls');

                // XL.worksheets.Printout;
                //XL.Quit;
                //XL := Unassigned;
        end
        else
                ShowMessage('Запрос не открыт!');

end;

procedure TFMain.Button24Click(Sender: TObject);
var
        XL, xlw: Variant;
        templatedir, SQL, s: string;
        i, j,r,c: integer;
begin
r:=5;
c:=2;
sql:='select o.name,o.dtend,c.num from sklad p, oborud o, place c ';
sql:=sql+'WHERE c.idpers=p.id and c.tip=0 and o.id=c.idoborud and p.name='+Quotedstr(ComboBox7.Text);
DataModule1.QRep.SQL.Clear;
DataModule1.QRep.Close;
        DataModule1.QRep.SQL.Add(sql);
        DataModule1.QRep.Open();
        if DBGrid14.DataSource.DataSet.Active then
        begin
                XL := CreateOLEObject('Excel.Application');
                XL.DisplayAlerts := False;
                XL.Visible := true;
                //XL.WorkBooks.Add;
                XL.WorkBooks.Open(MyDir + 'sklad.xlsx');
                XL.Visible := true;
                //xlw := XL.Workbooks.Add(extractfilepath(paramstr(0)) +
                //  'tpl.xlsx');
                // https://delphisources.ru/pages/faq/base/excel_work.html
                for I := 0 to dbgrid14.DataSource.DataSet.RecordCount-1 do
                 begin
                  for j := 0 to dbgrid14.DataSource.DataSet.FieldCount-1 do
                   begin
                    XL.Workbooks[1].WorkSheets[1].Cells[i+r, j+c] := dbgrid14.DataSource.DataSet.Fields[j].AsString;

                   end;
                   dbgrid14.DataSource.DataSet.Next;
                 end;
                // XL.ActiveWorkbook.SaveAs(tmpdir+'\print'+parsedatetime('%D.%M.%Y-%H-%T-%S')+'.xls');

                // XL.worksheets.Printout;
                //XL.Quit;
                //XL := Unassigned;
        end
        else
                ShowMessage('Запрос не открыт!');
end;

procedure TFMain.Button25Click(Sender: TObject);
var
        XL, xlw: Variant;
        templatedir, SQL, s: string;
        i, j,r,c: integer;
begin
r:=5;
c:=2;
sql:=' select p.name,o.dtend,c.num from people p, oborud o, place c WHERE ';
sql:=sql+'c.idpers=p.id and c.tip=1 and o.id=c.idoborud and o.name='+Quotedstr(ComboBox8.Text);
sql:=sql+' union  select p.name,o.dtend,c.num from sklad p, oborud o, place c WHERE ';
sql:=sql+'c.idpers=p.id and c.tip=0 and o.id=c.idoborud and o.name='+Quotedstr(ComboBox8.Text);


DataModule1.QRep.SQL.Clear;
DataModule1.QRep.Close;
        DataModule1.QRep.SQL.Add(sql);
        DataModule1.QRep.Open();
        if DBGrid14.DataSource.DataSet.Active then
        begin
                XL := CreateOLEObject('Excel.Application');
                XL.DisplayAlerts := False;
                XL.Visible := true;
                //XL.WorkBooks.Add;
                XL.WorkBooks.Open(MyDir + 'mater.xlsx');
                XL.Visible := true;
                //xlw := XL.Workbooks.Add(extractfilepath(paramstr(0)) +
                //  'tpl.xlsx');
                // https://delphisources.ru/pages/faq/base/excel_work.html
                for I := 0 to dbgrid14.DataSource.DataSet.RecordCount-1 do
                 begin
                  for j := 0 to dbgrid14.DataSource.DataSet.FieldCount-1 do
                   begin
                    XL.Workbooks[1].WorkSheets[1].Cells[i+r, j+c] := dbgrid14.DataSource.DataSet.Fields[j].AsString;

                   end;
                   dbgrid14.DataSource.DataSet.Next;
                 end;
                // XL.ActiveWorkbook.SaveAs(tmpdir+'\print'+parsedatetime('%D.%M.%Y-%H-%T-%S')+'.xls');

                // XL.worksheets.Printout;
                //XL.Quit;
                //XL := Unassigned;
        end
        else
                ShowMessage('Запрос не открыт!');
end;

procedure TFMain.Button2Click(Sender: TObject);
begin
  with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('delete from org where id=' +
                  DBGrid1.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid1.DataSource.DataSet.Refresh;
        end;
end;

procedure TFMain.Button3Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update org set name=' + Quotedstr(Edit1.Text) +
                  ', bank=' + Quotedstr(Edit2.Text) + ', schet=' +
                  Quotedstr(Edit3.Text) + ' where id=' +
                  DBGrid1.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid1.DataSource.DataSet.Refresh;
        end;

end;

procedure TFMain.Button4Click(Sender: TObject);
var
        n: integer;
begin

        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from dolg where name=' +
                  Quotedstr(ComboBox1.Text));
                QTemp.Open();
                n := QTemp.FieldByName('id').asinteger;
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add
                  ('insert into people (name,dtborn,iddolg,idotdel) values(' +
                  Quotedstr(Edit4.Text) + ',' + Quotedstr(Edit5.Text) + ',' +
                  Quotedstr(Inttostr(n)) + ',' +
                  DBGrid8.DataSource.DataSet.FieldByName('id').Asstring + ')');
                QTemp.ExecSQL;
                DBGrid3.DataSource.DataSet.Refresh;
        end;
        ComboBox4.Items.Clear;
        ComboBox4.Text := '';
        ComboBox6.Items.Clear;
        ComboBox6.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from people');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox4.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                ComboBox6.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
        ComboBox5.Items.Clear;
        ComboBox5.Text := '';
        ComboBox7.Items.Clear;
        ComboBox7.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from sklad');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox5.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                ComboBox7.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
        ComboBox8.Items.Clear;
        ComboBox8.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from oborud');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox8.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;


end;

procedure TFMain.Button5Click(Sender: TObject);
var
        n: integer;
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from dolg where name=' +
                  Quotedstr(ComboBox1.Text));
                QTemp.Open();
                n := QTemp.FieldByName('id').asinteger;
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update people set name=' + Quotedstr(Edit4.Text)
                  + ', dtborn=' + Quotedstr(Edit5.Text) + ', iddolg=' +
                  Quotedstr(Inttostr(n)) + ' where id=' +
                  DBGrid3.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid3.DataSource.DataSet.Refresh;
                // dbgrid3CellClick(1);
        end;
        ComboBox4.Items.Clear;
        ComboBox4.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from people');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox4.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
end;

procedure TFMain.Button6Click(Sender: TObject);
begin
{
        ComboBox4.Items.Clear;
        ComboBox4.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from people');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox4.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
        }
         with DataModule1 do
            begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('delete from people where id=' +
                  DBGrid3.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid3.DataSource.DataSet.Refresh;
        end;
end;

procedure TFMain.Button7Click(Sender: TObject);
var
        ini: tinifile;
        s: string;
begin
        // ini := tinifile.Create(extractfilepath(application.ExeName) +
        // 'settings.ini');
        s := Edit12.Text; // .ReadString('BASE', 'path', '');
        // ini.Free;
        // datamodule1.FDC.Close;
        DataModule1.fdc.Params.Database := s;
        DataModule1.fdc.Open();
        DataModule1.FDTable1.Open;
        DataModule1.FDTable2.Open;
        DataModule1.FDTable3.Open;
        DataModule1.FDTable4.Open;
        DataModule1.FDTable5.Open;
        DataModule1.FDTable6.Open;
        DataModule1.QList.Open;
        DataModule1.QLists.Open;
         ComboBox4.Items.Clear;
        ComboBox4.Text := '';
        ComboBox6.Items.Clear;
        ComboBox6.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from people');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox4.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                ComboBox6.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
        ComboBox5.Items.Clear;
        ComboBox5.Text := '';
        ComboBox7.Items.Clear;
        ComboBox7.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from sklad');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox5.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                ComboBox7.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
     ComboBox8.Items.Clear;
        ComboBox8.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from oborud');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox8.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;

end;

procedure TFMain.Button8Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('insert into oborud (name,dtbegin,dtend) values('
                  + Quotedstr(Edit6.Text) + ',' + Quotedstr(Edit7.Text) + ',' +
                  Quotedstr(Edit8.Text) + ')');
                QTemp.ExecSQL;
                DBGrid5.DataSource.DataSet.Refresh;
        end;
        ComboBox8.Items.Clear;
        ComboBox8.Text := '';
        DataModule1.QTemp.Close;
        DataModule1.QTemp.SQL.Clear;
        DataModule1.QTemp.SQL.Add('select * from oborud');
        DataModule1.QTemp.Open;
        While not DataModule1.QTemp.Eof do
        begin
                ComboBox8.Items.Add(DataModule1.QTemp.FieldByName('name')
                  .Asstring);
                DataModule1.QTemp.Next
        end;
end;

procedure TFMain.Button9Click(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close;
                QTemp.SQL.Clear;
                QTemp.SQL.Add('update oborud set name=' + Quotedstr(Edit6.Text)
                  + ', dtbegin=' + Quotedstr(Edit7.Text) + ', dtend=' +
                  Quotedstr(Edit8.Text) + ' where id=' +
                  DBGrid5.DataSource.DataSet.FieldByName('id').Asstring);
                QTemp.ExecSQL;
                DBGrid5.DataSource.DataSet.Refresh;
                // dbgrid3CellClick(1);
        end;
end;

procedure TFMain.DBGrid1CellClick(Column: TColumn);
begin
        Edit1.Text := DBGrid1.DataSource.DataSet.FieldByName('name').Asstring;
        Edit2.Text := DBGrid1.DataSource.DataSet.FieldByName('bank').Asstring;
        Edit3.Text := DBGrid1.DataSource.DataSet.FieldByName('schet').Asstring;
end;

procedure TFMain.DBGrid3CellClick(Column: TColumn);
begin
        with DataModule1 do
        begin
                Edit4.Text := DBGrid3.DataSource.DataSet.FieldByName
                  ('name').Asstring;
                Edit5.Text := DBGrid3.DataSource.DataSet.FieldByName
                  ('dtborn').Asstring;
                ComboBox1.Items.Clear;
                // combobox1.text:='';
                QTemp.Close();
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from dolg');
                QTemp.Open();
                while not QTemp.Eof do
                begin
                        ComboBox1.Items.Add(QTemp.FieldByName('name').Asstring);
                        QTemp.Next;
                end;
                QTemp.Close;
                QTemp.SQL.Clear;
                if DBGrid3.DataSource.DataSet.FieldByName('iddolg').Asstring = ''
                then
                        ComboBox1.Text := 'Не указано'
                else
                begin
                        QTemp.SQL.Add('select * from dolg where id=' +
                          DBGrid3.DataSource.DataSet.FieldByName('iddolg')
                          .Asstring);
                        QTemp.Open;
                        ComboBox1.Text := QTemp.FieldByName('name').Asstring;
                end;
        end;
end;

procedure TFMain.DBGrid5CellClick(Column: TColumn);
begin
        Edit6.Text := DBGrid5.DataSource.DataSet.FieldByName('name').Asstring;
        Edit7.Text := DBGrid5.DataSource.DataSet.FieldByName('dtbegin')
          .Asstring;
        Edit8.Text := DBGrid5.DataSource.DataSet.FieldByName('dtend').Asstring;
end;

procedure TFMain.DBGrid6CellClick(Column: TColumn);
begin
        Edit9.Text := DBGrid6.DataSource.DataSet.FieldByName('name').Asstring;
        Edit10.Text := DBGrid6.DataSource.DataSet.FieldByName('adres').Asstring;
end;

procedure TFMain.FormActivate(Sender: TObject);
begin
        with DataModule1 do
        begin
                QTemp.Close();
                QTemp.SQL.Clear;
                QTemp.SQL.Add('select * from dolg');
                QTemp.Open();
                while not QTemp.Eof do
                begin
                        ComboBox1.Items.Add(QTemp.FieldByName('name').Asstring);
                        QTemp.Next;
                end;
        end;
end;

procedure TFMain.FormClose(Sender: TObject; var Action: TCloseAction);
var
        ini: tinifile;
        s: string;
begin
        ini := tinifile.Create(extractfilepath(application.ExeName) +
          'settings.ini');
        ini.WriteString('BASE', 'path', DataModule1.fdc.Params.Database);
        ini.Free;
end;

procedure TFMain.FormCreate(Sender: TObject);
var
        ini: tinifile;
        s: string;
begin
        mydir:=extractfilepath(paramstr(0));
        ini := tinifile.Create(mydir +
          'settings.ini');
        Edit12.Text := ini.ReadString('BASE', 'path', '');
        ini.Free;


 Button7.Click;
end;

end.
