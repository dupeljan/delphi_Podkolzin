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
    procedure FormCreate(Sender: TObject);

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


procedure TPROVIDERS_FORM.ADD1Click(Sender: TObject);
var id : integer;
begin
  // Create provider_add_form
  provider_add_form:= Tprovider_add_form.Create(Application);
  provider_add_form.ShowModal;

  // If receve information from provider_add_form
  if provider_add_form.ModalResult= mrOk then
  begin

    // Fill db procedure parametrs with form valut
    dm.spAddProvider.ParamByName('IN_NAME').AsString:= provider_add_form.labelEdit_name.Text;

    // Execute the procedure
    if not dm.spAddProvider.Transaction.InTransaction then
      dm.spAddProvider.Transaction.StartTransaction;
    dm.spAddProvider.ExecProc;

    // Got result from bd procedure
    id:=dm.spAddProvider.ParamByName('OUT_ID').AsInteger;
    dm.spAddProvider.Transaction.Commit;

    //  Set TProduct table and grid position
    dm.update_all;
    dm.TProvider.Open;
    dm.TProvider.Locate('ID',id,[]);
  end;
  // Release add form
  provider_add_form.Release;

end;

procedure TPROVIDERS_FORM.DELETEClick(Sender: TObject);
begin
  // Create dialog window
  if MessageDlg('kill '+dm.TProvider.FieldByName('NAME').AsString+'?',
                mtConfirmation,[mbYes,mbNo],0)=mrYes then
  begin

    // Receve id from grid
    dm.spDeleteProvider.ParamByName('IN_ID').Value:=dm.TProvider.FieldByName('ID').Value;

    // Execute the procedure
    if not(dm.spDeleteProvider.Transaction.InTransaction) then
        dm.spDeleteProvider.Transaction.StartTransaction;
    dm.spDeleteProvider.ExecProc;
    dm.spDeleteProvider.Transaction.Commit;

    // Reopen table
    dm.update_all;
    dm.TProvider.Open;
  end;
end;

procedure TPROVIDERS_FORM.EXIT1Click(Sender: TObject);
begin
  Close;
end;


procedure TPROVIDERS_FORM.FormCreate(Sender: TObject);
begin
  dm.update_all;
  dm.Tprovider.Open;
end;

procedure TPROVIDERS_FORM.EDITClick(Sender: TObject);
var id : integer;
begin
   // Create provider_add_form
  provider_add_form:= Tprovider_add_form.Create(Application);

  // Fill from from table
  provider_add_form.labelEdit_name.Text :=  dm.TProvider.FieldByName('NAME').AsString;

  // Show form
  provider_add_form.ShowModal;

  // If receve information from provider_add_form
  if provider_add_form.ModalResult=mrOk then
    begin
        // Fill db procedure parametrs with form valut
        dm.spEditprovider.ParamByName('IN_NAME').AsString:= provider_add_form.labelEdit_name.Text;
        dm.spEditProvider.ParamByName('IN_ID').Value:= dm.TProvider.FieldByName('ID').AsInteger;


        // Execute the procedure
        if not dm.spEditProvider.Transaction.InTransaction then
          dm.spEditProvider.Transaction.StartTransaction;
        dm.spEditProvider.ExecProc;

        // Got result from table
        id:= dm.TProvider.FieldByName('ID').AsInteger;

        dm.spEditProvider.Transaction.Commit;

        //  Set TProduct table and grid position
        dm.update_all;
        dm.TProvider.Open;
        dm.TProvider.Locate('ID',id,[]);
    end;
  provider_add_form.Release;

end;

end.
