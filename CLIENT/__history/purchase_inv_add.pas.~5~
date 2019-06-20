unit purchase_inv_add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ComCtrls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.Grids, Vcl.DBGrids, Vcl.Buttons;

type
  Tpurchase_inv_add_form = class(TForm)
    DBGrid1: TDBGrid;
    leCount: TLabeledEdit;
    leCost: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    DataSource1: TDataSource;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    LProduct: TLabel;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  purchase_inv_add_form: Tpurchase_inv_add_form;

implementation

{$R *.dfm}
 uses data_module;
procedure Tpurchase_inv_add_form.FormCreate(Sender: TObject);
begin
  dm.update_all;
  dm.TProduct.Open;
end;

end.
