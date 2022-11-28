pageextension 50014 ContactSubform extends "IWX POS Contact Search"
{

    layout
    {
        modify(Name)
        {
            trigger OnAfterValidate()

            begin
                Rec.Reset();
                //rec.SetAscending(name, false);
                CurrPage.Update();
            end;
        }
    }

    // trigger OnAfterGetRecord()
    // begin
    //     Rec.Reset();
    //     rec.SetAscending("No.", True);
    //     CurrPage.Update();
    // end;

    trigger OnOpenPage()
    begin
        rec.SetFilter(Name, 'Walk*');
        // Rec.Reset();
        // //rec.SetCurrentKey("No.");
        // rec.SetAscending("No.", true);
        // CurrPage.Update();
    end;
}
