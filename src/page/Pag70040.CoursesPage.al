page 70040 "Courses Page"
{

    ApplicationArea = All;
    Caption = 'Courses';
    PageType = List;
    SourceTable = "Course GOS";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Course Code"; "Code")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field("Search Terms"; "Search Terms")
                {
                    ApplicationArea = All;
                }
                field("Available Credits"; "Available Credits")
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
