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
        field(2; "Module Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(3; "Module Name"; Text[50])
        {
            Caption = 'Module Name';
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
            TableRelation = "UOM Table GOS";
        }
    }

    keys
    {
        key(key1; "Major Code", "Module Name")
        { }
    }
}