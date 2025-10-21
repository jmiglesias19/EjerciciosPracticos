pageextension 50100 "Item Card Page Ext" extends "Item Card"
{
    layout
    {
        addafter(VariantMandatoryDefaultNo)
        {
            field(Brand; Rec.Brand)
            {
                ApplicationArea = All;
            }

            field("Brand Description"; Rec."Brand Description")
            {
                ApplicationArea = All;
            }

            field("Flavour"; Rec.Flavour)
            {
                ApplicationArea = All;
            }

            field("Flavour Description"; Rec."Flavour Description")
            {
                ApplicationArea = All;
            }

            field("Nutriscore"; Rec.Nutriscore)
            {
                ApplicationArea = All;
            }

        }
    }

    actions
    {
        addlast(navigation)
        {
            action("Open Brand")
            {
                ApplicationArea = All;
                Caption = 'Open Brand';
                Image = Open;
                ToolTip = 'Pressing this button will open the brand page.';

                trigger OnAction()
                var
                    BrandPage: Page "Brand Card";
                begin
                    BrandPage.Run();
                end;
            }

            action("Open Flavour")
            {
                ApplicationArea = All;
                Caption = 'Open Flavour';
                Image = Open;
                ToolTip = 'Pressing this button will open the flavour page.';

                trigger OnAction()
                var
                    FlavourPage: Page "Flavour Card";
                begin
                    FlavourPage.Run();
                end;
            }
        }
    }

}