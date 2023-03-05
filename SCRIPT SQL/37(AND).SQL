/*  Apenas linhas onde titulo e mensagem de avaliação
    estejam preenchidas */
SELECT  
        review_score as Nota,
        review_comment_title as Titulo,
        review_comment_message as Comentario
        

FROM    tb_order_reviews
WHERE   review_comment_title IS NOT NULL
AND     review_comment_message IS NOT NULL