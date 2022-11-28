table 50007 Category
{
    LookupPageID = Category;

    fields
    {
        field(1; "Item Category Code"; Code[20])
        {
            Caption = 'Main Category Code';
            TableRelation = "Item Category".Code;
        }
        field(2; "Code"; Code[30])
        {
            Caption = 'Code';
        }
        field(3; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(Key1; "Item Category Code", "Code")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
    }
}

