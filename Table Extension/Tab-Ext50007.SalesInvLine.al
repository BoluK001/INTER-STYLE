tableextension 50007 SalesInvLine extends "Sales Invoice Line"
{
    fields
    {
        field(50000; Size; Code[20])
        {

        }
        field(50001; Category; Code[30])
        {

        }
        field(50002; "Sub Category"; Code[50])
        {

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
