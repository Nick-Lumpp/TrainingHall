report 70010 "Processed"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Building; Building)
        {
            RequestFilterFields = "Location Code", "Code";
            DataItemTableView = sorting("Location Code", Code);

            dataitem(Room; Room)
            {
                RequestFilterFields = "Room No.";
                DataItemLinkReference = Building;
                DataItemLink = "Location Code" = field("Location Code"), "Building Code" = field(Code);
                DataItemTableView = sorting("Building Code", "Room No.");

                trigger OnPreDataItem()
                begin
                    Message('Room OnPreDataItem');
                end;

                trigger OnAfterGetRecord()
                begin
                    Message('Room OnAfterGetRecord');
                end;

                trigger OnPostDataItem()
                begin
                    Message('Room OnPostDataItem');
                end;
            }

            trigger OnPreDataItem()
            begin
                Message('Buildings OnPreDataItem');
            end;

            trigger OnAfterGetRecord()
            begin
                if confirm('Buildings %1; Continue?', true, Processed) then
                    ProcCount += 1
                else
                    CurrReport.Break();
            end;

            trigger OnPostDataItem()
            begin
                Message('Processed %1 buildings', ProcCount);
            end;
        }
    }

    requestpage
    {
        SaveValues = true;

        layout
        {
            area(Content)
            {
                group(Processes)
                {
                    Caption = 'Processes';
                    field(Processed; ProcCount)
                    {
                        ApplicationArea = All;
                        Caption = 'Show Processed Rooms';
                        ToolTip = 'Specifies whether the reported Rooms are processed';
                    }
                }
            }
        }
    }

    var
        ProcCount: Integer;

    local procedure TestProcedure()
    begin

    end;
}