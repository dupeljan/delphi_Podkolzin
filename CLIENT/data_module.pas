unit data_module;

interface

uses
  System.SysUtils, System.Classes, Data.DB, IBX.IBDatabase, IBX.IBTable,
  IBX.IBCustomDataSet, IBX.IBStoredProc;

type
  Tdm = class(TDataModule)
    my_database: TIBDatabase;
    IBTransaction1: TIBTransaction;
    spAddProvider: TIBStoredProc;
    TProvider: TIBTable;
    spDeleteProvider: TIBStoredProc;
    spEditProvider: TIBStoredProc;
    TProduct: TIBTable;
    spAddProduct: TIBStoredProc;
    spDeleteProduct: TIBStoredProc;
    spEditProduct: TIBStoredProc;
    TPurchase_inv: TIBTable;
    spAddPurchase_inv: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dm: Tdm;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

procedure Tdm.DataModuleCreate(Sender: TObject);
begin
    my_database.Open;
end;

procedure Tdm.DataModuleDestroy(Sender: TObject);
begin
    my_database.Close
end;

end.
