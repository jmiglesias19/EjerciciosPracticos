pageextension 50100 CustCardPageExt extends "Customer Card"
{
    layout
    {
        addafter(Name)
        {
            field("Name2"; Rec."Name 2")
            {
                ApplicationArea = All;
                Caption = 'Name 2';
                // Visible = true;
            }

        }

        addfirst(General)
        {
            group(Ejercicio3)
            {
                Caption = 'Ejercicio 3';
                field("CustomerType"; Rec."CustomerType")
                {
                    ApplicationArea = All;
                    Caption = 'Customer Type';
                    Visible = true;
                }
                field("CustomerDescription"; Rec.CustomerTypeDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Customer Description';
                    Visible = true;
                    Editable = false;
                }
                field("Sector"; Rec."Sector")
                {
                    ApplicationArea = All;
                    Caption = 'Sector';
                    Visible = true;
                }
                field("SectorDescription"; Rec.SectorDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Sector Description';
                    Visible = true;
                    Editable = false;
                }
                field("Activity"; Rec."Activity")
                {
                    ApplicationArea = All;
                    Caption = 'Activity';
                    Visible = true;
                }
                field("ActivityDescription"; Rec.ActivityDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Activity Description';
                    Visible = true;
                    Editable = false;
                }
                field("Category"; Rec."Category")
                {
                    ApplicationArea = All;
                    Caption = 'Category';
                    Visible = true;
                }
                field("CategoryDescription"; Rec.CategoryDescription)
                {
                    ApplicationArea = All;
                    Caption = 'Category Description';
                    Visible = true;
                    Editable = false;
                }

                field("RiskGrantedMUSA"; Rec.RiskGrantedMUSA)
                {
                    ApplicationArea = All;
                    Caption = 'Risk Granted MUSA';
                    Visible = true;
                    StyleExpr = Color;

                    trigger OnValidate()
                    begin
                        RiskColor();
                    end;
                }
            }
        }
    }
    var
        Color: Text;

    trigger OnAfterGetCurrRecord()
    begin
        RiskColor()
    end;

    local procedure RiskColor()
    begin
        if (Rec.RiskGrantedMUSA >= 0) and (Rec.RiskGrantedMUSA <= 4) then
            Color := Format(PageStyle::Favorable)
        else
            if (Rec.RiskGrantedMUSA > 4) and (Rec.RiskGrantedMUSA <= 7) then
                Color := Format(PageStyle::Ambiguous)
            else
                if (Rec.RiskGrantedMUSA > 7) and (Rec.RiskGrantedMUSA <= 10) then
                    Color := Format(PageStyle::Unfavorable);

    end;
}