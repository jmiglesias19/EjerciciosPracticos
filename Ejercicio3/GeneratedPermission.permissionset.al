namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permission Set', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata CustomerActivity = RIMD,
        tabledata CustomerCategory = RIMD,
        tabledata CustomerSector = RIMD,
        tabledata CustomerType = RIMD,
        tabledata Route = RIMD,
        table CustomerActivity = X,
        table CustomerCategory = X,
        table CustomerSector = X,
        table CustomerType = X,
        table Route = X,
        page ActivityList = X,
        page CategoryList = X,
        page CustomerTypeList = X,
        page SectorList = X,
        page RouteList = X,
        codeunit ValidateCU = X;
}