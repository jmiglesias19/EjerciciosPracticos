page 50100 CustomerTypeList
{
    Caption = 'Customer Type List';
    PageType = List;
    ApplicationArea = All;
    UsageCategory = Administration;
    SourceTable = CustomerType;

    layout
    {
        area(Content)
        {
            repeater(Ejercicio3)
            {
                Caption = 'Ejercicio 3';
                field(CustomerType; Rec.CustomerType)
                {
                    Caption = 'Customer Type';
                }
                field(CustomerDescription; Rec.CustomerDescription)
                {
                    Caption = 'Description';
                }
            }
        }

    }
}