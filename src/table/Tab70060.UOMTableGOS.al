table 70060 "UOM Table GOS"
{
    Caption = 'UOM';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }

        field(2; Description; Text[50])
        {
            Caption = 'Description';
        }
    }

    keys
    {
        key(key1; Code)
        { }
    }
}