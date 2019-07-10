unit WordExelReport;

interface
procedure example_word();
procedure example_exel();
procedure create_invoice(str :string);
procedure create_loss();
procedure create_daily_income();
procedure create_exel();

implementation
uses comObj, data_module,  sysutils,wordXP, excelXP, exel_input;

procedure create_daily_income();
 var
 title,text : string;
 MS_Word: Variant;
 i,j ,sum,totalsum,price: integer;
begin
      // Get loss info
     dm.QDaily_income_group_pretty.ParamByName('IN_PURCHASE_NUMBER').Value :=
     dm.TDaily_income_group.FieldByName('INVOICE_NUMBER').Value;
     dm.update_all;

     dm.QDaily_income_group_pretty.Last;


    try
    MS_Word:=CreateOleObject('Word.Application');
    MS_Word.Visible:=true;
    MS_Word.Documents.Add;
    MS_Word.Selection.Start:=20;

    MS_Word.ActiveDocument.Range.InsertAfter('  �������� ��� ');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.ActiveDocument.Tables.Add(
     MS_Word.ActiveDocument.Range.Characters.Last,dm.QDaily_income_group_pretty.RecordCount+1,7);

    MS_Word.ActiveDocument.Tables.Item(1).Borders.InsideLineStyle:=wdLineStyleSingle;
    MS_Word.ActiveDocument.Tables.Item(1).Borders.OutsideLineStyle:=wdLineStyleSingle;



    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,1).Range.Text:='� �������� �������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,2).Range.Text:='������������ ������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,3).Range.Text:='�������������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,4).Range.Text:='����';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,5).Range.Text:='����������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,6).Range.Text:='���� ��������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,7).Range.Text:='�����';

    dm.QDaily_income_group_pretty.first;

    totalsum := 0;
    for i := 2 to dm.QDaily_income_group_pretty.RecordCount+1 do
    begin

      // Got product price
      dm.spGetPrice.ParamByName('IN_PRODUCT_ID').Value:=
      dm.QDaily_income_group_pretty.FieldByName('PRODUCT_ID').Value;

      dm.spGetPrice.ParamByName('IN_DATE').Value :=
      dm.QDaily_income_group_pretty.FieldByName('THE_DATE').Value;

        // Execute the procedure
        if not dm.spGetPrice.Transaction.InTransaction then
          dm.spGetPrice.Transaction.StartTransaction;
        dm.spGetPrice.ExecProc;

        // Got result from bd procedure
        price:=dm.spGetPrice.ParamByName('OUT_PRICE').AsInteger;
        dm.spGetPrice.Transaction.Commit;

      // End got product price
       dm.update_all;

       dm.QLoss_group_pretty.first;
       for  j:= 0 to i-2 do
          dm.QDaily_income_group_pretty.Next;


      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,1).Range.Text:= intToStr(i-1);
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,2).Range.Text:=dm.QDaily_income_group_pretty.FieldByName('PRODUCT_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,3).Range.Text:=dm.QDaily_income_group_pretty.FieldByName('PROVIDER_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,4).Range.Text:= price;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,5).Range.Text:=dm.QDaily_income_group_pretty.FieldByName('PRODUCT_COUNT').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,6).Range.Text:=dm.QDaily_income_group_pretty.FieldByName('THE_DATE').AsString;

      sum := price;
      sum := sum * dm.QDaily_income_group_pretty.FieldByName('PRODUCT_COUNT').Asinteger;
      totalsum := totalsum + sum;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,7).Range.Text:= intToStr(sum);

    end;

    MS_Word.ActiveDocument.Range.InsertAfter(' �����  ' + inttostr(totalsum) + ' ���.');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.Visible:=true;
    MS_Word.DisplayAlerts := False;
  except
    MS_Word.DisplayAlerts := False;
    MS_Word.Quit;
  end;

end;


procedure create_loss();
var
 title,text : string;
 MS_Word: Variant;
 i,j ,sum,totalsum,price: integer;
