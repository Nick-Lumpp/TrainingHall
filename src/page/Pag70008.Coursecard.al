page 70009 "Courses card"
{

    Caption = 'Course card';
    PageType = Card;
    SourceTable = Course;

    layout
    {
        area(content)
        {
            group(General)
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
            part(Majors; "Major List")
            {
                ApplicationArea = All;
                SubPageLink = "Course Code" = field(Code);
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Modules)
            {
                ApplicationArea = All;
                Caption = 'Modules';
                RunObject = page "Modules List";
                RunPageMode = View;
                Image = Document;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
            }
        }
    }
}
