#pragma implicitwith disable
pageextension 50018 IWXPOSManagerActivities extends "IWX POS Manager Activities"
{
    layout
    {
        addafter("My User Tasks")
        {
            cuegroup(Control54)
            {
                CueGroupLayout = Wide;
                ShowCaption = false;
                field("Sales Today"; Rec."Sales Today")
                {
                    //ApplicationArea = All;
                    ApplicationArea = Basic, Suite;
                    DrillDownPageID = "Sales Invoice List";
                    ToolTip = 'Specifies the sum of sales today excluding taxes.';

                    trigger OnDrillDown()
                    begin
                        CustLedgerEntry.SetFilter("Document Type", '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
                        CustLedgerEntry.SetRange("Posting Date", Today);
                        PAGE.Run(PAGE::"Customer Ledger Entries", CustLedgerEntry);
                    end;
                }
            }
        }

    }
    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        ActivitiesMgt: Codeunit "Activities Mgt.";

    trigger OnOpenPage()
    begin
        Rec.RESET;
        if not Rec.get then begin
            Rec.INIT;
            Rec.INSERT;
        end;

        // Rec.SetFilter("Posting Date", '<%1', Today);

        // CustLedgerEntry.SetFilter("Document Type", '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
        // CustLedgerEntry.SetFilter("Posting Date", '<%1', Today);
        // if CustLedgerEntry.Find('-') then begin
        //     CustLedgerEntry.SETAUTOCALCFIELDS("Amount (LCY)");
        //     Rec."Sales Today" := CustLedgerEntry."Amount (LCY)";
        //     CurrPage.UPDATE;
        // end;
        // Message('Sales Today: %1', Rec."Sales Today");
    END;

    trigger OnAfterGetRecord()

    begin
        Rec."Sales Today" := Rec.CalcSalesToDayAmount();
    end;
}

#pragma implicitwith restore