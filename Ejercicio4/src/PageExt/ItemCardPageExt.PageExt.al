pageextension 50101 ItemCardPageExt extends "Item Card"
{
    layout
    {
        addlast(Item)
        {
            group(Ejercicio4General)
            {
                Caption = 'Ejercicio 4';

                field(Subfamily; Rec.Subfamily)
                {
                    Caption = 'Subfamily';
                    ApplicationArea = All;
                }

                field(CustodyChain; Rec.CustodyChain)
                {
                    Caption = 'Custody Chain';
                    ApplicationArea = All;

                    trigger OnValidate()
                    begin
                        QualityEditable := Rec.CustodyChain;
                        if not Rec.CustodyChain then
                            Rec.Quality := '';
                    end;
                }

                field(Quality; Rec.Quality)
                {
                    Caption = 'Quality';
                    ApplicationArea = All;
                    Editable = QualityEditable;
                    ShowMandatory = true;
                }

                field(InDeposit; Rec.InDeposit)
                {
                    Caption = 'In Deposit';
                    ApplicationArea = All;
                }

                field(Veta; Rec.Veta)
                {
                    Caption = 'Veta';
                    ApplicationArea = All;
                }

                field(IdArdis; Rec.IdArdis)
                {
                    Caption = 'Ardis ID';
                    ApplicationArea = All;
                }

                field(ArdisCategory; Rec.ArdisCategory)
                {
                    Caption = 'Ardis Category';
                    ApplicationArea = All;
                }

                field(Beta; Rec.Beta)
                {
                    Caption = 'Beta';
                    ApplicationArea = All;
                }

                field(TextureRoute; Rec.TextureRoute)
                {
                    Caption = 'Texture Route';
                    ApplicationArea = All;
                }
            }
        }

        addlast(InventoryGrp)
        {
            group(Ejercicio4Inventory)
            {
                Caption = 'Ejercicio 4';

                field(Width; Rec.Width)
                {
                    Caption = 'Width';
                    ApplicationArea = All;
                }

                field(Length; Rec.Length)
                {
                    Caption = 'Length';
                    ApplicationArea = All;
                }

                field(Thickness; Rec.Thickness)
                {
                    Caption = 'Thickness';
                    ApplicationArea = All;
                }

                field(Surface; Rec.Surface)
                {
                    Caption = 'Surface';
                    ApplicationArea = All;
                }

                field(Density; Rec.Density)
                {
                    Caption = 'Density';
                    ApplicationArea = All;
                }

                field(Volume; Rec."Unit Volume")
                {
                    Caption = 'Volume';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the unit volume of the item.';
                }

                field(PlaneNumber; Rec.PlaneNumber)
                {
                    Caption = 'Plane Number';
                    ApplicationArea = All;
                }
            }
        }

        addlast("Costs & Posting")
        {
            group(Ejercicio4CostsAndPosting)
            {
                Caption = 'Ejercicio 4';

                field(LastPurchasePrice; Rec."Last Direct Cost")
                {
                    Caption = 'Last Purchase Price';
                    ApplicationArea = All;
                    ToolTip = 'Specifies the last purchase price.';
                }

                field(MargenPercentage; Rec.MargenPercentage)
                {
                    Caption = '% Margen';
                    ApplicationArea = All;
                }
            }

        }

        modify("Item Category Code")
        {
            trigger OnAssistEdit()
            var
                ItemCategory: Record "Item Category";
            begin
                // Filtrar solo las categorías con Classification = Family
                ItemCategory.SetRange(Classification, ItemCategory.Classification::Family);

                // Abrir la página lista modal con el filtro
                if PAGE.RunModal(Page::"Item Categories", ItemCategory) = ACTION::LookupOK then
                    Rec.Validate("Item Category Code", ItemCategory.Code);
            end;

        }


    }

    trigger OnQueryClosePage(CloseAction: Action): Boolean
    begin
        if Rec.CustodyChain and (Rec.Quality = '') then
            Error(QualityErr);
    end;

    var
        QualityEditable: Boolean;
        QualityErr: Label 'Quality must be filled when Custody Chain is enabled.';
}