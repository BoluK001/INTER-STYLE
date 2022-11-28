pageextension 50025 FinanceRoleCenter extends "Business Manager Role Center"
{
    actions
    {
        Addbefore(Action41)
        {
            group(Chakra)
            {
                action("Counter Sales Orders")

                {
                    ApplicationArea = All;

                    RunObject = Page "IWX POS Sales Orders";
                    RunPageLink = "Document Type" = filter(Order), "IWX POS Document Type" = filter(Order);
                }
                action("POS Posted Sales Orders")

                {
                    ApplicationArea = All;

                    RunObject = Page "IWX POS Posted Sales Orders";
                    //RunPageLink = "Document Type" = filter(Order), "IWX POS Document Type" = filter(Order);
                }
                action("Posted Sales Shipments")
                {
                    ApplicationArea = All;
                    RunObject = Page "IWX POS Sales Lines";
                }
                action("Posted Sales Invoices1")
                {
                }
                action("Posted Return Receipts")
                {
                    ApplicationArea = All;
                    RunObject = Page "IWX POS Sales Return Orders";
                    RunPageLink = "Document Type" = filter("Return Order"), "IWX POS Document Type" = filter("Return Order");
                }
                action("Sales Payment Entries")
                {
                    ApplicationArea = All;
                    RunObject = Page "IWX POS Payment Entries";
                }

                action("Daily Close")
                {
                    ApplicationArea = All;
                    RunObject = report "IWX POS Daily Close";
                }
                action("Price Check")
                {
                    ApplicationArea = all;
                    RunObject = Page "IWX POS Price Check";
                }

                group(Reports1)
                {
                    Caption = 'Report';

                    group(ReportsSales)
                    {

                        action("Customer Top 10 List")
                        {
                            ApplicationArea = ALL;
                            RunObject = Report "Customer - Top 10 List";
                        }
                        action("Inventory Top 10 List")
                        {
                            ApplicationArea = ALL;
                            RunObject = Report "Inventory - Top 10 List";
                        }
                        action("GP Item")
                        {
                            ApplicationArea = ALL;
                            RunObject = Report "Inventory - Sales Statistics";
                        }
                    }
                    group(History)
                    {
                        action("Payment Entries")
                        {
                            ApplicationArea = All;
                            RunObject = page "IWX POS Payment Entries";
                        }
                        action("Price Override Entries")
                        {
                            ApplicationArea = All;
                            RunObject = page "IWX POS Price Override Entries";
                        }

                    }
                }

            }
        }
    }
}