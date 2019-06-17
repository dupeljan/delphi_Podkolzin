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
 i : integer;
begin
  if str = 'Purchase_inv' then begin
    title := '��������� ���������';
    text := '������������� ' + dm.QPurchase_inv_pretty.FieldByName('PROVIDER_NAME').AsString +
      ' �������� ����� ' + dm.QPurchase_inv_pretty.FieldByName('PRODUCT_NAME').AsString +
            ' � ���������� ' + dm.QPurchase_inv_pretty.FieldByName('PRODUCT_COUNT').AsString +
            ' ��. �� ���� ' + dm.QPurchase_inv_pretty.FieldByName('PRICE').AsString +
            ' ���. ���� ��������: ' + dm.QPurchase_inv_pretty.FieldByName('THE_DATE').AsString + '.';
  end;

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

    MS_Word.ActiveDocument.Tables.Add(
     MS_Word.ActiveDocument.Range.Characters.Last,dm.QPurchase_inv_pretty.RecordCount+1,4);

    MS_Word.ActiveDocument.Tables.Item(1).Borders.InsideLineStyle:=wdLineStyleSingle;
    MS_Word.ActiveDocument.Tables.Item(1).Borders.OutsideLineStyle:=wdLineStyleSingle;

    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,1).Range.Text:='� �������� �������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,2).Range.Text:='������������ ������';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,3).Range.Text:='����';
    MS_Word.ActiveDocument.Tables.Item(1).Cell(1,4).Range.Text:='����������';

    dm.QPurchase_inv_pretty.first;
    for i := 2 to dm.QPurchase_inv_pretty.RecordCount+1 do
    begin
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,1).Range.Text:= intToStr(i-1);
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,2).Range.Text:=dm.QPurchase_inv_pretty.FieldByName('PRODUCT_NAME').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,3).Range.Text:=dm.QPurchase_inv_pretty.FieldByName('PRICE').AsString;
      MS_Word.ActiveDocument.Tables.Item(1).Cell(i,4).Range.Text:=dm.QPurchase_inv_pretty.FieldByName('PRODUCT_COUNT').AsString;
      dm.QPurchase_inv_pretty.Next;
    end;


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
end.
