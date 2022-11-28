pageextension 50020 POSSalesOrders extends "IWX POS Sales Orders"
{
    layout
    {
        //addafter("Allow Posting To")
        modify("External Document No.")
        {

            Visible = false;
        }
        modify("Assigned User ID")
        {
            Visible = false;

        }
        modify("Completely Shipped")
        {
            Visible = false;
        }
        modify(Status)
        {
            Visible = false;
        }
        modify("Sell-to Contact")
        {
            Visible = true;

        }

    }
}
