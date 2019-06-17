unit WordExelReport;

interface
procedure example_word();
procedure example_exel();
procedure create_invoice(str :string);

implementation
uses comObj, data_module;

procedure create_invoice(str :string);
var
 title,text : string;
 MS_Word: Variant;
begin
  if str = 'Daily_income' then begin
    title := '��������� ���������';
    text := '����� ' + dm.TDaily_income.FieldByName('PRODUCT_ID').AsString +
            ' � ���������� ' + dm.TDaily_income.FieldByName('PRODUCT_COUNT').AsString +
            ' ��. ������� ' + dm.TDaily_income.FieldByName('THE_DATE').AsString + '.';
  end;

  try
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
