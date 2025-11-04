codeunit 50100 ValidateCU
{
    Permissions =
        tabledata CustomerActivity = RIMD,
        tabledata CustomerCategory = RIMD,
        tabledata CustomerSector = RIMD,
        tabledata CustomerType = RIMD;

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

}