begin
      // Get loss info
     dm.QLoss_group_pretty.ParamByName('IN_PURCHASE_NUMBER').Value :=
     dm.TLoss_group.FieldByName('INVOICE_NUMBER').Value;
     dm.update_all;

     dm.QLoss_group_pretty.Last;


    try
    MS_Word:=CreateOleObject('Word.Application');
    MS_Word.Visible:=true;
    MS_Word.Documents.Add;
    MS_Word.Selection.Start:=20;

    MS_Word.ActiveDocument.Range.InsertAfter('  �������� ��� ');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.ActiveDocument.Tables.Add(
     MS_Word.ActiveDocument.Range.Characters.Last,dm.QLoss_group_pretty.RecordCount+1,7);

    MS_Word.ActiveDocument.Tables.Item(1).Borders.InsideLineStyle:=wdLineStyleSingle;
    MS_Word.ActiveDocument.Tables.Item(1).Borders.OutsideLineStyle:=wdLineStyleSingle;



    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,1).Range.Text:='� �������� �������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,2).Range.Text:='������������ ������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,3).Range.Text:='�������������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,4).Range.Text:='����';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,5).Range.Text:='����������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,6).Range.Text:='���� ��������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,7).Range.Text:='�����';

    dm.QLoss_group_pretty.first;

    totalsum := 0;
    for i := 2 to dm.QLoss_group_pretty.RecordCount+1 do
    begin

      // Got product price
      dm.spGetPrice.ParamByName('IN_PRODUCT_ID').Value:=
      dm.QLoss_group_pretty.FieldByName('PRODUCT_ID').Value;

      dm.spGetPrice.ParamByName('IN_DATE').Value :=
      dm.QLoss_group_pretty.FieldByName('THE_DATE').Value;

        // Execute the procedure
        if not dm.spGetPrice.Transaction.InTransaction then
          dm.spGetPrice.Transaction.StartTransaction;
        dm.spGetPrice.ExecProc;

        // Got result from bd procedure
        price:=dm.spGetPrice.ParamByName('OUT_PRICE').AsInteger;
        dm.spGetPrice.Transaction.Commit;

      // End got product price
       dm.update_all;

       dm.QLoss_group_pretty.first;
       for  j:= 0 to i-2 do
          dm.QLoss_group_pretty.Next;


      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,1).Range.Text:= intToStr(i-1);
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,2).Range.Text:=dm.QLoss_group_pretty.FieldByName('PRODUCT_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,3).Range.Text:=dm.QLoss_group_pretty.FieldByName('PROVIDER_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,4).Range.Text:= price;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,5).Range.Text:=dm.QLoss_group_pretty.FieldByName('PRODUCT_COUNT').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,6).Range.Text:=dm.QLoss_group_pretty.FieldByName('THE_DATE').AsString;

      sum := price;
      sum := sum * dm.QLoss_group_pretty.FieldByName('PRODUCT_COUNT').Asinteger;
      totalsum := totalsum + sum;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,7).Range.Text:= intToStr(sum);

    end;

    MS_Word.ActiveDocument.Range.InsertAfter(' �����  ' + inttostr(totalsum) + ' ���.');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.Visible:=true;
    MS_Word.DisplayAlerts := False;
  except
    MS_Word.DisplayAlerts := False;
    MS_Word.Quit;
  end;

end;

procedure create_invoice(str :string);
var
 title,text : string;
 MS_Word: Variant;
 i ,sum,totalsum: integer;
