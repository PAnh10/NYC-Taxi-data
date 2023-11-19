SELECT payment_type_name,
  d.pick_hour,
  SUM(tip_amount) as total_tip, 
  SUM(fare_amount) as total_fare_amount, 
  ROUND(SUM(tip_amount)/SUM(fare_amount) * 100,2)
FROM moonlit-mesh-403706.taxi.fact_table as f 
JOIN moonlit-mesh-403706.taxi.payment_dype_dim as p ON f.payment_type_id = p.payment_type_id
JOIN moonlit-mesh-403706.taxi.datetime_dim as d ON f.datetime_id = d.datetime_id
GROUP BY payment_type_name, pick_hour
ORDER BY pick_hour