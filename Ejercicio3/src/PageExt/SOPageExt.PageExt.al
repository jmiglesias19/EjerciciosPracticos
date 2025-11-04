pageextension 50101 SOPageExt extends "Sales Order"
{
    layout
    {
        addafter("Sell-to Customer Name")
        {
            field(SalesZone; Rec.SalesZone)
            {
                ApplicationArea = All;
                Caption = 'Sales Zone';
            }

            field(Route; Rec.Route)
            {
                ApplicationArea = All;
                Caption = 'Route';
            }

            field(TransportAgency; Rec.TransportAgency)
            {
                ApplicationArea = All;
                Caption = 'Transport Agency';
            }
        }
    }



}