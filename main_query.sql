SELECT 
f.trip_id,
f.VendorID,
f.fare_amount,
f.extra,
f.mta_tax,
f.tip_amount,
f.tolls_amount,
f.improvement_surcharge,
f.total_amount,

d.tpep_pickup_datetime,
d.pick_hour,
d.pick_day,
d.pick_month,
d.pick_year,
d.pick_weekday,
d.tpep_dropoff_datetime,
d.drop_hour,
d.drop_day,
d.drop_month,
d.drop_year,
d.drop_weekday,
p.passenger_count,
t.trip_distance,
r.rate_code_name,
r.RatecodeID,
pick.PUlocationID,
drop.DOlocationID,
pay.payment_type,
pay.payment_type_name
FROM 

moonlit-mesh-403706.taxi.fact_table f
JOIN moonlit-mesh-403706.taxi.datetime_dim d  ON f.datetime_id=d.datetime_id
JOIN moonlit-mesh-403706.taxi.passenger_count_dim p  ON p.passenger_count_id=f.passenger_count_id  
JOIN moonlit-mesh-403706.taxi.trip_distance_dim t  ON t.trip_distance_id=f.trip_distance_id  
JOIN moonlit-mesh-403706.taxi.rate_code_dim r ON r.rate_code_id=f.rate_code_id  
JOIN moonlit-mesh-403706.taxi.pickup_location_dim pick ON pick.pickup_location_id=f.pickup_location_id
JOIN moonlit-mesh-403706.taxi.dropoff_location_dim drop ON drop.dropoff_location_id=f.dropoff_location_id
JOIN moonlit-mesh-403706.taxi.payment_dype_dim pay ON pay.payment_type_id=f.payment_type_id;