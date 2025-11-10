page 50100 VendorEvaluationCardDocument
{
    Caption = 'Vendor Evaluation Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = VendorEvaluationHeader;

    layout
    {
        area(Content)
        {
            group(Header)
            {
                Caption = 'Vendor Evaluation Header';
                field("EvaluationNo"; Rec."EvaluationNo")
                {

                }

                field(EvaluationDate; Rec."EvaluationDate")
                {

                }

                field(ArchiveDate; Rec.ArchiveDate)
                {

                }

                field(Blocked; Rec.Blocked)
                {

                }

                field(VendorNo; Rec.VendorNo)
                {

                }

                field(VendorName; Rec.VendorName)
                {

                }

                field(OtherAspects; Rec.OtherAspects)
                {
                    MultiLine = true;
                }

                field(Result; Rec.Result)
                {

                }

                field(Responsible; Rec.Responsible)
                {

                }
            }

            part(VendorEvaluationListSubform; VendorEvaluationListSubform)
            {
                SubPageLink = CriterionCode = field(EvaluationNo);
            }

        }
    }
}