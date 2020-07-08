page 70009 "Module Costs"
{

    ApplicationArea = All;
    Caption = 'Module Costs';
    PageType = List;
    SourceTable = "Module Cost GOS";
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                field("Module Code"; "Module Code")
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

}
