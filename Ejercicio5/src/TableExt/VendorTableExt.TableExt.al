tableextension 50100 VendorTableExt extends Vendor
{
    fields
    {
        field(50100; CertificateCode; Code[20])
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Certificate Code';
            NotBlank = true;
            ToolTip = 'Specifies the unique code for the vendor certificate.';
        }

        field(50101; CertificateType; Enum "CertificateTypeEnum")
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Certificate Type';
            ToolTip = 'Specifies the type of the vendor certificate.';
        }

        field(50102; IssueDate; Date)
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Issue Date';
            ToolTip = 'Specifies the issue date of the vendor certificate.';
        }

        field(50103; ExpirationDate; Date)
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Expiration Date';
            ToolTip = 'Specifies the expiration date of the vendor certificate.';
        }

        field(50104; Active; Boolean)
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Active';
            ToolTip = 'Indicates whether the vendor certificate is active.';
        }

        field(50105; Attached; Media)
        {
            AllowInCustomizations = Always;
            DataClassification = ToBeClassified;
            Caption = 'Attached';
            ToolTip = 'Specifies any attachments related to the vendor certificate.';
        }
    }
}