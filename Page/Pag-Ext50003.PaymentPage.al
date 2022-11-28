pageextension 50023 PaymentPage extends "IWX POS Payment Processing"
{
    layout
    {
        addafter(Amount)
        {
            field("Currency Code"; Rec."Currency Code")
            {
                ApplicationArea = All;
                Visible = false;


            }
        }
    }
}
