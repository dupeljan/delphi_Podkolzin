unit provider_add;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.Buttons;

type
  Tprovider_add_form = class(TForm)
    labelEdit_name: TLabeledEdit;
    BitBtn1: TBitBtn;
    BitBtn2: TBitBtn;
    Label1: TLabel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  provider_add_form: Tprovider_add_form;

implementation

{$R *.dfm}

end.
