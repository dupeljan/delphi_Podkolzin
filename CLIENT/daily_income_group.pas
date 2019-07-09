unit daily_income_group;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids, wordExelReport;

type
  Tdaily_income_group_form = class(TForm)
    ADD: TButton;
    CREATE_DOCX: TButton;
    DELETE: TButton;
    Ginv: TDBGrid;
    Ginv_group: TDBGrid;
    inv: TDataSource;
    inv_group: TDataSource;
    invoice_number: TLabeledEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure ADDClick(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure CREATE_DOCXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  daily_income_group_form: Tdaily_income_group_form;

implementation

{$R *.dfm}
 uses data_module;
procedure Tdaily_income_group_form.ADDClick(Sender: TObject);
begin
  // Fill db procedure parametrs with form valut
    dm.spAddDaily_income_group.ParamByName('IN_DAILY_INCOME_ID').Value :=
    dm.QDaily_income_Pretty.FieldByName('ID').Value;

    dm.spAddDaily_income_group.ParamByName('IN_INVOICE_NUMBER').Value :=
    invoice_number.Text;



    // Execute the procedure
    if not dm.spAddDaily_income_group.Transaction.InTransaction then
      dm.spAddDaily_income_group.Transaction.StartTransaction;
    dm.spAddDaily_income_group.ExecProc;



    dm.spAddDaily_income_group.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;

end;

procedure Tdaily_income_group_form.CREATE_DOCXClick(Sender: TObject);
begin
  create_daily_income();
end;

procedure Tdaily_income_group_form.DELETEClick(Sender: TObject);
begin
 // Fill db procedure parametrs with form valut
    dm.spDeleteDaily_income_group.ParamByName('IN_ID').Value :=
    dm.TDaily_income_group.FieldByName('ID').Value;

    // Execute the procedure
    if not dm.spDeleteDaily_income_group.Transaction.InTransaction then
      dm.spDeleteDaily_income_group.Transaction.StartTransaction;
    dm.spDeleteDaily_income_group.ExecProc;


    dm.spDeleteDaily_income_group.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;
end;

end.
