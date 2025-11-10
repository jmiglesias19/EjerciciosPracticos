table 50102 EvaluationCriteria
{
    Caption = 'Evaluation Criteria';
    DataClassification = ToBeClassified;
    LookupPageId = EvaluationCriteriaList;
    DrillDownPageId = EvaluationCriteriaList;

    fields
    {
        field(1; CriteriaCode; Code[20])
        {
            Caption = 'Criteria Code';
            NotBlank = true;
            ToolTip = 'Specifies the criteria code.';
        }

        field(2; CriteriaDescription; Text[100])
        {
            Caption = 'Criteria Description';
            ToolTip = 'Specifies the criteria description.';
        }
    }

    keys
    {
        key(Key1; CriteriaCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; CriteriaCode)
        {

        }

        fieldgroup(DropDown; CriteriaCode)
        {

        }
    }
}