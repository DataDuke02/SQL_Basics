WITH RankedLogins AS (
    SELECT 
        player_id, 
        event_date,
        ROW_NUMBER() OVER(PARTITION BY player_id ORDER BY event_date ASC) as rn
    FROM 
        Activity
)
SELECT 
    player_id, 
    event_date AS first_login
FROM 
    RankedLogins
WHERE 
    rn = 1;
