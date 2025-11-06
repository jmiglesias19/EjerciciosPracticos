page 50101 VendorCertificateDocument
{
    Caption = 'Certificate Vendor Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = VendorCertificatesHeader;

    layout
    {
        area(Content)
        {
            group(Header)
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

                field(Attached; Rec.Attached)
                {
                    Caption = 'Attached';
                }
            }

            group(Lines)
            {
                Caption = 'Lines';
                part(VendorCertificateLines; VendorCertificateListPart)
                {
                    Caption = 'Vendor Certificate Lines';
                    SubPageLink = CertificateCode = field(CertificateCode);
                }
            }
        }
    }

}
