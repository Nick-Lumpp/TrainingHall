page 70010 "Contact Tree GOS"
{

    ApplicationArea = All;
    Caption = 'Contact Tree GOS';
    PageType = List;
    SourceTableView = sorting("Tree Sort Order GOS");
    SourceTable = Contact;
    UsageCategory = Lists;

    layout
    {
        area(content)
        {
            repeater(General)
            {
                ShowAsTree = true;
                TreeInitialState = CollapseAll;
                IndentationColumn = "Tree Level GOS";

                field("Tree Sort Order GOS"; "Tree Sort Order GOS")
                {
                    ApplicationArea = All;
                }
                field("Tree Level GOS"; "Tree Level GOS")
                {
                    ApplicationArea = All;
                }
                field(Type; Type)
                {
                    ApplicationArea = All;
                }
                field("No."; "No.")
                {
                    ApplicationArea = All;
                }
                field(Name; Name)
                {
                    ApplicationArea = All;
                }

            }
        }
    }

    trigger OnAfterGetRecord()
    begin
        if ("Tree Sort Order GOS" = '') or ("Tree Level GOS" = 0) then begin
            if Type = Type::Company then begin
                "Tree Level GOS" := 1;
                "Tree Sort Order GOS" := "No.";
            end else begin
                "Tree Level GOS" := 2;
                "Tree Sort Order GOS" := "Company No." + '-' + "No.";
            end;
            Modify();
        end;
    end;
}