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
      last_changed_at,
      local_last_changed_at
}
