#pragma implicitwith disable
page 50003 ItemDetailsFactBox
{
    Caption = 'Item Details';
    PageType = CardPart;
    SourceTable = Item;

    layout
    {
        area(content)
        {
            field("No."; Rec."No.")
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Item No.';
                ToolTip = 'Specifies the number of the item.';

                trigger OnDrillDown()
                begin
                    ShowDetails;
                end;
            }
            field("Model Code"; Rec."Model Code")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Model Code field.';
            }
            field(Size; Rec.Size)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Size field.';
            }
            field(Gender; Rec.Gender)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Gender field.';
                Visible = false;
            }
            field(Colour; Rec.Colour)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Colour field.';
            }
            field("Age/Letter"; Rec."Age/Letter")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Age/Letter field.';
            }

        }
    }

    actions
    {
    }

    local procedure ShowDetails()
    begin
        PAGE.Run(PAGE::"Item Card", Rec);
    end;
}

#pragma implicitwith restore

