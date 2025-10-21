namespace Permissions;

permissionset 50100 Permissions
{
    Assignable = true;
    Caption = 'Permissions', MaxLength = 30;
    Permissions = tabledata Brand = RIMD,
        tabledata Flavour = RIMD,
        table Brand = X,
        table Flavour = X,
        page "Brand Card" = X,
        page "Brand List" = X,
        page "Flavour Card" = X,
        page "Flavour List" = X;
}