page 70002 "Rooms Page"
{
    
    ApplicationArea = All;
    Caption = 'Rooms Page';
    PageType = List;
    SourceTable = "Room Table GOS";
    UsageCategory = Lists;
    
    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field("Building Code"; "Building Code")
                {
                    ApplicationArea = All;
                }
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
