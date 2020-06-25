page 70050 "Modules Page"
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
                field("Course Code"; "Course Code")
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
                field(Weighting; Weighting)
                {
                    ApplicationArea = All;
                }
            }
        }
    }

}
