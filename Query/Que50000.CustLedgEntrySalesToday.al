query 50000 CustLedgEntrySalesToday
{
    Caption = 'CustLedgEntrySalesToday';
    QueryType = Normal;

    elements
    {
        dataitem(CustLedgerEntry; "Cust. Ledger Entry")
        {
            filter(Document_Type; "Document Type")
            {
            }
            filter(IsOpen; Open)
            {
            }
            filter(Customer_No; "Customer No.")
            {
            }
            filter(Posting_Date; "Posting Date")
            {
            }
            column(Amount__LCY; "Amount (LCY)")
            {
                Method = Sum;
            }
        }
    }

    trigger OnBeforeOpen()
    begin

    end;
}
