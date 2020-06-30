page 70003 "Majors Page"
{
    
    ApplicationArea = All;
    Caption = 'Majors Page';
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
    
}
