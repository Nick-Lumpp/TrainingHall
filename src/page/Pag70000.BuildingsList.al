page 70000 "Buildings List"
{
    Editable = false;
    ApplicationArea = All;
    Caption = 'Buildings';
    PageType = List;
    SourceTable = "Building";
    UsageCategory = Lists;
    CardPageId = "Building Card";

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
