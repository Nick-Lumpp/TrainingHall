table 70000 "Building Table GOS"
{
    Caption = 'Building';

    fields
    {
        field(1; "Location Code"; Code[20])
        {
            Caption = 'Location Code';
            TableRelation = Location;
        }

        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }

        field(4; "Building Type"; Text[50])
        {
            Caption = 'Type';
            TableRelation = "Purpose of Building GOS";
        }

        field(5; "GPS Co-ordinates"; Code[100])
        {
            Caption = 'Co-ordinates';
        }

        field(6; "No. of Rooms"; Integer)
        {
            Caption = 'No. of Rooms';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = count ("Room Table GOS" where("Location Code" = field("Location Code"), "Building Code" = field(Code)));
        }
    }

    keys
    {
        key(key1; "Location Code", "Code")
        { }
    }
}