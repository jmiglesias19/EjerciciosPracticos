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
            TableRelation = EvaluationCriteria.CriteriaCode;
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

        // field(6; EvaluationNumber; Code[20])
        // {
        //     AllowInCustomizations = Always;
        //     Caption = 'Evaluation number';
        //     ToolTip = 'Specifies the evaluation number.';
        //     TableRelation = VendorEvaluationHeader.EvaluationNo;
        //     NotBlank = true;
        // }
    }

    keys
    {
        key(Key1; CriterionCode/* , EvaluationNumber */)
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