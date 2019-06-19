unit loss_group;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.ExtCtrls,
  Vcl.Grids, Vcl.DBGrids;

type
  Tloss_group_form = class(TForm)
    ADD: TButton;
    CREATE_DOCX: TButton;
    DELETE: TButton;
    Ginv: TDBGrid;
    Ginv_group: TDBGrid;
    inv: TDataSource;
    inv_group: TDataSource;
    invoice_number: TLabeledEdit;
    procedure ADDClick(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure CREATE_DOCXClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loss_group_form: Tloss_group_form;

implementation

{$R *.dfm}
  uses data_module, wordExelReport;
procedure Tloss_group_form.ADDClick(Sender: TObject);
begin
 // Fill db procedure parametrs with form valut
    dm.spAddLoss_group.ParamByName('IN_LOSS_ID').Value :=
    dm.QLoss_Pretty.FieldByName('ID').Value;

    dm.spAddLoss_group.ParamByName('IN_INVOICE_NUMBER').Value :=
    invoice_number.Text;



    // Execute the procedure
    if not dm.spAddLoss_group.Transaction.InTransaction then
      dm.spAddLoss_group.Transaction.StartTransaction;
    dm.spAddLoss_group.ExecProc;



    dm.spAddLoss_group.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;

end;

procedure Tloss_group_form.CREATE_DOCXClick(Sender: TObject);
begin
  create_loss;
end;

procedure Tloss_group_form.DELETEClick(Sender: TObject);
begin
    // Fill db procedure parametrs with form valut
    dm.spDeleteLoss_group.ParamByName('IN_ID').Value :=
    dm.TLoss_group.FieldByName('ID').Value;





    // Execute the procedure
    if not dm.spDeleteLoss_group.Transaction.InTransaction then
      dm.spDeleteLoss_group.Transaction.StartTransaction;
    dm.spDeleteLoss_group.ExecProc;



    dm.spDeleteLoss_group.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;
end;

end.
