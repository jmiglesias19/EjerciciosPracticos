table 50100 VendorCertificates
{
    Caption = 'Vendor Certificates';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; MyField; Integer)
        {

        }
    }

    keys
    {
        key(Key1; MyField)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

}