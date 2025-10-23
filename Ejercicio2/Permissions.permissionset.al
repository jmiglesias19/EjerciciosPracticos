namespace Permissions;

permissionset 50100 Permissions
{
    Assignable = true;
    Caption = 'Permissions', MaxLength = 30;
    Permissions = tabledata "Vendor Master Table" = RIMD,
        table "Vendor Master Table" = X,
        page "Vendor Master Table Page" = X;
}