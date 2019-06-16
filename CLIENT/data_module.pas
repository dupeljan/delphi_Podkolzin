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
    spDeletePurchase_inv: TIBStoredProc;
    TLoss: TIBTable;
    spAddLoss: TIBStoredProc;
    TDaily_income: TIBTable;
    spAddDaily_income: TIBStoredProc;
    procedure DataModuleCreate(Sender: TObject);
    procedure DataModuleDestroy(Sender: TObject);
    procedure update_all();
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
procedure Tdm.update_all;
begin
  dm.TProvider.Close;
  dm.TProduct.Close;
  dm.TPurchase_inv.Close;
  dm.TLoss.Close;
  dm.TDaily_income.close;

   dm.TProvider.Open;
  dm.TProduct.Open;
  dm.TPurchase_inv.Open;
  dm.TLoss.open;
  dm.TDaily_income.open;
end;
end.
