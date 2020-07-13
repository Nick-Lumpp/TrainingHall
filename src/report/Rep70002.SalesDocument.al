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
            column(TitleLbl; StrSubstNo(TitleLbl, "No.")) { }
            column(No_SalesHeader_Caption; FieldCaption("No.")) { }
            column(Sell_to_Customer_No; "Sell-to Customer No.") { }
            column(Sell_to_Customer_No_Caption; CustomerNoLbl) { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Customer_Name_Caption; CustomerNameLbl) { }
            column(Document_Date; format("Document Date", 0, 4)) { }
            column(Document_Date_Caption; FieldCaption("Document Date")) { }
            column(Sell_to_Contact; "Sell-to Contact") { }
            column(Sell_to_Contact_Caption; FieldCaption("Sell-to Contact")) { }
            column(Sell_to_Contact_No_; "Sell-to Contact No.") { }
            column(Sell_to_Contact_No_Caption; FieldCaption("Sell-to Contact No.")) { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_Address_Caption; FieldCaption("Sell-to Address")) { }
            column(Sell_to_Address_2; "Sell-to Address 2") { }
            column(Sell_to_Address_2_Caption; FieldCaption("Sell-to Address 2")) { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_City_Caption; FieldCaption("Sell-to City")) { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code") { }
            column(Sell_to_Country_Region_Code_Caption; FieldCaption("Sell-to Country/Region Code")) { }

            dataitem(SalesLines; "Sales Line")
            {
                DataItemLink = "Document Type" = field("Document Type"), "Document No." = field("No.");
                DataItemTableView = sorting("Document Type", "Document No.", "Line No.");

                column(LineNo_SalesLine; "Line No.") { }
                column(Type_SalesLine; Type) { }
                column(Type_SalesLine_Caption; FieldCaption(Type)) { }
                column(No_SalesLine; "No.") { }
                column(No_SalesLine_Caption; FieldCaption("No.")) { }
                column(Description_SalesLine; Description) { }
                column(Description_SalesLine_Caption; FieldCaption(Description)) { }
                column(Quantity; Quantity) { }
                column(Quantity_Caption; FieldCaption(Quantity)) { }
                column(Line_Amount; "Line Amount") { }
                column(Line_Amount_Caption; FieldCaption("Line Amount")) { }
                column(Amount_Including_VAT; "Amount Including VAT") { }
                column(Amount_Including_VAT_Caption; FieldCaption("Amount Including VAT")) { }
                column(Unit_Price; "Unit Price") { }
                column(Unit_Price_Caption; FieldCaption("Unit Price")) { }
            }
        }
    }
    var
        TitleLbl: Label 'Order Confirmation : %1';
        CustomerNameLbl: Label 'Customer Name';
        CustomerNoLbl: Label 'Customer No.';

    trigger OnPreReport()
    begin
        if SalesHeader.Count = 0 then
            Error('Nothing to Do!');
    end;
}