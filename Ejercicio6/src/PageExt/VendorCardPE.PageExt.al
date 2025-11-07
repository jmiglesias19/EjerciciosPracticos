pageextension 50100 VendorCardPE extends "Vendor Card"
{
    layout
    {
        // Add changes to page layout here
    }

    actions
    {
        addfirst("Ven&dor")
        {
            action(Evalutaion)
            {
                ApplicationArea = All;
                Caption = 'Evaluations';
                Image = Evaluate;
                ToolTip = 'Open the Evaluations page.';
                Promoted = true;
                PromotedCategory = Category9;
                PromotedIsBig = true;
                trigger OnAction()
                var
                    VELRec: Page VendorEvaluationCard;
                begin
                    VELRec.Run();
                end;
            }
        }
    }

}