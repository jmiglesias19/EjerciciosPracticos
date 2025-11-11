page 50100 VendorEvaluationCardDocument
{
    Caption = 'Vendor Evaluation Card';
    PageType = Document;
    ApplicationArea = All;
    UsageCategory = Documents;
    SourceTable = VendorEvaluationHeader;
    SourceTableView = where(Archived = const(false));

    layout
    {
        area(Content)
        {
            group(Header)
            {
                Caption = 'Vendor Evaluation Header';
                field("EvaluationNo"; Rec."EvaluationNo")
                {
                    ShowMandatory = true;
                }

                field(EvaluationDate; Rec."EvaluationDate")
                {

                }

                // field(ArchiveDate; Rec.ArchiveDate)
                // {

                // }

                field(Blocked; Rec.Blocked)
                {

                }

                field(VendorNo; Rec.VendorNo)
                {
                    ShowMandatory = true;
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
                SubPageLink = EvaluationNumber = field(EvaluationNo);
            }

        }
    }

    actions
    {
        area(Processing)
        {
            action(Archive)
            {
                ApplicationArea = All;
                Caption = 'Archive';
                Image = Archive;
                ToolTip = 'Button used to archive an evaluation.';

                trigger OnAction()
                var
                    VEARec: Page VendorEvaluationsArchived;
                    OpenArchivedListMsg: Label 'Evaluation %1 has been archived. Do you want to open the archived evaluations list?', Comment = 'Confirmation to open archived evaluations list where evaluation %1 has been archived.';
                begin
                    if Rec.Archived then begin
                        Message('This document is already archived.');
                        exit;
                    end;

                    Rec.Validate(Archived, true);
                    Rec.Validate(ArchiveDate, Today());
                    Rec.Modify(true);

                    if Confirm(OpenArchivedListMsg, true, Rec."EvaluationNo") then
                        VEARec.Run();

                    CurrPage.Close();
                end;
            }
        }
    }

}