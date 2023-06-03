SELECT array_agg(callsign),
       registration,
       count(*) FILTER(where callsign = 'ETD18U') as count_callsign_etd18u
from flight_leg
group by registration
;