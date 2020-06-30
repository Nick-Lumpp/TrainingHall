table 70050 "Module GOS"
{
    Caption = 'Modules';

    fields
    {
        field(1; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = "Course GOS";
        }
        field(2; "Module Name"; Text[50])
        {
            Caption = 'Module Name';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; Weighting; Decimal)
        {
            Caption = 'Weighting';
        }
    }

    keys
    {
        key(key1; "Course Code", "Module Name")
        { }
    }
}