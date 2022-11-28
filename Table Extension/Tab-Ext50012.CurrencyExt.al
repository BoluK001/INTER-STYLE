tableextension 50012 CurrencyExt extends Currency
{
    fields
    {
        field(50000; "Currency Numeric Description"; Code[10])
        {
            Caption = 'Currency Numeric Description';
            DataClassification = ToBeClassified;
        }
        field(50001; "Currency Decimal Description"; Code[10])
        {
            Caption = 'Currency Decimal Description';
            DataClassification = ToBeClassified;
        }
    }
}
