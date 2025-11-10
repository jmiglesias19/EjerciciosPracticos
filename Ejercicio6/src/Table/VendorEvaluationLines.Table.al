table 50101 VendorEvaluationLines
{
    Caption = 'Vendor Evaluation Lines';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; CriterionCode; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Criterion Code';
            ToolTip = 'Specifies the criterion code of the evaluation.';
            NotBlank = true;
        }

        field(2; Good; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Good';
            ToolTip = 'Specifies if the evaluation was good.';
        }

        field(4; Normal; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Normal';
            ToolTip = 'Specifies if the evaluation was normal.';
        }

        field(5; Bad; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Bad';
            ToolTip = 'Specifies if the evaluation was bad.';
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