create or alter procedure GOT_PRICE (
    IN_PRODUCT_ID integer not null,
    IN_DATE date not null)
returns (
    OUT_PRICE integer)
as
begin
    select price from
        (select price, min(datediff(:in_date,the_date)  from
            (select price, the_data from purchase_inv
            where product_id = :in_product_id and datediff(:in_date,the_date) > 0) )
    into :out_price;

end