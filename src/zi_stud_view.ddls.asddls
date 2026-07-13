@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'Student data view'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_stud_view
//  with parameters
//    im_RollNo : zrollno
  as select from zstud_tab
//  association [1..*] to zi_fees_view as _fees on $projection.Rollno = _fees.Rollno
composition of exact one to many zi_fees_view as _fees 

{
  key rollno                                                               as Rollno,
      // fullname of student
      //    @Consumption.hidden: true
      //    concat_with_space( name , fname, 1 ) as FullName,
      //    concat_with_space( $projection.FullName, surname, 1 ) as NAMe1,
      concat_with_space( concat_with_space( name, fname, 1 ), surname, 1 ) as FullName,
      name                                                                 as Name,
      surname                                                              as Surname,
      fname                                                                as Fname,
      standard                                                             as Standard,
      division                                                             as Division,
      adrc                                                                 as Adrc,
      depart                                                               as Depart,
      _fees
}
//where rollno = $parameters.im_RollNo
