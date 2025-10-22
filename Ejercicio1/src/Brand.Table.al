table 50101 "Brand"
{
    Caption = 'Brand';
    DataClassification = ToBeClassified;
    LookupPageId = "Brand List";
    DrillDownPageId = "Brand Card";

    fields
    {
        field(1; Code; Code[10])
        {
            AllowInCustomizations = Never;
            Caption = 'Code';
            NotBlank = true;
            ToolTip = 'Specifies the code of the brand.';
        }

        field(2; Description; Text[100])
        {
            AllowInCustomizations = Never;
            Caption = 'Description';
            ToolTip = 'Specifies the description of the brand.';
        }

        field(3; "Brand Products"; Integer) //se muestra en numero de productos que tienen esta marca. si no hay, poner "-".
        {
            AllowInCustomizations = Never;
            Caption = 'Brand Products';
            Editable = false;
            ToolTip = 'Specifies the number of products which use this brand.';
            FieldClass = FlowField;
            CalcFormula = count(Item where(Flavour = field(Code)));
        }

        field(4; Blocked; Boolean)
        {
            AllowInCustomizations = Never;
            Caption = 'Blocked';
            ToolTip = 'Specifies if the brand is blocked.';

            trigger OnValidate()
            var
                ExpirationDate: Date;
            begin
                ExpirationDate := CalcDate('<CM>', Today()); //la funcion coge el dia de hoy (22/10/25) y teniendo en cuenta el dia de hoy, con <CM>, coge el mes actual y pone el ultimo dia(31/10/25)
                if Rec.Blocked = true then
                    Rec."Blockage Expiration" := ExpirationDate
                else
                    Rec."Blockage Expiration" := 0D;
            end;
        }

        field(5; "Blockage Expiration"; Date) //si la marca esta bloqueada, en este campo se pondra la fecha del ultimo dia del mes en el mes que se marco
                                              //ej: se marca el 21/10/25 --> se pondra 31/10/25
        {
            AllowInCustomizations = Never;
            Caption = 'Blockage Expiration';
            ToolTip = 'Specifies the blockage expiration date.';
            Editable = false;
        }
    }

    keys
    {
        key(Key1; Code)
        {
            Clustered = true;
        }
    }

    fieldgroups
    {
        fieldgroup(DropDown; Code)
        {
        }

        fieldgroup(Brick; Code)
        {
        }
    }

    trigger OnInsert()
    begin

    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}