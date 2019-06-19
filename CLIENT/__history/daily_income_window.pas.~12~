unit daily_income_window;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Menus, Vcl.Grids,
  Vcl.DBGrids;

type
  TDAILY_INCOME_FORM = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    ADD: TMenuItem;
    EXPORTDOCX1: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ADDClick(Sender: TObject);
    procedure EXPORTDOCX1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DAILY_INCOME_FORM: TDAILY_INCOME_FORM;

implementation

{$R *.dfm}
uses data_module,loss_add, WordExelReport;
procedure TDAILY_INCOME_FORM.ADDClick(Sender: TObject);
var id : integer;
begin

    // Create prodict_add_form
    loss_add_form := Tloss_add_form.Create(Application);
    loss_add_form.ShowModal;

    // If receve information from provider_add_form
  if loss_add_form.ModalResult= mrOk then
  begin

    // Fill db procedure parametrs with form valut
    dm.spAddDaily_income.ParamByName('IN_DATE').Value :=
        loss_add_form.DateTimePicker1.Date;
    dm.spAddDaily_income.ParamByName('IN_PRODUCT_COUNT').AsInteger :=
        strtoint (loss_add_form.leCount.Text);
    dm.spAddDaily_income.ParamByName('IN_PRODUCT_ID').AsInteger :=
        dm.Tproduct.FieldByName('ID').AsInteger;


    // Execute the procedure
    if not dm.spAddDaily_income.Transaction.InTransaction then
      dm.spAddDaily_income.Transaction.StartTransaction;
    dm.spAddDaily_income.ExecProc;

    // Got result from bd procedure
    id:=dm.spAddDaily_income.ParamByName('OUT_ID').AsInteger;
    dm.spAddDaily_income.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;
    dm.Qdaily_income_pretty.Locate('ID',id,[]);
  end;
  // Release add form
  loss_add_form.Release;


end;

procedure TDAILY_INCOME_FORM.EXPORTDOCX1Click(Sender: TObject);
begin
     //create_invoice('Daily_income');
end;

procedure TDAILY_INCOME_FORM.FormCreate(Sender: TObject);
begin
  dm.update_all;
end;

end.
