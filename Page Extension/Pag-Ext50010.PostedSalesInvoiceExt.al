#pragma implicitwith disable
pageextension 50010 PostedSalesInvoiceExt extends "Posted Sales Invoice"
{
    layout
    {

    }

    actions
    {
        addafter(Print)
        {
            action("Print A4 Invoice")
            {
                ApplicationArea = All;
                Image = Print;
                Promoted = true;
                PromotedCategory = Category6;

                trigger OnAction()

                begin
                    Rec.Setfilter("No.", Rec."No.");
                    report.Run(1306, true, false, Rec)
                end;
            }
        }
    }
}

#pragma implicitwith restore
