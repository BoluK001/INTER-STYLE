page 50036 "Price Check Role Center"
{
    Caption = 'Price Check Role Center';
    PageType = RoleCenter;

    layout
    {
        area(RoleCenter)
        {
            group(Group1)
            {
                part(Part1; "Headline RC Administrator")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    actions
    {
        area(Sections)
        {
            group(PriceCheck)
            {
                Caption = 'Price Checker';
                //Image = Sale;
                action(ItemScan)
                {
                    Caption = 'Price Checker';
                    RunObject = Page PriceChecker;
                    ApplicationArea = All;
                }

            }

        }
        area(Embedding)
        {

            action(SalesPrice)
            {
                Caption = 'Price Checker';
                RunObject = Page PriceChecker;
                ApplicationArea = All;
            }
        }

    }
}