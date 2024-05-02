WITH RECURSIVE CTE(n, id, title, slug, parent_id) AS
                   (SELECT 1, id, title, slug, parent_id
                    FROM categories
                    WHERE id = 741
                    UNION
                    SELECT n + 1, categories.id, categories.title, categories.slug, categories.parent_id
                    FROM categories
                             JOIN CTE
                                  ON categories.id = CTE.parent_id)
SELECT title, slug
FROM CTE
ORDER BY n DESC;