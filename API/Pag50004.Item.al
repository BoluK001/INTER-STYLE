page 50004 ItemChakra
{
    // APIGroup = 'chakra';
    // APIPublisher = 'reeltech';
    // APIVersion = 'v2.0';
    Caption = 'ItemS';
    // DelayedInsert = true;
    // EntityName = 'itemScan';
    // EntitySetName = 'itemScan';
    PageType = Card;

    SourceTable = Item;

    layout
    {
        area(content)
        {
            group(General)
            {
                field(SystemId; Rec.SystemId)
                {
                }
                field(no; Rec."No.")
                {
                    Caption = 'No.';
                }
                field("Unit Price"; Rec."Unit Price")
                {
                    Caption = 'Unit Price';
                }
                field(size; Rec.Size)
                {
                    Caption = 'Size';
                }
                field(description; Rec.Description)
                {
                    Caption = 'Description';
                }
                field(itemCategoryCode; Rec."Item Category Code")
                {
                    Caption = 'Main Category';
                }
                field(colour; Rec.Colour)
                {
                    Caption = 'Colour';
                }
                field(modelCode; Rec."Model Code")
                {
                    Caption = 'Model Code';
                }
                field(ageLetter; Rec."Age/Letter")
                {
                    Caption = 'Age/Letter';
                }
                field(Picture; Rec.Picture)
                {

                }

            }
        }
    }
}
