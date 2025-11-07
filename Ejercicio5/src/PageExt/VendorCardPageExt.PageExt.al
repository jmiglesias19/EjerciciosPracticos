pageextension 50101 VendorCardPageExt extends "Vendor Card"
{
    layout
    {
        addlast(General)
        {
            field(Approved; Rec.Approved)
            {
                ApplicationArea = All;
                Caption = 'Approved';
            }
        }
    }

    actions
    {
        addfirst("Ven&dor")
        {
            action(Certificates)
            {
                ApplicationArea = All;
                Caption = 'Certificates';
                Image = Certificate;
                ToolTip = 'Open the Vendor Certificates page.';
                Promoted = true;
                PromotedCategory = Category9;
                PromotedIsBig = true;

                trigger OnAction()
                var
                    VendorCertificate: Record VendorCertificatesHeader;
                    VendorCertificatesPage: Page "VendorCertificatesList";
                begin
                    VendorCertificate.SetRange(VendorCode, Rec."No.");
                    VendorCertificatesPage.SetTableView(VendorCertificate);
                    VendorCertificatesPage.SetDefaultVendor(Rec."No.");
                    VendorCertificatesPage.RunModal();
                end;

            }
        }


    }

}