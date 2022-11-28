pageextension 50011 PostedSalesInvoicesExt extends "Posted Sales Invoices"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {

            field("Sell-to Phone No."; Rec."Sell-to Phone No.")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Sell-to Phone No. field.';
            }

        }
        modify("Sell-to Contact")
        {
            visible = true;
        }
        moveafter("Sell-to Contact"; "Sell-to Customer Name")
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
                PromotedCategory = Category7;

                trigger OnAction()

                begin
                    Reset();
                    Rec.Setfilter("No.", Rec."No.");
                    report.Run(1306, true, false, Rec);
                    Reset();
                end;
            }

        }
    }
}
