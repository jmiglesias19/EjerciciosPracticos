namespace Permissions;

permissionset 50100 GeneratedPermission
{
    Caption = 'Generated Permission Set', MaxLength = 30;
    Assignable = true;
    Permissions = tabledata CustomerActivity = RIMD,
        tabledata CustomerCategory = RIMD,
        tabledata CustomerSector = RIMD,
        tabledata CustomerType = RIMD,
        table CustomerActivity = X,
        table CustomerCategory = X,
        table CustomerSector = X,
        table CustomerType = X,
        page CustomerTypeList = X;
}