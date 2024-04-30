SELECT 'cart'                                                                                       AS 'funnel_stage',
       FORMAT((select COUNT(distinct users.id)
               FROM users
                        JOIN carts ON users.id = carts.user_id) / (SELECT COUNT(id) FROM users), 4) AS 'conversion_rate'
UNION
SELECT 'payment'                                AS 'funnel_stage',
       FORMAT((SELECT COUNT(DISTINCT users.id)
               FROM users
                        JOIN carts ON users.id = carts.user_id
                        JOIN payments ON carts.id = payments.cart_id) /
              (SELECT COUNT(id) FROM users), 4) AS 'conversion_rate'