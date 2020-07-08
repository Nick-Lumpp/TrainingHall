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
        field(2; "Course Code 2"; Code[20])
        {
            Caption = 'Course Code 2';
            TableRelation = Course;
        }
        field(3; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(4; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(5; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(6; Credits; Decimal)
        {
            Caption = 'Credits';
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
        key(key1; "Course Code", "Course Code 2", Code)
        { }
    }
}