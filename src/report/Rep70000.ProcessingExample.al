report 70000 "Processing Example"
{
    UsageCategory = Tasks;
    ApplicationArea = All;
    ProcessingOnly = true;

    dataset
    {
        dataitem(Customer; Customer)
        {
            RequestFilterFields = "No.", City;
            DataItemTableView = sorting(City) where(Blocked = const(" "));


            dataitem("Contact Business Relation"; "Contact Business Relation")
            {
                DataItemLinkReference = Customer;
                DataItemLink = "No." = field("No.");
                DataItemTableView = where("Link to Table" = const(Customer));

                trigger OnPreDataItem()
                begin
                    Message('CBR OnPreDataItem');
                end;

                trigger OnAfterGetRecord()
                begin
                    Message('CBR OnAfterGetRecord');
                end;

                trigger OnPostDataItem()
                begin
                    Message('CBR OnPostDataItem');
                end;
            }

            trigger OnPreDataItem()
            begin
                Message('Customer OnPreDataItem');
            end;

            trigger OnAfterGetRecord()
            begin
                if confirm('Customer %1; Continue?', true, "No.") then
                    CustCount += 1
                else
                    CurrReport.Break();
            end;

            trigger OnPostDataItem()
            begin
                Message('Processed %1 customers', CustCount);
            end;
        }
    }

    var
        CustCount: Integer;

    /// <summary> 
    /// Description for TestProcedure.
    /// </summary>
    local procedure TestProcedure()
    begin

    end;
}