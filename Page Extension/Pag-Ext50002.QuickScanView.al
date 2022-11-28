pageextension 50002 QuickScanView extends "IWX POS Quick Scan"
{
    layout
    {
        modify(fVariantCode)
        {
            Visible = false;
        }
        modify(fSerialNo)
        {
            Visible = false;
        }
        modify(fLotNo)
        {
            Visible = false;
        }
        modify(fBarcode)
        {
            trigger OnAfterValidate()
            var
                ItemRec: Record item;
                SalesLine: Record "Sales Line";
            begin
                SalesLine.Reset();
                SalesLine.SetRange("Document No.", Rec."No.");
                if SalesLine.find('-') then begin
                    repeat
                        if ItemRec.get(SalesLine."No.") then begin
                            //ItemRec.SetRange("No.", SalesLine."No.");
                            //if ItemRec.Find('-') then begin
                            fSize := ItemRec.Size;
                            fModelNo := ItemRec."Model Code";
                            fColour := ItemRec.Colour;
                            "fAge/letter" := ItemRec."Age/Letter";
                        end else begin
                            fSize := '';
                            fModelNo := '';

                            fColour := '';
                            "fAge/letter" := '';
                        end;
                    //end;

                    until SalesLine.next = 0;

                end;

            end;
        }

        addafter(fDescription)
        {
            field(fModelNo; fModelNo)
            {
                Caption = 'Model No.';
                ApplicationArea = all;
                Editable = false;
            }
            field(fSize; fSize)
            {
                Caption = 'Size';
                ApplicationArea = all;
                Editable = false;
            }
            field(fGender; fGender)
            {
                Caption = 'Gender';
                ApplicationArea = all;
                Editable = false;
                Visible = false;
            }
            field(fColour; fColour)
            {
                Caption = 'Colour';
                ApplicationArea = all;
                Editable = false;
            }
            field("fAge/letter"; "fAge/letter")
            {
                Caption = 'Age/letter';
                ApplicationArea = all;
                Editable = false;
            }
        }
        addbefore(ppItemAvailByMyLocation)
        {
            part(ItemDetailsFactBox; ItemDetailsFactBox)
            {
                Caption = 'Item Details';
                ApplicationArea = All;
                Provider = ppLines;
                SubPageLink = "No." = FIELD("No.");
            }
        }
    }
    actions
    {
        modify(aClearLastScanDetails)
        {
            Promoted = true;
            PromotedOnly = true;
            PromotedIsBig = true;
            PromotedCategory = Process;
            ShortCutKey = 'f5';

            trigger OnAfterAction()
            begin
                fSize := '';
                fModelNo := '';
                fColour := '';
                "fAge/letter" := '';
            end;
        }
    }

    var
        fModelNo: Code[20];
        fSize: Code[20];
        fGender: option ,Girl,Boy,Man,Woman,Unisex;
        fColour: Code[20];
        "fAge/letter": Code[20];
    //SalesLines: Page "Sales Order Subform";

}
