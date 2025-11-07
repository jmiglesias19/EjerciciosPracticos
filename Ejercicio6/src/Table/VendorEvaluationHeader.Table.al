table 50100 VendorEvaluationHeader
{
    Caption = 'Vendor Evaluation Header';
    DataClassification = ToBeClassified;
    LookupPageId = "VendorEvaluationCard";
    DrillDownPageId = "VendorEvaluationCard";

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            TableRelation = "No. Series";
            NotBlank = true;
            ToolTip = 'Specifies  the evaluation number.';
        }
        field(2; "EvaluationDate"; Date)
        {
            Caption = 'Evaluation Date';
        }
        field(3; "Archive Date"; Date)
        {
            Caption = 'Archive Date';
        }
        field(4; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
        }
        field(5; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
        }
        field(6; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
            Editable = false;
        }
        field(7; "OperationDescription"; Text[250])
        {
            Caption = 'Operation Description';
            // Subtype = Memo;
        }
        field(8; "Result"; Enum "VendorEvaluationResult")
        {
            Caption = 'Result';
        }
        field(9; "Responsible"; Code[50])
        {
            Caption = 'Responsible';
            TableRelation = "User Setup"."User ID";
        }
    }

    keys
    {
        key(Key1; "No.")
        {
            Clustered = true;
        }
        key(Key2; "Vendor No.")
        {
        }
    }

    fieldgroups
    {
        fieldgroup(Brick; "No.", "Vendor No.", "Vendor Name", "Result")
        {
        }
        fieldgroup(DropDown; "No.", "Vendor Name")
        {
        }
    }
}