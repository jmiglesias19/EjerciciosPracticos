page 50100 QualitiesPage
{
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = Qualities;
    Caption = 'Qualities';

    layout
    {
        area(Content)
        {
            repeater(QualitiesGroup)
            {
                Caption = 'Qualities';
                field(QualityCode; Rec.QualityCode)
                {
                    Caption = 'Quality Code';
                }

                field(QualityDescription; Rec.QualityDescription)
                {
                    Caption = 'Quality Description';
                }

                field(Input; Rec.Input)
                {
                    Caption = 'Input';
                }
            }
        }
    }

}