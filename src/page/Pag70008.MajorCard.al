page 70008 "Major Card"
{

    Caption = 'Major Card';
    PageType = Card;
    SourceTable = Major;

    layout
    {
        area(content)
        {
            group(General)
            {
                field("Major Code"; "Major Code")
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
            part(Courses; "Courses List")
            {
                ApplicationArea = All;
                SubPageLink = "Major Code" = field("Major Code");
            }
        }
    }

    actions
    {
        area(Navigation)
        {
            action(Course)
            {
                ApplicationArea = All;
                Caption = 'Course';
                RunObject = page "Courses List";
                RunPageMode = View;
                Promoted = true;
                PromotedCategory = Process;
                PromotedIsBig = true;
                PromotedOnly = true;
            }
        }
    }
}
