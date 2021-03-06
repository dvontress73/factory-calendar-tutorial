@EndUserText.label: 'Projection view for public holidays'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define root view entity ZCAL_C_HOLIDAY_DVT
  provider contract transactional_query
  as projection on ZCAL_I_HOLIDAY_DVT
{
  key HolidayId,
      MonthOfHoliday,
      DayOfHoliday,
      _HolidayTxt.HolidayDescription as HolidayDescription : localized,
      last_changed_at,
      local_last_changed_at,
      _HolidayTxt : redirected to composition child ZCAL_C_HOLIDAYTXT_DVT
}
