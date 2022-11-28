page 50005 LineCount
{
    //Caption = 'LineCount';

    PageType = CardPart;
    SourceTable = "Sales Header";

    layout
    {
        area(content)
        {
            field(LineCount; LineCount)
            {
                ApplicationArea = All;
                Editable = false;

            }
        }
    }
    trigger OnAfterGetRecord()
    Begin
        SalesLines.SetRange("Document Type", Rec."Document Type");
        SalesLines.SetRange("Document No.", Rec."No.");
        if SalesLines.find('-') then
            LineCount := SalesLines.Count;


    End;

    var
        LineCount: Integer;
        SalesLines: Record "Sales Line";

}

