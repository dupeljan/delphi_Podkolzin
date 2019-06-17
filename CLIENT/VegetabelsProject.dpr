program VegetabelsProject;

uses
  Vcl.Forms,
  data_module in 'data_module.pas' {dm: TDataModule},
  main in 'main.pas' {MAIN_WINDOW},
  provider_add in 'provider_add.pas' {provider_add_form},
  providers_window in 'providers_window.pas' {PROVIDERS_FORM},
  product_window in 'product_window.pas' {PRODUCT_FORM},
  product_add in 'product_add.pas' {product_add_form},
  purchase_inv_window in 'purchase_inv_window.pas' {purchase_inv_form},
  purchase_inv_add in 'purchase_inv_add.pas' {purchase_inv_add_form},
  loss_window in 'loss_window.pas' {loss_form},
  loss_add in 'loss_add.pas' {loss_add_form},
  daily_income_window in 'daily_income_window.pas' {DAILY_INCOME_FORM},
  daily_income_add in 'daily_income_add.pas' {daily_income_add_form},
  WordExelReport in 'WordExelReport.pas',
  purchase_inv_group in 'purchase_inv_group.pas' {purchase_inv_group_form};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(Tdm, dm);
  Application.CreateForm(TMAIN_WINDOW, MAIN_WINDOW);
  Application.CreateForm(Tprovider_add_form, provider_add_form);
  Application.CreateForm(TPROVIDERS_FORM, PROVIDERS_FORM);
  Application.CreateForm(TPRODUCT_FORM, PRODUCT_FORM);
  Application.CreateForm(Tproduct_add_form, product_add_form);
  Application.CreateForm(Tpurchase_inv_form, purchase_inv_form);
  Application.CreateForm(Tpurchase_inv_add_form, purchase_inv_add_form);
  Application.CreateForm(Tloss_form, loss_form);
  Application.CreateForm(Tloss_add_form, loss_add_form);
  Application.CreateForm(TDAILY_INCOME_FORM, DAILY_INCOME_FORM);
  Application.CreateForm(Tdaily_income_add_form, daily_income_add_form);
  Application.CreateForm(Tpurchase_inv_group_form, purchase_inv_group_form);
  Application.Run;
end.
