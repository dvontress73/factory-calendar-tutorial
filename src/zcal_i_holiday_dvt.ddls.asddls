@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: '<span class="sapedia-acronym" data-template="sapediaAdCDS" aria-expanded="false">CDS</span> View for public holidays'
define root view entity ZCAL_I_HOLIDAY_DVT
  as select from zcal_holiday_dvt
  composition [0..*] of ZCAL_I_HOLIDAYTXT_DVT as _HolidayTxt
{
  key holiday_id       as HolidayId,
      @Semantics.calendar.month: true
      month_of_holiday as MonthOfHoliday,
      @Semantics.calendar.dayOfMonth: true
      day_of_holiday   as DayOfHoliday,
      @Semantics.systemDateTime.lastChangedAt: true
      last_changed_at,
      @Semantics.systemDateTime.localInstanceLastChangedAt: true
      local_last_changed_at,
      _HolidayTxt
}
