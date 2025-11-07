page 50101 VendorEvaluationList
{
    Caption = 'Vendor Evaluation List';
    PageType = ListPart;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = VendorEvaluationLines;

    layout
    {
        area(Content)
        {
            repeater(Evaluation)
            {
                field(Criterion; Rec.Criterion)
                {
                    Caption = 'Criterion';
                    TableRelation = EvaluationCriterion;
                }

                field(Good; Rec.Good)
                {
                    Caption = 'Good';
                }

                field(Normal; Rec.Normal)
                {
                    Caption = 'Normal';
                }

                field(Bad; Rec.Bad)
                {
                    Caption = 'Bad';
                }
            }
        }
    }
}