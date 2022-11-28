tableextension 50011 PurchRecptLine extends "Purch. Rcpt. Line"
{
    fields
    {
        field(50000; Size; Code[20])
        {

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
    }
}
