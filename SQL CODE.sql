SELECT b.name, b.owner_name, v.ViolationTypeID, count(v.risk_category)
FROM businesses b
JOIN violations v
ON b.business_id = v.business_id
WHERE v.risk_category = 'High Risk'
GROUP BY 1
ORDER BY 4 DESC
LIMIT 20
