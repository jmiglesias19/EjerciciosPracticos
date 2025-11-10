table 50100 VendorEvaluationHeader
{
    Caption = 'Vendor Evaluation Header';
    DataClassification = ToBeClassified;
    DrillDownPageId = VendorEvaluationCardDocument;
    LookupPageId = VendorEvaluationCardDocument;


    fields
    {
        field(1; "EvaluationNo"; Code[20])
        {
            Caption = 'Evaluation Number';
            NotBlank = true;
            TableRelation = "No. Series".Code;
            ToolTip = 'Specifies the vendor evaluation number.';
        }
        field(2; "EvaluationDate"; Date)
        {
            Caption = 'Evaluation Date';
            ToolTip = 'Specifies the evaluation date.';
        }
        field(3; "ArchiveDate"; Date)
        {
            Caption = 'Archive Date';
            ToolTip = 'Specifies the archive date.';
        }
        field(4; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
            ToolTip = 'Specifies if the evaluation is blocked.';
        }
        field(5; "VendorNo"; Code[20])
        {
            Caption = 'Vendor Number';
            TableRelation = Vendor."No.";
            ToolTip = 'Specifies the vendor number.';
        }
        field(6; "VendorName"; Text[100])
        {
            Caption = 'Vendor Name';
            ToolTip = 'Specifies the vendor name.';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field(VendorNo)));
            Editable = false;
        }
        field(7; "OtherAspects"; Text[250])
        {
            Caption = 'Other Aspects';
            ToolTip = 'Specifies other aspects.';

        }
        field(8; "Result"; Enum "VendorEvaluationResult")
        {
            Caption = 'Result';
            ToolTip = 'Specifies the evaluation result.';
        }
        field(9; "Responsible"; Code[50])
        {
            Caption = 'Responsible';
            TableRelation = "User Setup"."User ID";
            ToolTip = 'Specifies the responsible user.';
        }
    }

    keys
    {
        key(key1; "EvaluationNo")
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "EvaluationNo")
        {

        }

        fieldgroup(DropDown; "EvaluationNo")
        {

        }
    }
}