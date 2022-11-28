codeunit 50000 EventSubscription
{
    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitItemLedgEntry', '', True, True)]
    local procedure OnAfterInitItemLedgEntry(var NewItemLedgEntry: Record "Item Ledger Entry"; var ItemJournalLine: Record "Item Journal Line"; var ItemLedgEntryNo: Integer)
    begin
        NewItemLedgEntry.Colour := ItemJournalLine.Colour;
        NewItemLedgEntry.Size := ItemJournalLine.Size;
        NewItemLedgEntry.Gender := ItemJournalLine.Gender;
        NewItemLedgEntry."Age/Letter" := ItemJournalLine."Age/Letter";
        NewItemLedgEntry."Model Code" := ItemJournalLine."Model Code";
        NewItemLedgEntry.Season := ItemJournalLine.Season;
        NewItemLedgEntry.Category := ItemJournalLine.Category;
        NewItemLedgEntry."Sub Category" := ItemJournalLine."Sub Category";
    end;

    [EventSubscriber(ObjectType::Codeunit, Codeunit::"Item Jnl.-Post Line", 'OnAfterInitValueEntry', '', TRUE, TRUE)]

    local procedure OnAfterInitValueEntry(var ValueEntry: Record "Value Entry"; var ItemJournalLine: Record "Item Journal Line"; var ValueEntryNo: Integer; var ItemLedgEntry: Record "Item Ledger Entry")
    begin
        ValueEntry.Colour := ItemJournalLine.Colour;
        ValueEntry.Size := ItemJournalLine.Size;
        ValueEntry.Gender := ItemJournalLine.Gender;
        ValueEntry."Age/Letter" := ItemJournalLine."Age/Letter";
        ValueEntry."Model Code" := ItemJournalLine."Model Code";
        ValueEntry.Season := ItemJournalLine.Season;
        ValueEntry.Category := ItemJournalLine.Category;
        ValueEntry."Sub Category" := ItemJournalLine."Sub Category";
    end;

    [EventSubscriber(ObjectType::Table, Database::"Sales Line", 'OnAfterCopyFromItem', '', TRUE, TRUE)]

    local procedure OnAfterCopyFromItem(var SalesLine: Record "Sales Line"; Item: Record Item; CurrentFieldNo: Integer)
    begin
        SalesLine.Colour := Item.Colour;
        SalesLine.Gender := item.Gender;
        SalesLine.Size := item.Size;
        SalesLine."Age/Letter" := Item."Age/Letter";
        SalesLine."Model Code" := Item."Model Code";
        SalesLine.Season := Item.Season;
        SalesLine.Category := Item.Category;
        SalesLine."Sub Category" := Item."Sub Category";
    end;
}

