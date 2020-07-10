report 70002 "Sales Document"
{
    Caption = 'Sales Document Report';
    UsageCategory = Documents;
    ApplicationArea = All;
    DefaultLayout = RDLC;
    RDLCLayout = '.\Layouts\SalesDocuments.rdlc';

    dataset
    {
        dataitem(SalesHeader; "Sales Header")
        {
            column(Document_Type; "Document Type") { }
            column(Document_Type_Caption; FieldCaption("Document Type")) { }
            column(No_SalesHeader; "No.") { }
            column(No_SalesHeader_Caption; FieldCaption("No.")) { }
            column(Sell_to_Customer_No; "Sell-to Customer No.") { }
            column(Sell_to_Customer_No_Caption; FieldCaption("Sell-to Customer No.")) { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Customer_Name_Caption; FieldCaption("Sell-to Customer Name")) { }
            column(Document_Date; "Document Date") { }
            column(Document_Date_Caption; FieldCaption("Document Date")) { }
        }
    }

    trigger OnPreReport()
    begin
        if SalesHeader.Count = 0 then
            Error('Nothing to Do!');
    end;
}