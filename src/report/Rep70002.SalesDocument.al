report 70002 "Sales Document"
{
    Caption = 'Sales Document';
    UsageCategory = Documents;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\Layouts\SalesDocuments.rdlc';

    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            column(No_SalesHeader; "No.")
            {

            }
        }
    }

    // requestpage
    // {
    //     layout
    //     {
    //         area(Content)
    //         {
    //             group(GroupName)
    //             {
    //                 field(Name; SourceExpression)
    //                 {
    //                     ApplicationArea = All;

    //                 }
    //             }
    //         }
    //     }

    //     actions
    //     {
    //         area(processing)
    //         {
    //             action(ActionName)
    //             {
    //                 ApplicationArea = All;

    //             }
    //         }
    //     }
    // }
}