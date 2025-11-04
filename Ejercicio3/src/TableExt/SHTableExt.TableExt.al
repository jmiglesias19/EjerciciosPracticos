tableextension 50101 SHTableExt extends "Sales Header"
{
    fields
    {
        field(50110; SalesZone; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Sales Zone';
            TableRelation = Territory;
            ToolTip = 'Specifies the sales zone of the customer.';
        }

        field(50111; Route; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Route';
            TableRelation = Route;
            ToolTip = 'Specifies the delivery route for the customer.';
        }

        field(50112; TransportAgency; Code[20])
        {
            AllowInCustomizations = Always;
            Caption = 'Transport Agency';
            TableRelation = "Shipping Agent";
            ToolTip = 'Specifies the transport agency for the customer.';
        }
    }
}