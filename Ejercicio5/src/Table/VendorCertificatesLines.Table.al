table 50102 VendorCertificatesLines
{
    Caption = 'Vendor Certificates Lines';
    DataClassification = ToBeClassified;

    fields
    {

        field(1; CertificateCode; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Certificate Code';
            NotBlank = true;
            ToolTip = 'Specifies the certificate code associated with this line.';
            TableRelation = VendorCertificatesHeader.CertificateCode;
        }

        field(2; Category; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Category';
            NotBlank = true;
            ToolTip = 'Specifies the category of the vendor certificate line.';
            TableRelation = "Item Category";
        }

        field(3; Subfamily; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Subfamily';
            NotBlank = true;
            ToolTip = 'Specifies the subfamily of the vendor certificate line.';
            TableRelation = "Item Category";
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
}