codeunit 50100 ValidateCU
{
    Permissions =
        tabledata CustomerActivity = RIMD,
        tabledata CustomerCategory = RIMD,
        tabledata CustomerSector = RIMD,
        tabledata CustomerType = RIMD,
        tabledata Customer = RIMD;

    // Esta función valida el Tipo de Cliente
    procedure ValidateCustomerType(var Cust: Record Customer)
    var
        CTRecord: Record "CustomerType";
    begin
        if Cust."CustomerType" = '' then
            Cust."CustomerTypeDescription" := ''
        else
            if CTRecord.Get(Cust."CustomerType") then
                // Esta línea estaba bien, porque tu tabla "CustomerType"
                // SÍ tiene un campo "CustomerDescription"
                Cust."CustomerTypeDescription" := CTRecord.CustomerDescription
            else
                Cust."CustomerTypeDescription" := '';
    end;

    // Esta función valida el Sector
    procedure ValidateSector(var Cust: Record Customer)
    var
        SectorRecord: Record CustomerSector;
    begin
        if Cust."Sector" = '' then
            Cust.SectorDescription := ''
        else
            if SectorRecord.Get(Cust."Sector") then
                Cust.SectorDescription := SectorRecord.SectorDescription
            else
                Cust.SectorDescription := '';
    end;

    // Esta función valida la Actividad
    procedure ValidateActivity(var Cust: Record Customer)
    var
        ActivityRecord: Record CustomerActivity;
    begin
        if Cust."Activity" = '' then
            Cust.ActivityDescription := ''
        else
            if ActivityRecord.Get(Cust."Activity") then
                // ERROR CORREGIDO:
                // El campo en la tabla "CustomerActivity"
                // probablemente se llama "Description".
                Cust.ActivityDescription := ActivityRecord.ActivityDescription
            else
                Cust.ActivityDescription := '';
    end;

    // Esta función valida la Categoría
    procedure ValidateCategory(var Cust: Record Customer)
    var
        CategoryRecord: Record CustomerCategory;
    begin
        if Cust."Category" = '' then
            Cust.CategoryDescription := ''
        else
            if CategoryRecord.Get(Cust."Category") then
                // ERROR CORREGIDO:
                // El campo en la tabla "CustomerCategory"
                // probablemente se llama "Description".
                Cust.CategoryDescription := CategoryRecord.CategoryDescription
            else
                Cust.CategoryDescription := '';
    end;

    // Esto es lo que "engancha" la codeunit al evento.
    // Es el sustituto del "modify".
    [EventSubscriber(ObjectType::Table, Database::"Sales Header", "OnAfterValidateEvent", "Sell-to Customer No.", false, false)]
    local procedure TransferCustomFieldsFromCustomer(var Rec: Record "Sales Header"; var xRec: Record "Sales Header")
    var
        Cust: Record Customer;
    begin
        if (Rec."Sell-to Customer No." <> xRec."Sell-to Customer No.") and (Rec."Sell-to Customer No." <> '') then begin
            if Cust.Get(Rec."Sell-to Customer No.") then begin
                Rec.Validate("SalesZone", Cust."SalesZone");
                Rec.Validate("Route", Cust."Route");
                Rec.Validate("TransportAgency", Cust."TransportAgency");
            end;
        end else
            if (Rec."Sell-to Customer No." = '') then begin
                Rec.Validate("SalesZone", '');
                Rec.Validate("Route", '');
                Rec.Validate("TransportAgency", '');
            end;
    end;

}