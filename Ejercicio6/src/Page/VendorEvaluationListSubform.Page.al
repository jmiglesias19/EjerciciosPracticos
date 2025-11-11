page 50101 VendorEvaluationListSubform
{
    Caption = 'Vendor Evaluation Subform';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = VendorEvaluationLines;

    layout
    {
        area(Content)
        {
            repeater(Lines)
            {
                Caption = 'Vendor Evaluation Lines';
                field(CriterionCode; Rec.CriterionCode)
                {
                }

                field(Good; Rec.Good)
                {
                    trigger OnValidate()
                    begin
                        if Rec.Good then begin
                            Rec.Normal := false;
                            Rec.Bad := false;
                        end;

                    end;
                }

                field(Normal; Rec.Normal)
                {
                    trigger OnValidate()
                    begin
                        if Rec.Normal then begin
                            Rec.Good := false;
                            Rec.Bad := false;
                        end;

                    end;
                }

                field(Bad; Rec.Bad)
                {
                    trigger OnValidate()
                    begin
                        if Rec.Bad then begin
                            Rec.Good := false;
                            Rec.Normal := false;
                        end;

                    end;
                }
            }
        }
    }
}