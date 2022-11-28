page 50002 Seasons
{
    ApplicationArea = All;
    Caption = 'Seasons';
    PageType = List;
    SourceTable = Season;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Code"; Rec."Code")
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the code for the Season';
                }
                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the name of the Season';
                }
            }
        }
    }
}
