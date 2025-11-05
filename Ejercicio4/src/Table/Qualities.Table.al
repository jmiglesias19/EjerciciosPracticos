table 50100 Qualities
{
    Caption = 'Qualities';
    DataClassification = ToBeClassified;
    Extensible = true;
    LookupPageId = QualitiesPage;
    DrillDownPageId = QualitiesPage;

    fields
    {
        field(1; QualityCode; Code[10])
        {
            Caption = 'QualityCode';
            NotBlank = true;
            ToolTip = 'Specifies the quality code.';
        }

        field(2; QualityDescription; Text[50])
        {
            Caption = 'Quality Description';
            ToolTip = 'Specifies the quality description.';
        }

        field(3; Input; Text[100])
        {
            Caption = 'Input';
            ToolTip = 'Specifies the input.';
        }
    }

    keys
    {
        key(Key1; QualityCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; QualityCode)
        {
        }

        fieldgroup(Brick; QualityCode)
        {
        }
    }
}