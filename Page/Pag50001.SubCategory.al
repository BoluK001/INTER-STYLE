page 50001 "Sub Category"
{
    ApplicationArea = All;
    Caption = 'Sub Category';
    PageType = List;
    SourceTable = "Sub Category";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Item Category Code"; Rec."Item Category Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Item Category Code field.';
                }
                field(Category; Rec.Category)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Category field.';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.';
                }
                field("Sub Category"; Rec."Sub Category")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Sub Category field.';
                }
            }
        }
    }
}
