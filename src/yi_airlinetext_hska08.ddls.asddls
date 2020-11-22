@AbapCatalog.sqlViewName: 'YIAIRLINETHSKA08'
@AbapCatalog.compiler.compareFilter: true
@AbapCatalog.preserveKey: true
@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Text View for Airline'
define view YI_AIRLINETEXT_HSKA08 as select from /dmo/carrier {
    key carrier_id as AirlineID,
    @Semantics.text:true
    @EndUserText.label: 'Käse! Name der Fluggesellschaft'
    name as AirlineName
}
