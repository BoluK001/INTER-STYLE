reportextension 50000 SalesInvoiceExt extends "Standard Sales - Invoice"
{
    RDLCLayout = 'StandardSalesInvoiceA4.rdl';
    dataset
    {
        add(Header)
        {
            column(PhoneNo; PhoneNo)
            {

            }



        }
        add(Line)
        {
            column(Colour; Colour)
            {

            }
        }

    }
    trigger OnPreReport()

    begin
        compinfo.get;
        PhoneNo := compinfo."Phone No.";
    end;

    var
        compinfo: Record "Company Information";
        PhoneNo: Code[100];
        companyinfor: Record "Company Information";

}
