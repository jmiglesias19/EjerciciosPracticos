table 50100 Qualities
{
    Caption = 'Qualities';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; QualityCode; Code[10])
        {
            Caption = 'QualityCode';
            NotBlank = true;
        }

        field(2; QualityDescription; Text[50])
        {
            Caption = 'Quality Description';
        }

        field(3; Input; Text[100])
        {
            Caption = 'Input';
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