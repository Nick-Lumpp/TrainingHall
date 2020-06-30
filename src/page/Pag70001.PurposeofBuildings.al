page 70001 "Purpose of Buildings"
{
    
    ApplicationArea = All;
    Caption = 'Purpose of Buildings';
    PageType = List;
    SourceTable = "Purpose of Building GOS";
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
                field(Description; Description)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
    
}