begin
   dm.QPurchase_inv_group_pretty.ParamByName('IN_PURCHASE_NUMBER').Value :=
   dm.TPurchase_inv_group.FieldByName('INVOICE_NUMBER').Value;
   dm.update_all;
   //for I := 0 to 99 do
     //dm.QPurchase_inv_group_pretty.Next;
     // Haha, it's work
   dm.QPurchase_inv_group_pretty.Last;
   i := dm.QPurchase_inv_group_pretty.RecordCount;

  {try
    MS_Word:=CreateOleObject('Word.Application');
    MS_Word.Visible:=true;
    MS_Word.Documents.Add;
    MS_Word.Selection.Start:=20;
    MS_Word.ActiveDocument.Range.InsertAfter(title);
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);
    MS_Word.ActiveDocument.Range.InsertAfter(text);

    MS_Word.Visible:=true;
    MS_Word.DisplayAlerts := False;
  except
    MS_Word.DisplayAlerts := False;
    MS_Word.Quit;
  end; }
  try
    MS_Word:=CreateOleObject('Word.Application');
    MS_Word.Visible:=true;
    MS_Word.Documents.Add;
    MS_Word.Selection.Start:=20;

    MS_Word.ActiveDocument.Range.InsertAfter('  �������� ��� ');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.ActiveDocument.Tables.Add(
     MS_Word.ActiveDocument.Range.Characters.Last,dm.QPurchase_inv_group_pretty.RecordCount+1,7);

    MS_Word.ActiveDocument.Tables.Item(1).Borders.InsideLineStyle:=wdLineStyleSingle;
    MS_Word.ActiveDocument.Tables.Item(1).Borders.OutsideLineStyle:=wdLineStyleSingle;



    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,1).Range.Text:='� �������� �������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,2).Range.Text:='������������ ������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,3).Range.Text:='�������������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,4).Range.Text:='����';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,5).Range.Text:='����������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,6).Range.Text:='���� ��������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,7).Range.Text:='�����';

    dm.QPurchase_inv_group_pretty.first;

    totalsum := 0;
    for i := 2 to dm.QPurchase_inv_group_pretty.RecordCount+1 do
    begin
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,1).Range.Text:= intToStr(i-1);
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,2).Range.Text:=dm.QPurchase_inv_group_pretty.FieldByName('PRODUCT_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,3).Range.Text:=dm.QPurchase_inv_group_pretty.FieldByName('PROVIDER_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,4).Range.Text:=dm.QPurchase_inv_group_pretty.FieldByName('PRICE').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,5).Range.Text:=dm.QPurchase_inv_group_pretty.FieldByName('PRODUCT_COUNT').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,6).Range.Text:=dm.QPurchase_inv_group_pretty.FieldByName('THE_DATE').AsString;

      sum := dm.QPurchase_inv_group_pretty.FieldByName('PRICE').Asinteger;
      sum := sum * dm.QPurchase_inv_group_pretty.FieldByName('PRODUCT_COUNT').Asinteger;
      totalsum := totalsum + sum;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,7).Range.Text:= intToStr(sum);
      dm.QPurchase_inv_group_pretty.Next;
    end;

    MS_Word.ActiveDocument.Range.InsertAfter(' �����  ' + inttostr(totalsum) + ' ���.');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.Visible:=true;
    MS_Word.DisplayAlerts := False;
  except
    MS_Word.DisplayAlerts := False;
    MS_Word.Quit;
  end;

end;
procedure example_word;
var
  i: integer;
  MS_Word: Variant;
begin
  try
    MS_Word:=CreateOleObject('Word.Application');
    MS_Word.Visible:=true;
    MS_Word.Documents.Add;
    MS_Word.Selection.Start:=20;
    MS_Word.ActiveDocument.Range.InsertAfter('   ��� �#: ');

    MS_Word.Visible:=true;
    MS_Word.DisplayAlerts := False;
  except
    MS_Word.DisplayAlerts := False;
    MS_Word.Quit;
  end;
end;

procedure example_exel;
  Var Ap : Variant;
begin
  Ap := CreateOleObject('Excel.Application');
  Ap.Workbooks.Add;

  Ap.Range['D1'] := '������';

  Ap.DisplayAlerts := False;
  Ap.Visible := True;
end;


procedure create_exel();
Var
   varDiagram_sell, varDiagram_loss: OleVariant;
   Ap : Variant;
  provider_id,i, j,hight,hight_sell, hight_loss, price_before,price_after, count_before, count_after, purch_before,
  purch_after, sell_before,sell_after, loss_before, loss_after, d_income_before,
  d_income_after: integer;
