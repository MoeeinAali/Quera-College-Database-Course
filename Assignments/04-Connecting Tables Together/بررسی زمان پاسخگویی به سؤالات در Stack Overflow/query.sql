SELECT question_id, TIMESTAMPDIFF(SECOND, question_creation_date, creation_date) AS time_to_answer
FROM (select A.*, questions.creation_date AS question_creation_date
      FROM (SELECT DISTINCT question_id, creation_date
            FROM answers ANS1
            WHERE ANS1.creation_date = (SELECT min(ANS2.creation_date)
                                        FROM answers ANS2
                                        WHERE ANS1.question_id = ANS2.question_id)) AS A
               JOIN questions
      WHERE A.question_id = questions.id) AS B
ORDER BY time_to_answer DESC, question_id
LIMIT 500;