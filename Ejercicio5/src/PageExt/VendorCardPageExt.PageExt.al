pageextension 50101 VendorCardPageExt extends "Vendor Card"
{
    layout
    {
        // addafter(General)
        // {
        //     group(Ejercicio5)
        //     {
        //         Caption = 'Ejercicio 5';

        //         field(CertificateCode; Rec.CertificateCode)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Certificate Code';
        //         }

        //         field(CertificateType; Rec.CertificateType)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Certificate Type';
        //         }

        //         field(IssueDate; Rec.IssueDate)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Issue Type';
        //         }

        //         field(ExpirationDate; Rec.ExpirationDate)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Expiration Date';
        //         }

        //         field(Active; Rec.Active)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Active';
        //         }

        //         field(Attached; Rec.Attached)
        //         {
        //             ApplicationArea = All;
        //             Caption = 'Attached';
        //         }

        //     }
        // }
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
                    VendorCertificatesPage: Page "VendorCertificatesList";
                begin
                    VendorCertificatesPage.Run();
                end;
            }
        }
    }

}