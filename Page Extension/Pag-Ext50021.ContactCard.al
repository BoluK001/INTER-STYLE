pageextension 50021 ContactCard extends "Contact Card"
{
    layout
    {
        modify("Search Name")
        {
            Visible = false;
        }
        modify("Organizational Level Code")
        {
            Visible = false;
        }
        modify("Date of Last Interaction")
        {
            Visible = false;
        }
        modify("Last Date Attempted")
        {
            Visible = false;
        }
        modify("Next Task Date")
        {
            Visible = false;
        }
        modify("Exclude from Segment")
        {
            Visible = false;
        }
        moveafter(Name; "Mobile Phone No.", Address)

    }
}
