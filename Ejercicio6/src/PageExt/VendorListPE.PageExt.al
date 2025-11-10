pageextension 50100 VendorListPE extends "Vendor List"
{

    actions
    {
        addfirst("Ven&dor")
        {
            action(Evalutaion)
            {
                ApplicationArea = All;
                Caption = 'Evaluation List';
                Image = Evaluate;
                ToolTip = 'Open the evaluation list page.';
                Promoted = true;
                PromotedCategory = Category5;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    VELRec: Page VendorEvaluationList;
                begin
                    VELRec.Run();
                end;
            }
        }
    }

}