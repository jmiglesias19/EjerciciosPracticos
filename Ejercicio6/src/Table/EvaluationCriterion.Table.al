table 50102 EvaluationCriterion
{
    Caption = 'Evaluation Criterion';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CriterionCode; Code[20])
        {
            Caption = 'Criterion Code';
            NotBlank = true;
        }

        field(2; CriterionDescription; Text[100])
        {
            Caption = 'Criterion Description';
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