page 70002 "Rooms List"
{
    Caption = 'Rooms';
    PageType = ListPart;
    SourceTable = "Room";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                // field("Location Code"; "Location Code")
                // {
                //     ApplicationArea = All;
                // }
                // field("Building Code"; "Building Code")
                // {
                //     ApplicationArea = All;
                // }
                field("Room No."; "Room No.")
                {
                    ApplicationArea = All;
                }
                field(Floor; Floor)
                {
                    ApplicationArea = All;
                }
                field("Room Type"; "Room Type")
                {
                    ApplicationArea = All;
                }
                field(Capacity; Capacity)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
