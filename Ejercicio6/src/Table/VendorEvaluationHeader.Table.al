table 50100 VendorEvaluationHeader
{
    Caption = 'Vendor Evaluation Header';
    DataClassification = ToBeClassified;
    DrillDownPageId = VendorEvaluationCardDocument;
    LookupPageId = VendorEvaluationCardDocument;
    Permissions = tabledata VendorEvaluationHeader = rm;

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
            NotBlank = true;

            trigger OnValidate()
            begin
                if (Rec.VendorNo <> '') and (Rec.Archived = false) then
                    if checkActiveEvalExists(Rec."VendorNo", Rec."EvaluationNo") then
                        Error(ActiveErrorLbl, Rec."VendorNo");
            end;
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

        field(10; Archived; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Archived';
            ToolTip = 'Specifies if the evaluation is archived.';

            trigger OnValidate()
            var
                ConfirmManagement: Codeunit "Confirm Management";
                DefaultAnswer: Boolean;
                Question: Text;
            begin
                if Rec.Archived = false then begin
                    if checkActiveEvalExists(Rec."VendorNo", Rec."EvaluationNo") then begin
                        DefaultAnswer := true;
                        Question := StrSubstNo(ArchiveExistingQst, Rec."VendorNo");

                        if ConfirmManagement.GetResponseOrDefault(Question, DefaultAnswer) then
                            ArchiveActiveEvaluation(Rec."VendorNo")
                        else
                            Error(UnarchiveCancelledErr);
                    end;
                    Rec."ArchiveDate" := 0D;
                end else
                    Rec."ArchiveDate" := Today();
            end;
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

    trigger OnInsert()
    begin
        if (Rec.Archived = false) and (Rec.VendorNo <> '') then
            if checkActiveEvalExists(Rec."VendorNo", Rec."EvaluationNo") then
                Error(ActiveErrorLbl, Rec."VendorNo");
    end;

    procedure checkActiveEvalExists(VendorNumber: Code[20]; CurrentEvalNo: Code[20]): Boolean
    var
        VEHRec: Record VendorEvaluationHeader;
    begin
        VEHRec.SetRange("VendorNo", VendorNumber);
        VEHRec.SetRange(Archived, false);
        VEHRec.SetFilter("EvaluationNo", '<>%1', CurrentEvalNo);
        exit(not VEHRec.IsEmpty());
    end;

    local procedure ArchiveActiveEvaluation(VendorNumber: Code[20])
    var
        VEHRec: Record VendorEvaluationHeader;
    begin
        VEHRec.SetRange("VendorNo", VendorNumber);
        VEHRec.SetRange(Archived, false);

        if VEHRec.FindFirst() then begin
            VEHRec.Validate(Archived, true);
            VEHRec.Modify(true);
        end;
    end;

    var
        ActiveErrorLbl: Label 'Vendor %1 already has an active evaluation.', Comment = 'Indicates that Vendor %1 have an active evaluation.';

        ArchiveExistingQst: Label 'Vendor %1 already has an active evaluation. Do you want to archive it and active the current one?', Comment = 'Vendor %1 already has an active evaluation. Do you want to archive it and active the current one?';
        UnarchiveCancelledErr: Label 'Cancelled action. The vendor active evaluation has not been modified.';

}