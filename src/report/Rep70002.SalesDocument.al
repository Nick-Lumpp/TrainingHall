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
            column(TitleLbl; StrSubstNo(TitleLbl, "No.")) { }
            column(Sell_to_Customer_No; "Sell-to Customer No.") { }
            column(Sell_to_Customer_No_Caption; CustomerNoLbl) { }
            column(Sell_to_Customer_Name; "Sell-to Customer Name") { }
            column(Sell_to_Customer_Name_Caption; CustomerNameLbl) { }
            column(Document_Date; format("Document Date", 0, 4)) { }
            column(Document_Date_Caption; DocDateLbl) { }
            column(Sell_to_Contact; "Sell-to Contact") { }
            column(Sell_to_Contact_Caption; FieldCaption("Sell-to Contact")) { }
            column(Sell_to_Contact_No_; "Sell-to Contact No.") { }
            column(Sell_to_Contact_No_Caption; FieldCaption("Sell-to Contact No.")) { }
            column(CustomerAdrLbl; CustomerAdrLbl) { }
            column(Sell_to_Address; "Sell-to Address") { }
            column(Sell_to_Address_2; "Sell-to Address 2") { }
            column(Sell_to_City; "Sell-to City") { }
            column(Sell_to_County; "Sell-to County") { }
            column(Sell_to_Post_Code; "Sell-to Post Code") { }
            column(Sell_to_Country_Region_Code; "Sell-to Country/Region Code") { }

            dataitem("Company Information"; "Company Information")
            {
                column(Name; Name) { }
                column(Name_Caption; CompanyNameLbl) { }
                column(Contact_Person; "Contact Person") { }
                column(Contact_Person_Caption; FieldCaption("Contact Person")) { }
                column(Phone_No_; "Phone No.") { }
                column(Phone_No_Caption; FieldCaption("Phone No.")) { }
                column(CompanyAdrLbl; CompanyAdrLbl) { }
                column(Address; Address) { }
                column(Address_2; "Address 2") { }
                column(City; City) { }
                column(County; County) { }
                column(Post_Code; "Post Code") { }
                column(Country_Region_Code; "Country/Region Code") { }
            }

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
                column(Quantity_Caption; QuantityLbl) { }
                column(Line_Amount; "Line Amount") { }
                column(Line_Amount_Caption; FieldCaption("Line Amount")) { }
                column(Unit_of_Measure; "Unit of Measure") { }
                column(Unit_of_Measure_Caption; UnitofMeasureLbl) { }
                column(Unit_Cost; "Unit Cost") { }
                column(Unit_Cost_Caption; FieldCaption("Unit Cost")) { }
                column(Inv__Discount_Amount; "Inv. Discount Amount") { }
                column(Inv__Discount_Amount_Caption; FieldCaption("Inv. Discount Amount")) { }

                // dataitem("VAT Amount Line"; "VAT Amount Line")
                // {
                //     column(GetTotalAmountInclVAT; "Amount Including VAT") { }
                //     column(GetTotalAmountInclVAT_Caption; TotalinclVATLbl) { }
                //     column(GetTotalVATAmount; GetTotalVATAmount) { }
                //     column(GetTotalVATAmount_Caption; TotalVATLbl) { }
                //     column(GetTotalLineAmount; GetTotalLineAmount) { }
                //     column(GetTotalLineAmount_Caption; TotalexclVATLbl) { }
                // }
            }
        }
    }
    var
        TitleLbl: Label 'Order Confirmation : %1';
        CustomerNameLbl: Label 'Customer Name';
        CustomerNoLbl: Label 'Customer No.';
        CustomerAdrLbl: Label 'Customer Address';
        CompanyAdrLbl: Label 'Company Address';
        CompanyNameLbl: Label 'Company Name:';
        DocDateLbl: Label 'Document Date:';
        QuantityLbl: Label 'Qty';
        UnitofMeasureLbl: Label 'UOM';
        TotalinclVATLbl: Label 'Total Incl. VAT';
        TotalVATLbl: Label 'Total VAT';
        TotalexclVATLbl: Label 'Total Excl VAT';

    trigger OnPreReport()
    begin
        if SalesHeader.Count = 0 then
            Error('Nothing to Do!');
    end;
}