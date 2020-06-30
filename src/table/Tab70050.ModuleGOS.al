table 70050 "Module GOS"
{
    Caption = 'Modules';

    fields
    {
        field(1; "Module Code"; Code[20])
        {
            Caption = 'Module Code';
            TableRelation = "Module GOS";
        }
        field(2; "Module Name"; Text[50])
        {
            Caption = 'Module Name';
        }
        field(3; Description; Text[250])
        {
            Caption = 'Description';
        }
        field(4; Weigting; Decimal)
        {
            Caption = 'Weighting';
        }
    }

    keys
    {
        key(key1; "Module Code", "Module Name")
        { }
    }
}