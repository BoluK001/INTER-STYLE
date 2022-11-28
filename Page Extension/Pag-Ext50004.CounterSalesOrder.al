pageextension 50031 CounterSalesOrder extends "IWX POS Sales Order"
{
    layout
    {
        addafter(Status)
        {
            // field(LineCount; LineCount)
            // {
            //     ApplicationArea = All;
            //     Editable = false;
            //     Caption = 'No of Items';
            //     Style = Favorable;
            // }
            field(TotalQty; TotalQty)
            {
                ApplicationArea = All;
                Editable = false;
                Caption = 'Total Quantity';
                Style = StrongAccent;
            }

        }


        modify("Shipment Date")
        {
            Visible = false;
        }
        modify("Requested Delivery Date")
        {
            visible = false;
        }
        modify("Assigned User ID")
        {
            Visible = false;
        }
        modify("Your Reference")
        {
            visible = false;
        }
        modify(gWorkDescription)
        {
            Visible = false;
        }
    }
    trigger OnAfterGetRecord()
    Begin
        TotalQty := 0;
        SalesLines.SetRange("Document Type", Rec."Document Type");
        SalesLines.SetRange("Document No.", Rec."No.");
        if SalesLines.find('-') then begin
            LineCount := SalesLines.Count;
            repeat
                TotalQty := TotalQty + SalesLines.Quantity;
            until SalesLines.Next = 0;

        end;
    End;

    var
        LineCount: Integer;
        SalesLines: Record "Sales Line";
        TotalQty: Decimal;

}
