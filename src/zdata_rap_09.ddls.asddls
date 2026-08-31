@AccessControl.authorizationCheck: #CHECK
@EndUserText.label: 'Root View for Zrap_book_09 Table'
@Metadata.allowExtensions: true
define root view entity zdata_rap_09
  as select from zrap_book_09
{
  key travel_id     as Travel_Id,
  key booking_id    as Booking_Id,
      booking_date  as Booking_Date,
      customer_id   as Customer_Id,
      carrier_id    as Carrier_Id,
      connection_id as Connection_Id,
      flight_date   as Flight_Date,
      currency_code as Currency_Code
}
