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
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchase_inv_form: Tpurchase_inv_form;

implementation

{$R *.dfm}
uses data_module;
procedure Tpurchase_inv_form.FormCreate(Sender: TObject);
begin
  dm.TPurchase_inv.Open;
end;

end.