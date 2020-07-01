table 70040 "Course"
{
    Caption = 'Course';

    fields
    {
        field(1; "Major Code"; Code[20])
        {
            Caption = 'Major Code';
            TableRelation = Major;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; Name; Text[50])
        {
            Caption = 'Name';
        }
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; "Search Terms"; Text[50])
        {
            Caption = 'Search Terms';
        }
        field(6; "Available Credits"; Integer)
        {
            Caption = 'Available Credits';
        }
        field(7; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }
        field(8; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = UoM;
        }
    }

    keys
    {
        key(key1; "Major Code", "Code")
        { }
    }
}