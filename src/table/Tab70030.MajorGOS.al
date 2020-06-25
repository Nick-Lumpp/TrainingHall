table 70030 "Major GOS"
{
    Caption = 'Major';

    fields
    {
        field(1; "Major Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Duration"; Decimal)
        {
            Caption = 'Duration';
        }

        field(4; "Unit of Measure"; Code[10])
        {
            Caption = 'Unit of Measure';
            TableRelation = "UOM Table GOS";
        }
    }

    keys
    {
        key(key1; "Major Code")
        { }
    }
}