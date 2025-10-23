tableextension 50100 "Vendor Table Extension" extends Vendor
{
    fields
    {

        field(50102; "Vendor Type Code"; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Vendor Type Code';
            /// info cambiar los tooltip a partir de aqui
            ToolTip = 'Specifies the code.';
            TableRelation = "Vendor Master Table".Code where("Type" = const(Vendor)); //se pone el filtro de que solo se muestren los tipo "Vendor" en el propio TableRelation
        }

        field(50103; "Vendor Type Text"; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Vendor Type Text';
            ToolTip = 'Specifies the code.';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Vendor Master Table".Description where(Code = field("Vendor Type Code")));
        }

        field(50104; SectorCode; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'SectorCode';
            ToolTip = 'Specifies the code.';
            TableRelation = "Vendor Master Table".Code where("Type" = const(Sector));
            // Enabled = false;
        }

        field(50105; SectorText; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Sector';
            ToolTip = 'Specifies the code.';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Vendor Master Table".Description where(Code = field("SectorCode")));
        }

        field(50106; ActivityCode; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'ActivityCode';
            ToolTip = 'Specifies the code.';
            TableRelation = "Vendor Master Table".Code where("Type" = const(Activity));
            // Enabled = false;
        }

        field(50107; ActivityText; Text[100])
        {
            AllowInCustomizations = Always;
            Caption = 'Activity';
            ToolTip = 'Specifies the code.';
            FieldClass = FlowField;
            Editable = false;
            CalcFormula = lookup("Vendor Master Table".Description where(Code = field("ActivityCode")));
        }

        field(50108; "Chain of custody subject"; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Chain of custody subject';
            ToolTip = 'Specifies the code.';
        }

        field(50109; Certification; Enum Certification)
        {
            AllowInCustomizations = Always;
            Caption = 'Certification';
            ToolTip = 'Specifies the code.';
        }

        field(50110; Approved; Boolean)
        {
            AllowInCustomizations = Always;
            Caption = 'Approved';
            ToolTip = 'Specifies the code.';
        }
    }

    keys
    {
        key(MyKey; "Name 2")
        {
        }
    }

    fieldgroups
    {
        // Add changes to field groups here
    }


}