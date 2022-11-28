pageextension 50001 ItemList extends "Item List"
{
    layout
    {
        addafter("Item Category Code")
        {
            field(Category; rec.Category)
            {
                ApplicationArea = Basic, Suite;
                ToolTip = 'Specifies a code for the item''s tariff number.';
            }
            field("Sub Category"; rec."Sub Category")
            {
                ApplicationArea = all;
            }
            field(Size; Rec.Size)
            {
                ApplicationArea = all;
            }
            field("Model Code"; rec."Model Code")
            {
                ApplicationArea = all;

            }
            field(Colour; REC.Colour)
            {
                ApplicationArea = all;

            }
            field("Age/Letter"; Rec."Age/Letter")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Age/Letter field.';
            }

            field(Season; Rec.Season)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Season field.';
            }

        }
        modify(Control1901314507)
        {
            Visible = false;
        }
        modify(Control1903326807)
        {
            Visible = false;
        }
        modify(Control1906840407)
        {
            Visible = false;
        }

        addfirst(factboxes)
        {
            part(ItemDetailsFactBox; ItemDetailsFactBox)
            {

                ApplicationArea = Basic, Suite;
                SubPageLink = "No." = FIELD("No."),
                              "Date Filter" = FIELD("Date Filter"),
                              "Global Dimension 1 Filter" = FIELD("Global Dimension 1 Filter"),
                              "Global Dimension 2 Filter" = FIELD("Global Dimension 2 Filter"),
                              "Location Filter" = FIELD("Location Filter"),
                              "Drop Shipment Filter" = FIELD("Drop Shipment Filter"),
                              "Bin Filter" = FIELD("Bin Filter"),
                              "Variant Filter" = FIELD("Variant Filter"),
                              "Lot No. Filter" = FIELD("Lot No. Filter"),
                              "Serial No. Filter" = FIELD("Serial No. Filter");
            }
        }
    }
    actions
    {
        addafter(PricesDiscountsOverview)
        {
            action("Price Checker")
            {
                ApplicationArea = All;
                Promoted = true;
                PromotedCategory = Category6;
                Image = SalesPrices;
                RunObject = page PriceChecker;
            }
        }
    }

}