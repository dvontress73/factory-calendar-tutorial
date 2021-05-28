@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Public Holiday Text'
@ObjectModel.dataCategory: #TEXT
define view entity ZCAL_I_HOLIDAYTXT_DVT
  as select from zcal_holitxt_dvt
  association to parent ZCAL_I_HOLIDAY_DVT as _Public_Holiday on $projection.HolidayId = _Public_Holiday.HolidayId
  association[0..*] to I_LanguageText as _LanguageText on $projection.Language = _LanguageText.LanguageCode
{
      @Semantics.language: true
  key spras            as Language,
  key holiday_id       as HolidayId,
      @Semantics.text: true
      fcal_description as HolidayDescription,
      _Public_Holiday
}
