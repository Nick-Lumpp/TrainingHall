page 70005 "Modules List"
{

    ApplicationArea = All;
    Caption = 'Modules';
    PageType = List;
    SourceTable = "Module";
    UsageCategory = Lists;

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
                field("Course Code"; "Course Code")
                {
                    ApplicationArea = All;
                }
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
                field(Credits; Credits)
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
                field(Cost; Cost)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    // actions
    // {
    //     area(Navigation)
    //     {
    //         action(Costs)
    //         {
    //             ApplicationArea = All;
    //             Caption = 'Costs';
    //             RunObject = page "Module Costs";
    //             RunPageLink = "Module Code" = field(Code);
    //             RunPageMode = View;
    //             Image = Cost;
    //             Promoted = true;
    //             PromotedCategory = Process;
    //             PromotedIsBig = true;
    //             PromotedOnly = true;
    //         }
    //     }
    // }
}
