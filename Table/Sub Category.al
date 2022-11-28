table 50008 "Sub Category"
{
    DrillDownPageId = "Sub Category";
    LookupPageId = "Sub Category";

    fields
    {
        field(1; "Item Category Code"; Code[20])
        {
            TableRelation = "Item Category".Code;
        }
        field(2; Category; Code[30])
        {
            TableRelation = Category.Code WHERE("Item Category Code" = FIELD("Item Category Code"),
                                                            Code = FIELD(Category));
        }
        field(3; "Sub Category"; Code[50])
        {
        }
        field(4; Description; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Item Category Code", Category, "Sub Category")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

