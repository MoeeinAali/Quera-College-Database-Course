WITH RECURSIVE CTE (level, id, user_1, user_2) AS
                   (SELECT 1, id, user_1, user_2
                    FROM connections
                    WHERE user_1 = 256
                    UNION
                    SELECT level + 1, connections.id, connections.user_1, connections.user_2
                    FROM connections
                             JOIN CTE
                                  ON connections.user_1 = CTE.user_2)
SELECT MIN(level) AS degree
FROM CTE
WHERE user_2 = 512;