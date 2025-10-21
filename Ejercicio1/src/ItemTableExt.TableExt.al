tableextension 50100 "Item Table Ext" extends Item
{
    fields
    {
        field(50100; "Brand"; Code[10])
        {
            AllowInCustomizations = Always;
            Caption = 'Brand';
            DataClassification = ToBeClassified;
            TableRelation = Brand;
            ToolTip = 'Specifies product brand.';
        }

        field(50101; "Brand Description"; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Brand Description';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies a description of the brand.';
        }

        field(50102; "Flavour"; Code[10])
        {
            AllowInCustomizations = Always;
            Caption = 'Flavour';
            DataClassification = ToBeClassified;
            TableRelation = Flavour;
            ToolTip = 'Specifies product flavour.';
        }

        field(50103; "Flavour Description"; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Flavour Description';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies a description of the flavour.';
        }

        field(50104; "Nutriscore"; Enum "Nutriscore")
        {
            AllowInCustomizations = Always;
            Caption = 'Nutriscore';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the nutriscore.';
        }
    }

    keys
    {
        // Add changes to keys here
    }

    fieldgroups
    {
        // Add changes to field groups here
    }

    var
    // myInt: Integer;
}