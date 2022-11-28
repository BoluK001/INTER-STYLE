report 50002 UpdateSalesLines
{
    Caption = 'UpdateSalesLines';
    ProcessingOnly = true;
    dataset

    {
        dataitem(SalesLine; "Sales Line")
        {
            trigger OnAfterGetRecord()
            begin
                //"Tax Group Code" := 'VAT7.5';
                //"Location Code" := 'WAREHOUSE';
                Validate("VAT %", 7.5);

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
