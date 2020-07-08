table 70020 "UoM"
{
    Caption = 'UoM';

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