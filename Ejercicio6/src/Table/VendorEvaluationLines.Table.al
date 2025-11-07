table 50101 VendorEvaluationLines
{
    Caption = 'Vendor Evaluation Lines';
    DataClassification = ToBeClassified;
    LookupPageId = VendorEvaluationList;
    DrillDownPageId = VendorEvaluationList;

    fields
    {
        field(1; Criterion; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Criterion';
            ToolTip = 'Specifies the criterion of the evaluation.';
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
        key(Key1; Criterion)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; Criterion)
        { }

        fieldgroup(DropDown; Criterion)
        { }
    }

}