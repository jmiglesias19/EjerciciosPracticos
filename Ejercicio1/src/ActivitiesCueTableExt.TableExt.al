tableextension 50101 "Activities Cue Table Ext" extends "Sales Cue"
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
        }
    }

}