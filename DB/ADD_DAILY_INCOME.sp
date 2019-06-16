create or alter procedure ADD_DAILY_INCOME (
    IN_PRODUCT_ID integer not null,
    IN_PRODUCT_COUNT integer not null,
    IN_DATE date not null)
returns (
    OUT_ID integer)
as
declare variable TMP integer;
begin
 select count_in_stock from product
 where id = :in_product_id
 into :tmp;

 if ( tmp is not null ) then begin
    tmp = tmp - in_product_count;
    out_id=gen_id(gen_daily_income_id,1);
    insert into daily_income(id,product_id,product_count,the_date,stock_balance) values
    (:out_id,:in_product_id,:in_product_count,:in_date,:tmp);

    update PRODUCT
    set
        count_in_stock=:tmp
    where id=:in_product_id;
  end
end