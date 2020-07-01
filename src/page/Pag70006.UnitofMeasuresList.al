page 70006 "Unit of Measures List"
{

    ApplicationArea = All;
    Caption = 'UOM';
    PageType = List;
    SourceTable = UoM;
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
