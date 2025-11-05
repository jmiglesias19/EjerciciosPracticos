tableextension 50101 ItemTableExt extends Item
{
    fields
    {
        field(50100; Subfamily; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Subfamily';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the subfamily of the item.';
            TableRelation = "Item Category".Code where(Classification = const(ClassificationEnum::Subfamily));
        }

        field(50101; Width; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Width';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the width of the item.';

            trigger OnValidate()
            begin
                SurfaceCalc();
            end;

        }

        field(50102; Length; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Length';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the length of the item.';

            trigger OnValidate()
            begin
                SurfaceCalc();
            end;
        }

        field(50116; Thickness; Integer)
        {
            AllowInCustomizations = Always;
            Caption = 'Thickness';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the thickness of the item.';
        }

        field(50103; Surface; Decimal)
        {
            AllowInCustomizations = Always;
            Caption = 'Surface';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the surface area of the item.';
        }

        field(50104; Density; Decimal)
        {
            AllowInCustomizations = Always;
            Caption = 'Density';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the density of the item.';
        }

        field(50105; PlaneNumber; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Plane Number';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the plane number of the item.';
        }

        field(50106; CustodyChain; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Custody Chain';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies whether the item has a custody chain.';
        }

        field(50107; Quality; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Quality';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the quality of the item.';
            TableRelation = Qualities;
        }

        field(50108; InDeposit; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'In Deposit';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies whether the item is in deposit.';
        }

        field(50109; Veta; Enum VetaEnum)
        {
            AllowInCustomizations = Always;
            Caption = 'Veta';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the veta type of the item.';
        }

        field(50110; IdArdis; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Id Ardis';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the Ardis ID of the item.';
        }

        field(50111; ArdisCategory; Text[255])
        {
            AllowInCustomizations = Always;
            Caption = 'Ardis Category';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the Ardis category of the item.';
        }

        field(50112; Beta; Enum BetaEnum)
        {
            AllowInCustomizations = Always;
            Caption = 'Beta';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the beta type of the item.';
        }

        field(50113; TextureRoute; Text[255])
        {
            AllowInCustomizations = Always;
            Caption = 'Texture Route';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the texture route of the item.';
        }


        field(50115; MargenPercentage; Decimal)
        {
            AllowInCustomizations = Always;
            Caption = '% Margen';
            DataClassification = ToBeClassified;
            ToolTip = 'Specifies the margin percentage of the item.';
        }

        // modify("Item Category Code")
        // {
        //     TableRelation = "Item Category" where(Classification = const(ClassificationEnum::Family));
        // }


    }



    local procedure SurfaceCalc()
    begin
        if (Rec.Width = 0) or (Rec.Length = 0) then
            Rec.Surface := 1;
        Rec.Surface := (Rec.Width * Rec.Length) / 1000000;
    end;

}