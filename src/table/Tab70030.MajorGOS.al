table 70030 "Major GOS"
{
    Caption = 'Major';

    fields
    {
        field(1; "Major Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Course Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Course Duration"; Enum "Course Duration GOS")
        {
            Caption = 'Course Duration';
        }
    }

    keys
    {
        key(key1; "Major Code")
        { }
    }
}