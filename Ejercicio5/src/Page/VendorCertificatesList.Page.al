page 50103 VendorCertificatesList
{
    Caption = 'Vendor Certificates List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = VendorCertificatesHeader;
    CardPageId = VendorCertificateDocument;

    layout
    {
        area(Content)
        {
            repeater(Header)
            {
                Caption = 'Header';
                field(CertificateCode; Rec.CertificateCode)
                {
                    Caption = 'Certificate Code';
                }

                field(CertificateType; Rec.CertificateType)
                {
                    Caption = 'Certificate Type';
                }

                field(IssueDate; Rec.IssueDate)
                {
                    Caption = 'Issue Date';
                }

                field(ExpirationDate; Rec.ExpirationDate)
                {
                    Caption = 'Expiration Date';
                }

                field(Active; Rec.Active)
                {
                    Caption = 'Active';
                }
            }

        }
    }

}