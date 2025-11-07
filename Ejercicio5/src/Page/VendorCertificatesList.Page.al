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
                field(VendorCode; Rec.VendorCode)
                {
                    Caption = 'Vendor Code';
                    Editable = (DefaultVendorCode = '');
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

        area(FactBoxes)
        {
            part("Attached Documents List"; "Doc. Attachment List Factbox") //esta es la pagina que se usa actualmente, qu epermite subir varios archivos
            {
                Caption = 'Documents';
                UpdatePropagation = Both;
            }
            systempart(Links; Links)
            {
            }
            systempart(Notes; Notes)
            {
            }


        }
    }

    trigger OnNewRecord(Algo: Boolean)
    begin
        if DefaultVendorCode <> '' then
            Rec.VendorCode := DefaultVendorCode;

    end;

    var
        DefaultVendorCode: Code[20];

    trigger OnInit()
    begin
        DefaultVendorCode := '';
    end;

    procedure SetDefaultVendor(VendorCodePar: Code[20])
    begin
        DefaultVendorCode := VendorCodePar;
    end;
}