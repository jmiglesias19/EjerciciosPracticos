pageextension 50100 "Item Card Page Ext" extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            group("Chronus Customization")
            {
                Caption = 'Chronus Customization';
                field(Brand; Rec.Brand)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        BrandRecord: Record "Brand";
                    begin
                        if Rec.Brand = '' then
                            Rec."Brand Description" := '';

                        if BrandRecord.Get(Rec.Brand) then
                            Rec."Brand Description" := BrandRecord.Description;
                    end;
                }

                field("Brand Description"; Rec."Brand Description")
                {
                    ApplicationArea = All;
                    Enabled = false;
                }

                field("Flavour"; Rec.Flavour)
                {
                    ApplicationArea = All;

                    trigger OnValidate()
                    var
                        FlavourRecord: Record "Flavour";
                    begin
                        if Rec.Flavour = '' then
                            Rec."Flavour Description" := '';

                        if FlavourRecord.Get(Rec.Flavour) then
                            Rec."Flavour Description" := FlavourRecord.Description;
                    end;
                }

                field("Flavour Description"; Rec."Flavour Description")
                {
                    ApplicationArea = All;
                    Enabled = false;
                }

                field("Nutriscore"; Rec.Nutriscore)
                {
                    ApplicationArea = All;
                }
            }

        }
    }

    actions
    {

        addafter(Functions)
        {
            action("Open Brand")
            {
                ApplicationArea = All;
                Caption = 'Open Brand';
                Image = Open;
                ToolTip = 'Pressing this button will open the brand page.';
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    BrandPage: Page "Brand List"; //o Brand Card
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
                Promoted = true;
                PromotedIsBig = true;
                PromotedCategory = Process;

                trigger OnAction()
                var
                    FlavourPage: Page "Flavour List"; //o Flavour Card
                begin
                    FlavourPage.Run();
                end;
            }
        }

    }

}