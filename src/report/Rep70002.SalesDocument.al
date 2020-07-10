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
            RequestFilterFields = "Document Type", "No.", "Sell-to Customer No.", "Document Date";
            column(Document_Type; "Document Type") { }
            column(Document_Type_Caption; FieldCaption("Document Type")) { }
            column(No_SalesHeader; "No.") { }
            column(No_SalesHeader_Caption; FieldCaption("No.")) { }
            column(Sell_to_Customer_No; "Sell-to Customer No.") { }
            column(Sell_to_Customer_No_Caption; FieldCaption("Sell-to Customer No.")) { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Customer_Name_Caption; FieldCaption("Sell-to Customer Name")) { }
            column(Document_Date; format("Document Date", 0, 4)) { }
            column(Document_Date_Caption; FieldCaption("Document Date")) { }

            dataitem(SalesLines; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");

                column(Type_SalesLine; Type) { }
                column(Type_SalesLine_Caption; FieldCaption(Type)) { }
                column(No_SalesLine; "No.") { }
                column(No_SalesLine_Caption; FieldCaption("No.")) { }
                column(Description_SalesLine; Description) { }
                column(Description_SalesLine_Caption; FieldCaption(Description)) { }
            }
        }
    }

    trigger OnPreReport()
    begin
        if SalesHeader.Count = 0 then
            Error('Nothing to Do!');
    end;
}