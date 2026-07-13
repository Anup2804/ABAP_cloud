@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'student fees detail'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_fees_view as select from zstud_fees
association to parent zi_stud_view as _student on $projection.Rollno = _student.Rollno 
{
    key id as Id,
    key yrs as Yrs,
    key rollno as Rollno,
    @Semantics.amount.currencyCode: 'currency'
    fterm as First_Term_Fees,
    @Semantics.amount.currencyCode: 'currency'
    sterm as Second_Term_Fees,
    @Semantics.amount.currencyCode: 'currency'
    actfees as Activity_Fees,
    currency as Currency,
    _student
}
