tableextension 50101 "Sales Cue Table Ext" extends "Sales Cue"
{
    fields
    {
        field(50100; "Blocked Brands";
        Integer)
        {
            AllowInCustomizations = Never;
            Caption = 'Blocked Brands';
            Editable = false;

            FieldClass = FlowField;
            CalcFormula = count(Brand where(Blocked = const(true)));
            ToolTip = 'Specifies the number of blocked brands.';
        }
    }

}