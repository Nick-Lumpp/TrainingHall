page 70030 "Majors Page"
{

    ApplicationArea = All;
    Caption = 'Majors';
    PageType = List;
    SourceTable = "Major GOS";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Major Code"; "Major Code")
                {
                    ApplicationArea = All;
                }
                field("Course Name"; "Course Name")
                {
                    ApplicationArea = All;
                }
                field("Course Duration"; "Course Duration")
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
