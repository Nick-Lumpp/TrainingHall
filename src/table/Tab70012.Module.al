table 70012 "Module"
{
    Caption = 'Modules';

    fields
    {
        field(1; "Code"; Code[20])
        {
            Caption = 'Code';
        }
        field(2; "Name"; Text[50])
        {
            Caption = 'Name';
        }
        field(3; "Course Code"; Code[20])
        {
            Caption = 'Course Code';
            TableRelation = Course;
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
            TableRelation = UoM;
        }
        field(8; Cost; Decimal)
        {
            FieldClass = FlowField;
            Caption = 'Cost';
            CalcFormula = lookup ("Module Cost GOS".Cost where("Module Code" = field(Code)));
        }
    }

    keys
    {
        key(key1; Code, "Course Code")
        { }
    }
}