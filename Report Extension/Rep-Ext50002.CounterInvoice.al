reportextension 50002 CounterInvoice extends "IWX POS Sales Invoice W1"
{
    RDLCLayout = 'IWXPOSSalesInvoiceW1.rdl';
    dataset
    {
        add(Line)
        {
            column(Colour; Colour)
            {

            }
        }

    }

}
