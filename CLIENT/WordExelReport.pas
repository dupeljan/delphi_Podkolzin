unit WordExelReport;

interface
procedure example_word();
procedure example_exel();
procedure create_invoice(str :string);

implementation
uses comObj, data_module,  sysutils,wordXP, excelXP;

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

    MS_Word.ActiveDocument.Range.InsertAfter('  ТОВАРНЫЙ ЧЕК ');
    MS_Word.ActiveDocument.Range.InsertAfter(#13#10);

    MS_Word.ActiveDocument.Tables.Add(
     MS_Word.ActiveDocument.Range.Characters.Last,dm.QPurchase_inv_group_pretty.RecordCount+1,7);

    MS_Word.ActiveDocument.Tables.Item(1).Borders.InsideLineStyle:=wdLineStyleSingle;
    MS_Word.ActiveDocument.Tables.Item(1).Borders.OutsideLineStyle:=wdLineStyleSingle;



    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,1).Range.Text:='№ товарной позиции';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,2).Range.Text:='Наименование товара';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,3).Range.Text:='Производитель';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,4).Range.Text:='Цена';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,5).Range.Text:='Количество';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,6).Range.Text:='Дата поставки';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,7).Range.Text:='Сумма';

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

    MS_Word.ActiveDocument.Range.InsertAfter(' ИТОГО  ' + inttostr(totalsum) + ' руб.');
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
    MS_Word.ActiveDocument.Range.InsertAfter('   ЧЕК №#: ');

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

  Ap.Range['D1'] := 'Ляляля';

  Ap.DisplayAlerts := False;
  Ap.Visible := True;
end;
end.
