table 50102 EvaluationCriterion
{
    Caption = 'Evaluation Criterion';
    DataClassification = ToBeClassified;
    LookupPageId = EvaluationCriterionList;
    DrillDownPageId = EvaluationCriterionList;

    fields
    {
        field(1; CriterionCode; Code[20])
        {
            Caption = 'Criterion Code';
            NotBlank = true;
            ToolTip = 'Specifies the criterion code.';
        }

        field(2; CriterionDescription; Text[100])
        {
            Caption = 'Criterion Description';
            ToolTip = 'Specifies the criterion description.';
        }
    }

    keys
    {
        key(Key1; CriterionCode)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; CriterionCode)
        {

        }

        fieldgroup(DropDown; CriterionCode)
        {

        }
    }

}