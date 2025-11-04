table 50101 CustomerSector
{
    Caption = 'Customer Sector';
    DataClassification = ToBeClassified;
    LookupPageId = "SectorList";
    DrillDownPageId = "SectorList";

    fields
    {
        field(1; Sector; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector';
            NotBlank = true;
            ToolTip = 'Specifies the sector.';
            Editable = true;
        }

        field(2; SectorDescription; Text[50])
        {
            AllowInCustomizations = Always;
            Caption = 'Description';
            ToolTip = 'Specifies a description of the sector.';
            Editable = true;
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