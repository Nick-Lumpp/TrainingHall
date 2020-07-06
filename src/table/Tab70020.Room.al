table 70020 "Room"
{
    Caption = 'Lecture Room';
    fields
    {
        field(1; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }

        field(2; "Building Code"; Code[20])
        {
            Caption = 'Building Code';
            TableRelation = "Building"."Code" where("Location Code" = field("Location Code"));
        }

        field(3; "Room No."; Code[20])
        {
            Caption = 'Room No.';
        }

        field(4; Floor; Integer)
        {
            Caption = 'Floor';
        }

        field(5; "Room Type"; Enum "Room Type GOS")
        {
            Caption = 'Room Type';
        }

        field(6; Capacity; Integer)
        {
            Caption = 'Capacity';
        }

        field(7; Processed; Boolean)
        {
            Caption = 'Processed';
        }
    }

    keys
    {
        key(key1; "Location Code", "Building Code", "Room No.")
        { }
    }
}