begin
  Ap := CreateOleObject('Excel.Application');
  Ap.Workbooks.Add;
  Ap.Range['B1'] := '������������� - ' + dm.TProvider.FieldByName('NAME').asString;
  Ap.Range['B2'] := '������ �������';
  Ap.Range['C2'] := DateTimeToStr(exel_input_form.DateFrom.Date);
  Ap.Range['D2'] := '����� ������� - ';
  Ap.Range['E2'] := DateTimeToStr(exel_input_form.DateTo.Date);
  Ap.Range['B3;D3'] := '���-�� ������';
  Ap.Range['C3;E3'] := '����� ��������';
  Ap.Range['F2'] := '�� ������';
  Ap.Range['F3'] := '�������� �������';
  Ap.Range['G3'] := '������� ������';
  Ap.Range['H3'] := '������� ������';
  Ap.Range['A3'] := '������:';

  // ������� ��� ������ �������������
  dm.QGetProvider_products.ParamByName('IN_PROVIDER_ID').Value :=
  dm.TProvider.FieldByName('ID').Value;
  provider_id := dm.TProvider.FieldByName('ID').Value;
  dm.update_all;
  dm.QGetProvider_products.Last;
  hight :=    dm.QGetProvider_products.RecordCount;
  dm.QGetProvider_products.First;
  for i := 0 to hight-1 do begin

    // exec get_count
    dm.spGetCount.ParamByName('IN_PRODUCT_ID').Value :=
    dm.QGetProvider_products.FieldByName('ID').Value;

    dm.spGetCount.ParamByName('IN_DATE').Value :=
    exel_input_form.DateFrom.Date;

    if not dm.spGetCount.Transaction.InTransaction then
          dm.spGetCount.Transaction.StartTransaction;
        dm.spGetCount.ExecProc;

        // Got result from bd procedure
        count_before :=dm.spGetCount.ParamByName('OUT_COUNT').AsInteger;
        purch_before :=dm.spGetCount.ParamByName('OUT_PURCH').AsInteger;
        loss_before := dm.spGetCount.ParamByName('OUT_LOSS').AsInteger;
        sell_before := dm.spGetCount.ParamByName('OUT_DAILY_INCOME').AsInteger;
        dm.spGetCount.Transaction.Commit;

    // end exec get_count
    dm.update_all;

    dm.QGetProvider_products.first;
    for j := 0 to i-1 do
        dm.QGetProvider_products.Next;

    // exec get_price
    dm.spGetPrice.ParamByName('IN_PRODUCT_ID').Value:=
       dm.QGetProvider_products.FieldByName('ID').Value;

      dm.spGetPrice.ParamByName('IN_DATE').Value :=
      exel_input_form.DateFrom.Date;

        // Execute the procedure
        if not dm.spGetPrice.Transaction.InTransaction then
          dm.spGetPrice.Transaction.StartTransaction;
        dm.spGetPrice.ExecProc;

        // Got result from bd procedure
        price_before:=dm.spGetPrice.ParamByName('OUT_PRICE').AsInteger;
        dm.spGetPrice.Transaction.Commit;


    // end get_price

    dm.update_all;

    dm.QGetProvider_products.first;
    for j := 0 to i-1 do
        dm.QGetProvider_products.Next;


    ap.Range[ 'A' + inttostr(i+4)] := dm.QGetProvider_products.FieldByName('PRODUCT_NAME').AsString;
    ap.Range[ 'B' + inttostr(i+4)] := count_before;
    ap.Range[ 'C' + inttostr(i+4)] := count_before * price_before;


    // exec get_count
    dm.spGetCount.ParamByName('IN_PRODUCT_ID').Value :=
    dm.QGetProvider_products.FieldByName('ID').Value;

    dm.spGetCount.ParamByName('IN_DATE').Value :=
    exel_input_form.DateTo.Date;

    if not dm.spGetCount.Transaction.InTransaction then
          dm.spGetCount.Transaction.StartTransaction;
        dm.spGetCount.ExecProc;

        // Got result from bd procedure
        count_after :=dm.spGetCount.ParamByName('OUT_COUNT').AsInteger;
        purch_after :=dm.spGetCount.ParamByName('OUT_PURCH').AsInteger;
        loss_after := dm.spGetCount.ParamByName('OUT_LOSS').AsInteger;
        sell_after := dm.spGetCount.ParamByName('OUT_DAILY_INCOME').AsInteger;
        dm.spGetCount.Transaction.Commit;

    // end exec get_count
    dm.update_all;

    dm.QGetProvider_products.first;
    for j := 0 to i-1 do
        dm.QGetProvider_products.Next;

    // exec get_price
    dm.spGetPrice.ParamByName('IN_PRODUCT_ID').Value:=
       dm.QGetProvider_products.FieldByName('ID').Value;

      dm.spGetPrice.ParamByName('IN_DATE').Value :=
      exel_input_form.DateTo.Date;

        // Execute the procedure
        if not dm.spGetPrice.Transaction.InTransaction then
          dm.spGetPrice.Transaction.StartTransaction;
        dm.spGetPrice.ExecProc;

        // Got result from bd procedure
        price_after:=dm.spGetPrice.ParamByName('OUT_PRICE').AsInteger;
        dm.spGetPrice.Transaction.Commit;


    // end get_price

    dm.update_all;

    dm.QGetProvider_products.first;
    for j := 0 to i-1 do
        dm.QGetProvider_products.Next;

    ap.Range[ 'D' + inttostr(i+4)] := count_after;
    ap.Range[ 'E' + inttostr(i+4)] := count_after * price_after;
    ap.Range[ 'F' + inttostr(i+4)] := purch_after - purch_before;
    ap.Range[ 'G' + inttostr(i+4)] := sell_after - sell_before;
    ap.Range[ 'H' + inttostr(i+4)] := loss_after - loss_before;
    dm.QGetProvider_products.Next;
  end;

  // ������ ���������

  // ��������� ������
  // ��������� �������
  dm.QGet_Period_Daily_income.ParamByName('IN_PROVIDER_ID').Value :=
  provider_id;

  dm.QGet_Period_Daily_income.ParamByName('IN_DATE_BEGIN_DATE').Value :=
  exel_input_form.DateFrom.Date;

  dm.QGet_Period_Daily_income.ParamByName('IN_DATE_END_DATE').Value :=
  exel_input_form.DateTo.Date;

  // ���������� � ����
  dm.update_all;
  dm.QGet_Period_Daily_income.Last;
  hight_sell :=    dm.QGet_Period_Daily_income.RecordCount;
  dm.QGet_Period_Daily_income.first;
   ap.Range['J3'] := '�������';
   ap.Range['K3'] := '���';
  for I := 0 to hight_sell - 1  do begin
       ap.Range['J' + inttostr(i+4)] := dm.QGet_Period_Daily_income.FieldByName('THE_DATE').asString;
       ap.Range['K' + inttostr(i+4)] := dm.QGet_Period_Daily_income.FieldByName('PRICE').Value;
       dm.QGet_Period_Daily_income.next;
  end;


  // ��������� ��������
  dm.QGet_Period_Loss.ParamByName('IN_PROVIDER_ID').Value :=
  provider_id;

  dm.QGet_Period_Loss.ParamByName('IN_DATE_BEGIN_DATE').Value :=
  exel_input_form.DateFrom.Date;

  dm.QGet_Period_Loss.ParamByName('IN_DATE_END_DATE').Value :=
  exel_input_form.DateTo.Date;

   // ���������� � ����
  dm.update_all;
  dm.QGet_Period_Loss.Last;
  hight_loss :=    dm.QGet_Period_Loss.RecordCount;
  dm.QGet_Period_Loss.first;
  ap.Range['L3'] := '��������';
  ap.Range['M3'] := '���';
  for I := 0 to hight_loss - 1  do begin
       ap.Range['L' + inttostr(i+4)] := dm.QGet_Period_Loss.FieldByName('THE_DATE').asString;
       ap.Range['M' + inttostr(i+4)] := dm.QGet_Period_Loss.FieldByName('PRICE').Value;
       dm.QGet_Period_Loss.next;
  end;

  // ������ ��������
  varDiagram_loss := ap.Charts.Add;
  varDiagram_loss.Activate;
  varDiagram_loss.ChartType := 65;

  varDiagram_loss.hasTitle := True;
  varDiagram_loss.ChartTitle.Characters.Text := '������ �������� �������';


  varDiagram_loss.SetSourceData(ap.WorkSheets['����1'].Range['M4:M' +inttostr(4+hight_loss)],xlColumns) ;
                           // Specifies the data source (the excelsheet and the area in the Excel sheet)
  // ������ �������

  varDiagram_sell := ap.Charts.Add;
  varDiagram_sell.Activate;
  varDiagram_sell.ChartType := 65;

  varDiagram_sell.hasTitle := True;
  varDiagram_sell.ChartTitle.Characters.Text := '������ ������� �������';


  varDiagram_sell.SetSourceData(ap.WorkSheets['����1'].Range['K4:K' +inttostr(4+hight_loss)],xlColumns) ;
                           // Specifies the data source (the excelsheet and the area in the Excel sheet)

  Ap.DisplayAlerts := False;
  Ap.Visible := True;
end;

end.
