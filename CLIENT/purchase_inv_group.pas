unit purchase_inv_group;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls, wordexelreport;

type
  Tpurchase_inv_group_form = class(TForm)
    Ginv_group: TDBGrid;
    Ginv: TDBGrid;
    ADD: TButton;
    DELETE: TButton;
    inv: TDataSource;
    inv_group: TDataSource;
    invoice_number: TLabeledEdit;
    CREATE_DOCX: TButton;
    procedure FormCreate(Sender: TObject);
    procedure ADDClick(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure CREATE_DOCXClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchase_inv_group_form: Tpurchase_inv_group_form;

implementation

{$R *.dfm}
uses data_module;
procedure Tpurchase_inv_group_form.ADDClick(Sender: TObject);

begin

    // Fill db procedure parametrs with form valut
    dm.spAddPurchase_inv_group.ParamByName('IN_PURCHASE_INV_ID').Value :=
    dm.QPurchase_inv_pretty.FieldByName('ID').Value;

    dm.spAddPurchase_inv_group.ParamByName('IN_INV_NUMBER').Value :=
    invoice_number.Text;



    // Execute the procedure
    if not dm.spAddPurchase_inv_group.Transaction.InTransaction then
      dm.spAddPurchase_inv_group.Transaction.StartTransaction;
    dm.spAddPurchase_inv_group.ExecProc;



    dm.spAddPurchase_inv.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;


end;

procedure Tpurchase_inv_group_form.CREATE_DOCXClick(Sender: TObject);
begin
  create_invoice('');
end;

procedure Tpurchase_inv_group_form.DELETEClick(Sender: TObject);
begin
        // Fill db procedure parametrs with form valut
    dm.spDeletePurcahse_inv_group.ParamByName('IN_ID').Value :=
    dm.TPurchase_inv_group.FieldByName('ID').Value;





    // Execute the procedure
    if not dm.spDeletePurcahse_inv_group.Transaction.InTransaction then
      dm.spDeletePurcahse_inv_group.Transaction.StartTransaction;
    dm.spDeletePurcahse_inv_group.ExecProc;



    dm.spDeletePurcahse_inv_group.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;

end;

procedure Tpurchase_inv_group_form.FormCreate(Sender: TObject);
begin
  dm.update_all;
end;

end.
