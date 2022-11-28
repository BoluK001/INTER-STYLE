#pragma implicitwith disable
pageextension 50015 IWXPOSSalesOrderSubform extends "IWX POS Sales Order Subform"
{
    layout
    {
        addafter(Description)
        {
            field(Colour; Rec.Colour)
            {
                ApplicationArea = all;
                Editable = false;
            }
            field("Model Code"; Rec."Model Code")
            {
                ApplicationArea = all;
                Editable = false;
                Visible = false;
            }
            field(Size; Rec.Size)
            {
                ApplicationArea = all;
                Editable = false;
            }
            field(Category; Rec.Category)
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Category field.';
                Editable = false;
            }
            field("Sub Category"; Rec."Sub Category")
            {
                ApplicationArea = All;
                ToolTip = 'Specifies the value of the Sub Category field.';
                Editable = false;
            }
            field(SN; Rec.SN)
            {
                ApplicationArea = All;
                Editable = false;
                Visible = false;

            }


        }



        moveafter(Control1; "Location Code")
        modify("Line Discount %")

        {

            // Editable = false;
            Visible = false;
        }
        modify("Unit of Measure Code")
        {
            Visible = false;
        }

    }

    trigger OnAfterGetRecord()


    begin
        if UserSetup.get(USERID) then
            if UserSetup."Modify Sales" = true then
                fieldEditable := true
            else
                fieldEditable := false;
        ItemCount := Rec.COUNT;
    end;

    var
        UserSetup: Record "User Setup";
        fieldEditable: Boolean;
        ItemCount: Integer;

}

#pragma implicitwith restore
