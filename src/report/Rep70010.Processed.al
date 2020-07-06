report 70010 "Processed"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Building; Building)
        {
            RequestFilterFields = "No. of Rooms", Processed;

            dataitem(Room; Room)
            {
                DataItemLinkReference = Building;
                DataItemLink = "Building Code" = field("Code");

                trigger OnPreDataItem()
                begin

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

    var
        ProcCount: Integer;

    local procedure TestProcedure()
    begin

    end;
}