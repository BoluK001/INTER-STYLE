table 50001 "Item Size"
{
    //LookupPageID = 50001;

    fields
    {
        field(1; "Code"; Code[100])
        {
        }
        field(2; Description; Text[50])
        {
        }
    }

    keys
    {
        key(Key1; "Code")
        {
            Clustered = true;
        }
    }
}