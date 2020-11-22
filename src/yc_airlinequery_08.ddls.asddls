@AbapCatalog.sqlViewName: 'YCAIRLINEQHSKA08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Airline-Query'
define view YC_AIRLINEQUERY_08 as select from YI_AIRLINE_HSKA08 {
    key AirlineId,
    AirlineName,
    AirlineLocalCurrency
}
