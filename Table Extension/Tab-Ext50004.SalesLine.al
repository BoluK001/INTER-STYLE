tableextension 50004 SalesLine extends "Sales Line"
{
    fields
    {
        field(50000; Size; Code[20])
        {
            //TableRelation = "Item Size";
        }
        field(50001; Category; Code[30])
        {
            TableRelation = Category.Code WHERE("Item Category Code" = FIELD("Item Category Code"));
        }
        field(50002; "Sub Category"; Code[50])
        {
            TableRelation = "Sub Category"."Sub Category" WHERE("Item Category Code" = FIELD("Item Category Code"),
                                                                           Category = FIELD(Category));
        }
        field(50003; "Model Code"; Code[20])
        {

        }
        field(50004; Colour; Code[50])
        {

        }
        field(50005; Season; Code[20])
        {
            TableRelation = Season.Code;

        }
        field(50006; Gender; Option)
        {
            OptionMembers = Girl,Boy,Man,Woman,Unisex;
        }
        field(50007; "Age/Letter"; Code[20])
        {

        }
        field(50008; SN; Integer)
        {

        }
        modify("Line Discount %")
        {
            trigger OnAfterValidate()
            begin
                if UserSetup.get(USERID) then
                    if "Line Discount %" > 0 then
                        if NOT UserSetup."Modify Sales" then
                            Error('You do not have the permission to give discount, please call the manager');

            end;
        }
    }
    trigger OnDelete()
    var
        Usersetup: Record "User Setup";
    begin
        if "Line Discount %" > 0 then
            IF UserSetup.Get(USERID) THEN
                UserSetup.TESTFIELD("Modify Sales", true);


    end;

    var
        UserSetup: Record "User Setup";
}
