@AbapCatalog.sqlViewName: 'YIAIRLINEHSKA08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Data definition for carrier'
define view YI_AIRLINE_HSKA08 as select from /dmo/carrier {
    key carrier_id as AirlineId,
    name as AirlineName,
    @Semantics.currencyCode:true
    currency_code as AirlineLocalCurrency
}
