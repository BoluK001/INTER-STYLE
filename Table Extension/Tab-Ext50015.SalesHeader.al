tableextension 50015 SalesHeader extends "Sales Header"
{
    fields
    {
        modify("Bill-to Contact No.")
        {
            trigger OnBeforeValidate()
            begin
                rec.SetHideValidationDialog(true);
            end;
        }
    }






}

