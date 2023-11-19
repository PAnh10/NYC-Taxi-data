SELECT pickup_location_id, PUlocationID, Zone
FROM moonlit-mesh-403706.taxi.fact_table f
JOIN moonlit-mesh-403706.taxi.pickup_location_dim p USING(pickup_location_id)
JOIN moonlit-mesh-403706.taxi.zone z ON p.PUlocationID = z.LocationID
