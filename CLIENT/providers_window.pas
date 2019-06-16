unit providers_window;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Vcl.Grids,
  Vcl.DBGrids;

type
  TPROVIDERS_FORM = class(TForm)
    MainMenu1: TMainMenu;
    ADD1: TMenuItem;
    DELETE: TMenuItem;
    EDIT: TMenuItem;
    EXIT1: TMenuItem;
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    procedure EXIT1Click(Sender: TObject);
    procedure ADD1Click(Sender: TObject);
    procedure DELETEClick(Sender: TObject);
    procedure EDITClick(Sender: TObject);
    procedure get_params_commit_result(proc :TIBstoretProc);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  PROVIDERS_FORM: TPROVIDERS_FORM;

implementation

{$R *.dfm}

uses provider_add, data_module;
 procedure TPROVIDERS_FORM.get_params_commit_result(proc :TIBstoretProc);
 var id: int64;
 begin
    // Fill db procedure parametrs with form valut
    proc.spAddProduct.ParamByName('IN_NAME').AsString:= provider_add_form.labelEdit_name.Text;
    dm.spAddProduct.ParamByName('IN_MAJOR').Value:= 1;
    dm.spAddProduct.ParamByName('IN_VAT').Value:= 2;


    // Execute the procedure
    if not dm.spAddProduct.Transaction.InTransaction then
      dm.spAddProduct.Transaction.StartTransaction;
    dm.spAddProduct.ExecProc;

    // Got result from bd procedure
    id:=dm.spAddProduct.ParamByName('OUT_ID').AsInteger;
    dm.spAddProduct.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.TProduct.Open;
    dm.TProduct.Locate('ID',id,[]);
 end;

procedure TPROVIDERS_FORM.ADD1Click(Sender: TObject);
begin
  // Create provider_add_form
  provider_add_form:= Tprovider_add_form.Create(Application);
  provider_add_form.ShowModal;

  // If receve information from provider_add_form
  if provider_add_form.ModalResult= mrOk then
  begin
      get_params_commit_result;
  end;
  // Release add form
  provider_add_form.Release;

end;

procedure TPROVIDERS_FORM.DELETEClick(Sender: TObject);
begin
  // Create dialog window
  if MessageDlg('kill '+dm.tProduct.FieldByName('NAME').AsString+'?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    // Receve id from grid
    dm.spDeleteProduct.ParamByName('IN_ID').Value:=dm.tProduct.FieldByName('ID').Value;

    // Execute the procedure
    if not(dm.spDeleteProduct.Transaction.InTransaction) then
        dm.spDeleteProduct.Transaction.StartTransaction;
    dm.spDeleteProduct.ExecProc;
    dm.spDeleteProduct.Transaction.Commit;

    // Reopen table
    dm.tProduct.Open;
  end;
end;

procedure TPROVIDERS_FORM.EXIT1Click(Sender: TObject);
begin
  Close;
end;


procedure TPROVIDERS_FORM.EDITClick(Sender: TObject);
begin
   // Create provider_add_form
  provider_add_form:= Tprovider_add_form.Create(Application);

  // Fill from from table
  provider_add_form.labelEdit_name.Text :=  dm.tProduct.FieldByName('NAME').AsString;

  // Show form
  provider_add_form.ShowModal;

  // If receve information from provider_add_form
  if provider_add_form.ModalResult=mrOk then
    begin
     get_params_commit_result;
    end;
  provider_add_form.Release;

end;

end.
