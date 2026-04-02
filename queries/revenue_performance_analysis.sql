-- Gross Revenue Monthly Trend

SELECT
	SUM(Purchase_Amount) [Gross Revenue],
	MONTH(Time_of_Purchase) [Month]
FROM ecommerce_cleaned
GROUP BY MONTH(Time_of_Purchase)
ORDER BY MONTH(Time_of_Purchase)

-- Revenue per Purchase Category
SELECT
	Purchase_Category [Category],
	SUM(Purchase_Amount) [Gross Revenue]
FROM ecommerce_cleaned
GROUP BY Purchase_Category
ORDER BY SUM(Purchase_Amount) DESC

-- Revenue per Purchase Channel
SELECT
	SUM(Purchase_Amount) [Gross Revenue],
	Purchase_Channel [Online vs In-Store]
FROM ecommerce_cleaned
GROUP BY Purchase_Channel

-- Revenue per Income Level
SELECT
	SUM(Purchase_Amount) [Gross Revenue],
	Income_Level [Income Level]
FROM ecommerce_cleaned
GROUP BY Income_Level

-- Revenue by Purchase Frequency
SELECT
	SUM(Purchase_Amount) [Gross Revenue],
	Frequency_of_Purchase [Purchase Frequency]
FROM ecommerce_cleaned
GROUP BY Frequency_of_Purchase
ORDER BY SUM(Purchase_Amount) desc