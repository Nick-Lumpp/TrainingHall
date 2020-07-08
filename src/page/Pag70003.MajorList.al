page 70003 "Major List"
{
    Caption = 'Majors';
    DataCaptionFields = "Course code";
    PageType = ListPart;
    SaveValues = true;
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
    actions
    {
        area(Processing)
        {
            group(Line)
            {
                Caption = 'Line';
                action(Modules)
                {
                    ApplicationArea = All;
                    Caption = 'Modules';
                    RunObject = page "Modules List";
                    RunPageLink = "Course Code" = field("Course code");
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
}