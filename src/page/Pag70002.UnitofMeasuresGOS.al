page 70002 "Unit of Measures GOS"
{

    ApplicationArea = All;
    Caption = 'UOM';
    PageType = List;
    SourceTable = "UOM Table GOS";
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
