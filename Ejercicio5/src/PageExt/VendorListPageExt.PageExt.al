pageextension 50100 VendorListPageExt extends "Vendor List"
{
    actions
    {
        addfirst("Ven&dor")
        {
            action(VendorCertificates)
            {
                ApplicationArea = All;
                Caption = 'Certificates';
                Image = Certificate;
                Promoted = true;
                PromotedCategory = Category5;
                PromotedIsBig = true;
                ToolTip = 'Open the Vendor Certificates page.';

                trigger OnAction()
                var
                    VendorCertificatesPage: Page "VendorCertificates";
                begin
                    VendorCertificatesPage.Run();
                end;
            }

        }
    }

}