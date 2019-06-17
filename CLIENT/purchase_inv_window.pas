unit purchase_inv_window;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.Menus;

type
  Tpurchase_inv_form = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    MainMenu1: TMainMenu;
    ADD: TMenuItem;
    EXPORT_DOCX: TMenuItem;
    procedure FormCreate(Sender: TObject);
    procedure ADDClick(Sender: TObject);
    procedure EXPORT_DOCXClick(Sender: TObject);
    //procedure DELETEClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchase_inv_form: Tpurchase_inv_form;

implementation

{$R *.dfm}
uses data_module, purchase_inv_add, wordExelReport, purchase_inv_group;
procedure Tpurchase_inv_form.ADDClick(Sender: TObject);
var id : integer;
begin
    // Create prodict_add_form
    purchase_inv_add_form := Tpurchase_inv_add_form.Create(Application);
    purchase_inv_add_form.ShowModal;

    // If receve information from provider_add_form
  if purchase_inv_add_form.ModalResult= mrOk then
  begin

    // Fill db procedure parametrs with form valut
    dm.spAddPurchase_inv.ParamByName('IN_DATE').Value :=
        purchase_inv_add_form.DateTimePicker1.Date;
    dm.spAddPurchase_inv.ParamByName('IN_PRICE').AsInteger :=
        strtoint( purchase_inv_add_form.leCost.Text );
    dm.spAddPurchase_inv.ParamByName('IN_PRODUCT_COUNT').AsInteger :=
        strtoint ( purchase_inv_add_form.leCount.Text);
    dm.spAddPurchase_inv.ParamByName('IN_PRODUCT_ID').AsInteger :=
        dm.Tproduct.FieldByName('ID').AsInteger;


    // Execute the procedure
    if not dm.spAddPurchase_inv.Transaction.InTransaction then
      dm.spAddPurchase_inv.Transaction.StartTransaction;
    dm.spAddPurchase_inv.ExecProc;

    // Got result from bd procedure
    id:=dm.spAddPurchase_inv.ParamByName('OUT_ID').AsInteger;
    dm.spAddPurchase_inv.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;

    dm.QPurchase_inv_pretty.Locate('ID',id,[]);
  end;
  // Release add form
  purchase_inv_add_form.Release;

end;

{
procedure Tpurchase_inv_form.DELETEClick(Sender: TObject);
begin
  if MessageDlg('kill '+dm.TPurchase_inv.FieldByName('ID').AsString+'?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    // Receve id from grid
    dm.spDeletePurchase_inv.ParamByName('IN_ID').Value:=dm.TPurchase_inv.FieldByName('ID').Value;

    // Execute the procedure
    if not(dm.spDeletePurchase_inv.Transaction.InTransaction) then
        dm.spDeletePurchase_inv.Transaction.StartTransaction;
    dm.spDeletePurchase_inv.ExecProc;
    dm.spDeletePurchase_inv.Transaction.Commit;

    // Reopen table
    dm.update_all;
    dm.TPurchase_inv.Open;
  end;
end;
 }
procedure Tpurchase_inv_form.EXPORT_DOCXClick(Sender: TObject);
begin
  purchase_inv_group_form.ShowModal;
  //create_invoice('Purchase_inv');
end;

procedure Tpurchase_inv_form.FormCreate(Sender: TObject);
begin
  dm.update_all;
  dm.TPurchase_inv.Open;
end;

end.
