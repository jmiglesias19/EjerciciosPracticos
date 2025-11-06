table 50101 VendorCertificatesHeader
{
    Caption = 'Vendor Certificates Header';
    LookupPageId = VendorCertificateDocument;
    DrillDownPageId = VendorCertificateDocument;

    fields
    {
        field(1; CertificateCode; Code[20])
        {
            DataClassification = ToBeClassified;
            Caption = 'Certificate Code';
            NotBlank = true;
            ToolTip = 'Specifies the unique code for the vendor certificate.';
            TableRelation = "No. Series";
        }

        field(2; CertificateType; Enum "CertificateTypeEnum")
        {
            DataClassification = ToBeClassified;
            Caption = 'Certificate Type';
            ToolTip = 'Specifies the type of the vendor certificate.';
        }

        field(3; IssueDate; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Issue Date';
            ToolTip = 'Specifies the issue date of the vendor certificate.';

            trigger OnValidate()
            begin
                CheckWorkDate();
            end;
        }

        field(4; ExpirationDate; Date)
        {
            DataClassification = ToBeClassified;
            Caption = 'Expiration Date';
            ToolTip = 'Specifies the expiration date of the vendor certificate.';
            trigger OnValidate()
            begin
                CheckWorkDate();
            end;
        }

        field(5; Active; Boolean)
        {
            DataClassification = ToBeClassified;
            Caption = 'Active';
            ToolTip = 'Indicates whether the vendor certificate is active.';
            Editable = false;
        }

        field(6; Attached; Blob)
        {
            Subtype = Bitmap;
            DataClassification = ToBeClassified;
            Caption = 'Attached';
            ToolTip = 'Specifies any attachments related to the vendor certificate.';
        }
    }

    keys
    {
        key(Key1; CertificateCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; CertificateCode)
        {
        }

        fieldgroup(Brick; CertificateCode)
        {
        }
    }

    local procedure CheckWorkDate()
    var
        IsInRange: Boolean;
    begin
        Active := false;
        if (IssueDate <> 0D) and (ExpirationDate <> 0D) then
            IsInRange := (WorkDate() >= IssueDate) and (WorkDate() <= ExpirationDate);

        // if IsInRange and (not Active) then
        //     CheckActive();
        Active := IsInRange;
    end;

    // local procedure CheckActive()
    // var
    //     myInt: Integer;
    // begin

    // end;
}