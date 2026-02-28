@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZZCICIT_DB_071071'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZZCIC_CIT_DB_071071
  provider contract TRANSACTIONAL_QUERY
  as projection on ZZCIR_CIT_DB_071071
  association [1..1] to ZZCIR_CIT_DB_071071 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
{
  key Bookid,
  Title,
  Author,
  Category,
  Rackno,
  Publishedyear,
  Issuedate,
  Language,
  Price,
  @Semantics: {
    User.Createdby: true
  }
  Localcreatedby,
  @Semantics: {
    Systemdatetime.Createdat: true
  }
  Localcreatedat,
  @Semantics: {
    User.Localinstancelastchangedby: true
  }
  Locallastchangedby,
  @Semantics: {
    Systemdatetime.Localinstancelastchangedat: true
  }
  Locallastchangedat,
  @Semantics: {
    Systemdatetime.Lastchangedat: true
  }
  Lastchangedat,
  _BaseEntity
}
