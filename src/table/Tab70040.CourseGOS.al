table 70040 "Course GOS"
{
    Caption = 'Course';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; "Search Terms"; Text[50])
        {
            Caption = 'Search Terms';
        }
        field(5; "Available Credits"; Integer)
        {
            Caption = 'Available Credits';
        }
        field(6; "Course Duration"; Enum "Course Duration GOS")
        {
            Caption = 'Course Duration';
        }
    }

    keys
    {
        key(key1; "Code")
        { }
    }
}