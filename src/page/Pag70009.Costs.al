page 70009 Costs
{
    
    ApplicationArea = All;
    Caption = 'Costs';
    PageType = List;
    SourceTable = "Cost GOS";
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
