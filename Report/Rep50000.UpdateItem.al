report 50000 "Update Item"
{
    Caption = 'Update Item';
    ProcessingOnly = true;
    dataset
    {
        dataitem(Item; "Item")
        {
            trigger OnAfterGetRecord()
            begin
                //item."Tax Group Code" := 'VAT7.5';
                item."Price Includes VAT" := FALSE;
                // item."VAT Bus. Posting Gr. (Price)" := 'VAT';


                item.Modify();
            end;
        }
    }
    requestpage
    {
        layout
        {
            area(content)
            {
                group(GroupName)
                {
                }
            }
        }
        actions
        {
            area(processing)
            {
            }
        }
    }
}
