table 50100 VendorEvaluationHeader
{
    Caption = 'Vendor Evaluation Header';
    LookupPageId = "VendorEvaluationCard";
    DrillDownPageId = "VendorEvaluationCard";
    Permissions = tabledata VendorEvaluationHeader = r;

    fields
    {
        field(1; "No."; Code[20])
        {
            Caption = 'No.';
            NotBlank = true;
            TableRelation = "No. Series";
            ToolTip = 'Specifies  the evaluation number.';
        }
        field(2; "EvaluationDate"; Date)
        {
            AllowInCustomizations = Always;
            Caption = 'Evaluation Date';
            ToolTip = 'Specifies the evaluation date.';
        }
        field(3; "Archive Date"; Date)
        {
            Caption = 'Archive Date';
            ToolTip = 'Specifies the archive date.';
        }
        field(4; "Blocked"; Boolean)
        {
            Caption = 'Blocked';
            ToolTip = 'Specifies if the evaluation is blocked.';
        }
        field(5; "Vendor No."; Code[20])
        {
            Caption = 'Vendor No.';
            TableRelation = Vendor;
            ToolTip = 'Specifies the vendor number.';
        }
        field(6; "Vendor Name"; Text[100])
        {
            Caption = 'Vendor Name';
            FieldClass = FlowField;
            CalcFormula = lookup(Vendor.Name where("No." = field("Vendor No.")));
            Editable = false;
            ToolTip = 'Specifies the vendor name.';
        }
        field(7; "OperationDescription"; Text[250])
        {
            Caption = 'Operation Description';
            // Subtype = Memo;
            ToolTip = 'Specifies the operation description.';
        }
        field(8; "Result"; Enum "VendorEvaluationResult")
        {
            Caption = 'Result';
            ToolTip = 'Specifies the result of the evaluation.';
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
        key(Key1; "No.")
        {
            Clustered = true;
        }
        // key(Key2; "Vendor No.")
        // {
        // }
    }

    fieldgroups
    {
        fieldgroup(DropDown; "No."/* , "Vendor Name" */)
        {
        }
        fieldgroup(Brick; "No."/* , "Vendor No.", "Vendor Name", "Result" */)
        {
        }

    }
}