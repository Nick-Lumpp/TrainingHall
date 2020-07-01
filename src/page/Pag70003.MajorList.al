page 70003 "Major List"
{
    Caption = 'Majors';
    PageType = ListPart;
    SourceTable = "Major";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                // field("Course code"; "Course code")
                // {
                //     ApplicationArea = All;
                // }
                field(Code; Code)
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Duration; Duration)
                {
                    ApplicationArea = All;
                }
                field("Unit of Measure"; "Unit of Measure")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
