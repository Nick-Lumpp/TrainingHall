table 70011 "Major"
{
    Caption = 'Major';

    fields
    {
        field(1; "Course code"; Code[20])
        {
            Caption = 'Course code';
            TableRelation = Course;
        }
        field(2; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(4; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }

        field(5; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = UoM;
        }
    }


    keys
    {
        key(key1; "Code", "Course code")
        { }
    }
}