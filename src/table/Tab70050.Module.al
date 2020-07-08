table 70050 "Module"
{
    Caption = 'Modules';

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
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
        field(4; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(5; Credits; Decimal)
        {
            Caption = 'Credits';
        }
        field(6; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }
        field(7; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = UoM;
        }
    }

    keys
    {
        key(key1; "Course Code", Code)
        { }
    }
}