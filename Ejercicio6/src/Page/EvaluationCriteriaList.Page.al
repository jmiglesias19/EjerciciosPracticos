page 50104 EvaluationCriteriaList
{
    Caption = 'Evaluation Criteria List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Lists;
    SourceTable = EvaluationCriteria;

    layout
    {
        area(Content)
        {
            repeater(EvalutionCriteria)
            {
                Caption = 'Evaluation Criteria List';
                field(CriteriaCode; Rec.CriteriaCode)
                {

                }

                field(CriteriaDescription; Rec.CriteriaDescription)
                {

                }
            }
        }
    }
}