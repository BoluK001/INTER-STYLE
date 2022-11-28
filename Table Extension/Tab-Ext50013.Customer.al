tableextension 50013 Customer extends Customer
{
    fields
    {

    }
    trigger OnAfterInsert()
    begin
        // "Prices Including VAT" := true;
    end;
}
