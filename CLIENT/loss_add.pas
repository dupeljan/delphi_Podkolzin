unit loss_add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.ComCtrls, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tloss_add_form = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    Label1: TLabel;
    leCount: TLabeledEdit;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label2: TLabel;
    Label3: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  loss_add_form: Tloss_add_form;

implementation

{$R *.dfm}
 uses data_module;
end.
