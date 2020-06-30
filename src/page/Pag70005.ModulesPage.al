page 70005 "Modules Page"
{

    ApplicationArea = All;
    Caption = 'Modules';
    PageType = List;
    SourceTable = "Module GOS";
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
                field("Module Code"; "Module Code")
                {
                    ApplicationArea = All;
                }
                field("Module Name"; "Module Name")
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
            }
        }
    }

}
