page 50103 VendorEvaluationsArchived
{
    Caption = 'Vendor Evaluations Archived';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = VendorEvaluationHeader;
    SourceTableView = where(Archived = const(true));

    Editable = false;
    ModifyAllowed = false;
    DeleteAllowed = false;
    InsertAllowed = false;
    layout
    {
        area(Content)
        {
            repeater(Archived)
            {
                Caption = 'Vendor Evaluation Archived';
                field(EvaluationNumber; Rec.EvaluationNo)
                {

                }

                field(EvaluationDate; Rec.EvaluationDate)
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

                field(Result; Rec.Result)
                {

                }

                field(Responsible; Rec.Responsible)
                {

                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action(Unarchive)
            {
                ApplicationArea = All;
                Caption = 'Unarchive';
                Image = Undo;
                ToolTip = 'Button used to unarchive an evaluation.';

                trigger OnAction()
                var
                    VEAList: Page VendorEvaluationList;
                    OpenEvaluationListMsg: Label 'Evaluation %1 has been un-archived. Do you want to open the main evaluation list?', Comment = 'Confirmation to open evaluations list where evaluation %1 has been un-archived.';
                begin
                    if not Rec.Archived then begin
                        Message('This document is not archived.');
                        exit;
                    end;

                    Rec.Validate(Archived, false);
                    Rec.Validate(ArchiveDate, 0D);
                    Rec.Modify(true);

                    if Confirm(OpenEvaluationListMsg, true, Rec."EvaluationNo") then
                        VEAList.Run();

                    CurrPage.Close();
                end;
            }
        }
    }
}