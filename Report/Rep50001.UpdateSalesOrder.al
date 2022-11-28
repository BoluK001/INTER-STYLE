report 50001 UpdateSalesOrder
{
    Caption = 'UpdateSalesOrder';
    ProcessingOnly = true;

    dataset
    {
        dataitem(Saleshe; "Sales header")
        {
            trigger OnAfterGetRecord()
            var
                myInt: Integer;
            begin
                // "Shipping No. Series" := 'SS';
                "Return Receipt No. Series" := 'SR';
                "Posting No. Series" := 'SR';
                Modify()
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
