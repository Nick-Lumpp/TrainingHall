table 70013 "Module Cost GOS"
{
    Caption = 'Cost';

    fields

    {
        field(1; "Module Code"; Code[20])
        {
            Caption = 'Module Code';
            TableRelation = Module;
        }
        field(2; Cost; Decimal)
        {
            AccessByPermission = tabledata Currency = R;
            Caption = 'Cost';
        }
    }

    keys
    {
        key(key1; "Module Code", Cost)
        { }
    }
}