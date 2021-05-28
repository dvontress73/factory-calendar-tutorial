@EndUserText.label: 'Projection view for public holiday text'
@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
define view entity ZCAL_C_HOLIDAYTXT_DVT
  as projection on ZCAL_I_HOLIDAYTXT_DVT
{
  @Consumption.valueHelpDefinition: [ {entity: {name: 'I_Language', element: 'Language' } }]
 //@ObjectModel.text.element: ['LanguageDescription']
  key Language,
  key HolidayId,
      HolidayDescription,
      _Public_Holiday : redirected to parent ZCAL_C_HOLIDAY_DVT
}
