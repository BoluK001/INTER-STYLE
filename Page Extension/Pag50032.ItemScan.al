

page 50032 PriceChecker
{
    ApplicationArea = all;
    Caption = 'Price Checker';
    UsageCategory = Lists;
    PageType = Card;
    //SourceTable = "";

    layout
    {
        area(content)
        {
            group(Search)
            {
                field(SearchTxt; SearchTxt)
                {
                    ApplicationArea = all;
                    QuickEntry = true;
                    trigger OnValidate()
                    begin
                        if ItemRec.get(SearchTxt) then begin
                            IteNarr := ItemRec.Description;
                            ItemPrice := ItemRec."Unit Price";
                            MainCategory := ItemRec."Item Category Code";
                            SubCategory := ItemRec."Sub Category";
                            Size := ItemRec.Size;
                            Clear(SearchTxt);


                        end
                        else begin
                            Clear(SearchTxt);
                            Clear(IteNarr);
                            Clear(ItemPrice);
                            Clear(MainCategory);
                            Clear(SubCategory);
                            Clear(Size);

                        end;

                    end;
                }
            }
            group(General)
            {
                field(IteNarr; IteNarr)
                {
                    ApplicationArea = all;
                    Caption = 'Description';
                    Editable = false;
                }
                field(ItemPrice; ItemPrice)
                {
                    ApplicationArea = all;
                    Editable = false;
                    Caption = 'Selling Price';
                    Style = StrongAccent;
                }
                // field(MainCategory; MainCategory)
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                //     Caption = 'Main Category';

                // }
                // field(SubCategory; SubCategory)
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                //     Caption = 'Sub Category';

                // }
                // field(Size; Size)
                // {
                //     ApplicationArea = All;
                //     Editable = false;
                //     Caption = 'Size';
                // }
            }
        }
    }
    var
        ItemRec: Record Item;
        SearchTxt: code[20];
        IteNarr: Text;
        ItemPrice: Decimal;
        MainCategory: Code[50];
        SubCategory: Code[50];
        Size: Code[50];



}