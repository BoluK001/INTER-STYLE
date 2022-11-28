pageextension 50000 ItemCard Extends "Item Card"
{
    layout
    {
        addafter("Item Category Code")
        {
            field(Category; rec.Category)
            {
                ApplicationArea = all;
            }
            field("Sub Category"; rec."Sub Category")
            {
                ApplicationArea = all;
            }
            field(Size; rec.Size)
            {
                Enabled = IsInventoriable;
                HideValue = IsNonInventoriable;
                ApplicationArea = all;
            }
            field("Model Code"; rec."Model Code")
            {
                ApplicationArea = all;
            }
            field("Age/Letter"; Rec."Age/Letter")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Age/Letter field.';
            }
            field(Colour; Rec.Colour)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Colour field.';
            }

            field(Season; Rec.Season)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Season field.';
            }
        }
    }
}