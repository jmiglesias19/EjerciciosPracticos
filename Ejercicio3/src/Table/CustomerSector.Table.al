table 50101 CustomerSector
{
    Caption = 'Customer Sector';
    DataClassification = ToBeClassified;
    // LookupPageId = "CustomerTypeList";
    // DrillDownPageId = "CustomerTypeList";

    fields
    {
        field(1; Sector; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector';
            NotBlank = true;
            ToolTip = 'Specifies the sector.';
        }

        field(2; SectorDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies a description of the sector.';
        }
    }

    keys
    {
        key(Key1; Sector)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Sector)
        {
        }

        fieldgroup(Brick; Sector)
        {
        }
    }



}