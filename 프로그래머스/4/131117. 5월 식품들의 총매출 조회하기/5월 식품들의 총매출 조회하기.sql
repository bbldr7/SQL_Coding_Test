-- 코드를 입력하세요
SELECT P.PRODUCT_ID, P.PRODUCT_NAME, SUM(PRICE*AMOUNT) AS TOTAL_SALES
FROM FOOD_PRODUCT P
JOIN FOOD_ORDER O ON P.PRODUCT_ID = O.PRODUCT_ID
WHERE PRODUCE_DATE BETWEEN '2022-05-01' AND '2022-05-31'
GROUP BY 1, 2
ORDER BY 3 DESC, 1 ASC