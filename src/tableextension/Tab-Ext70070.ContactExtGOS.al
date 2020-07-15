tableextension 70070 "Contact Ext. GOS" extends Contact
{
    fields
    {
        field(70071; "Tree Sort Order GOS"; Code[50])
        {
            Caption = 'Tree Sort Order';
        }
        field(70072; "Tree Level GOS"; Integer)
        {
            DataClassification = CustomerContent;
            Caption = 'Tree Level';
        }
    }

    keys
    {
        key(GOS; "Tree Sort Order GOS")
        {

        }
    }
}