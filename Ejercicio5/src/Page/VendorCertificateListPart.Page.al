page 50102 VendorCertificateListPart
{
    Caption = 'Vendor Certificate Lines';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = VendorCertificatesLines;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                Caption = 'Lines';

                field(CertificateCode; Rec.CertificateCode)
                {
                    Caption = 'Certificate Code';
                }

                field(Category; Rec.Category)
                {
                    Caption = 'Category';
                }

                field(Subfamily; Rec.Subfamily)
                {
                    Caption = 'Subfamily';
                }
            }
        }

    }
}