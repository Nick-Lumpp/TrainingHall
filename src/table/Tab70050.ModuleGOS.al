table 70050 "Module GOS"
{
    Caption = 'Modules';

    fields
    {
        field(1; "Major Code"; Code[20])
        {
            Caption = 'Major Code';
            TableRelation = "Major GOS";
        }
        field(2; "Module Name"; Text[50])
        {
            Caption = 'Module Name';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; Credits; Decimal)
        {
            Caption = 'Credits';
        }
    }

    keys
    {
        key(key1; "Major Code", "Module Name")
        { }
    }
}