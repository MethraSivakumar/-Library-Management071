@Metadata.allowExtensions: true
@Metadata.ignorePropagatedAnnotations: true
@Endusertext: {
  Label: '###GENERATED Core Data Service Entity'
}
@Objectmodel: {
  Sapobjectnodetype.Name: 'ZCIT_DB_071001'
}
@AccessControl.authorizationCheck: #MANDATORY
define root view entity ZC_CIT_DB_071001
  provider contract TRANSACTIONAL_QUERY
  as projection on ZR_CIT_DB_071001
  association [1..1] to ZR_CIT_DB_071001 as _BaseEntity on $projection.BOOKID = _BaseEntity.BOOKID
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
  Draftentitycreationdatetime,
  Draftentitylastchangedatetime,
  Draftadministrativedatauuid,
  Draftentityoperationcode,
  Hasactiveentity,
  Draftfieldchanges,
  _BaseEntity
}
