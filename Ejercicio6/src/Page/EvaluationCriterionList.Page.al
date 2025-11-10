page 50102 EvaluationCriterionList
{
    Caption = 'Evaluation Criterion List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = EvaluationCriterion;

    layout
    {
        area(Content)
        {
            repeater(EvaluationCriterion)
            {
                Caption = 'Evaluation Criterion';
                field(CriterionCode; Rec.CriterionCode)
                {

                }
                field(CriterionDescription; Rec.CriterionDescription)
                {

                }
            }
        }
    }

}