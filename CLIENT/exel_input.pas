unit exel_input;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ComCtrls;

type
  Texel_input_form = class(TForm)
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    Label1: TLabel;
    Label2: TLabel;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    EXPORT_EXEL: TButton;
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  exel_input_form: Texel_input_form;

implementation

{$R *.dfm}
uses data_module;
procedure Texel_input_form.FormCreate(Sender: TObject);
begin
  dm.update_all;
end;

end.
