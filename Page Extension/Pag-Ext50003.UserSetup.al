pageextension 50016 UserSetup extends "User Setup"
{
    layout
    {
        addafter("Allow Posting To")
        {
            field("Modify Sales"; "Modify Sales")
            {
                ApplicationArea = All;
            }
        }
    }
}
