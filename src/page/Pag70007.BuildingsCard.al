page 70007 "Buildings Card"
{
    
    Caption = 'Buildings Card';
    PageType = Card;
    SourceTable = Building;
    
    layout
    {
        area(content)
        {
            group(General)
            {
                field("Location Code"; "Location Code")
                {
                    ApplicationArea = All;
                }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("GPS Co-ordinates"; "GPS Co-ordinates")
                {
                    ApplicationArea = All;
                }
                field("No. of Rooms"; "No. of Rooms")
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
