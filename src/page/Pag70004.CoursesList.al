page 70004 "Courses List"
{
    ApplicationArea = All;
    Caption = 'Courses';
    PageType = List;
    SourceTable = "Course";
    UsageCategory = Lists;
    CardPageId = "Course card";

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field(Code; Code)
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
