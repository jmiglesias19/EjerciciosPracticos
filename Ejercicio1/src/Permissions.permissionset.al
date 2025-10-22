namespace Permissions;
using Microsoft.RoleCenters;
using System.Automation;

permissionset 50100 Permissions
{
    Assignable = true;
    Caption = 'Permissions', MaxLength = 30;
    Permissions = tabledata Brand = RIMD,
        tabledata Flavour = RIMD,
        tabledata "Activities Cue" = RIMD,
        table Brand = X,
        table Flavour = X,
        table "Activities Cue" = X,
        page "Brand Card" = X,
        page "Brand List" = X,
        page "Flavour Card" = X,
        page "Flavour List" = X;
}