@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student department view'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_dpart_view as select from zstud_dpart
{
    key dpartid as Dpartid,
    name as Name,
    hod as Head_of_department
}
