tableextension 50016 SalesCue extends "Sales Cue"
{
    fields
    {
        field(50000; "Sales Today"; Decimal)
        {
            Caption = 'Sales Today';
            DataClassification = ToBeClassified;
            AutoFormatExpression = GetAmountFormat;
            AutoFormatType = 11;
            DecimalPlaces = 0 : 0;

            // CalcFormula = sum("Cust. Ledger Entry"."Amount (LCY)" WHERE("Document Type" = FILTER(Invoice | "Credit Memo"),
            //                                                 "Posting Date" = field("Posting Date")));
            //Editable = false;
            //FieldClass = FlowField;
        }
        field(50001; "Posting Date"; Date)
        {
            FieldClass = FlowFilter;
            Editable = false;
        }
    }

    var
        DateRec: Date;

    procedure GetAmountFormat(): Text
    var
        GeneralLedgerSetup: Record "General Ledger Setup";
        UserPersonalization: Record "User Personalization";
        CurrencySymbol: Text[10];
    begin
        GeneralLedgerSetup.Get();
        CurrencySymbol := GeneralLedgerSetup.GetCurrencySymbol;

        if UserPersonalization.Get(UserSecurityId) and (CurrencySymbol <> '') then
            case UserPersonalization."Locale ID" of
                1030, // da-DK
              1053, // sv-Se
              1044: // no-no
                    exit('<Precision,0:0><Standard Format,0>' + CurrencySymbol);
                2057, // en-gb
              1033, // en-us
              4108, // fr-ch
              1031, // de-de
              2055, // de-ch
              1040, // it-it
              2064, // it-ch
              1043, // nl-nl
              2067, // nl-be
              2060, // fr-be
              3079, // de-at
              1035, // fi
              1034: // es-es
                    exit(CurrencySymbol + '<Precision,0:0><Standard Format,0>');
            end;

        exit(GetDefaultAmountFormat);
    end;

    local procedure GetDefaultAmountFormat(): Text
    begin
        exit('<Precision,0:0><Standard Format,0>');
    end;

    /// <summary>
    /// CalcSalesThisMonthAmount.
    /// </summary>
    procedure CalcSalesToDayAmount() Amount: Decimal
    Var
    //Amount: Decimal;
    begin
        "Posting Date" := Today;
        //CustLedgerEntry.SetFilter("Document Type", '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
        CustLedgEntrySales.SetFilter(Document_Type, '%1|%2', CustLedgerEntry."Document Type"::Invoice, CustLedgerEntry."Document Type"::"Credit Memo");
        CustLedgEntrySales.SETRANGE(Posting_Date, "Posting Date");
        CustLedgEntrySales.OPEN;
        IF CustLedgEntrySales.READ THEN
            //"Sales Today" := CustLedgEntrySales.Sum_Sales_LCY;
            Amount := CustLedgEntrySales.Amount__LCY;
    end;

    var
        CustLedgerEntry: Record "Cust. Ledger Entry";
        CustLedgEntrySales: Query CustLedgEntrySalesToday;
}
