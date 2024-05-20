create table ReviewData ( ReviewID INT PRIMARY KEY, ReviewText VARCHAR(MAX), Sentiment VARCHAR(50))
SELECT * FROM ReviewData
insert into ReviewData (ReviewID, ReviewText, Sentiment) Values (1,'The hairstyle look amazing, i will definitely come back.',''),(2,'I had a terrible experience, the hairstylist was rude and i did not get the hairstyle i asked for.',''),(3,'The salon has a nice ambience and the staff are friendly.',''),(4,'Mediocre service. The hairstyle was okay, but not worth the price.',''),(5,'i love how my hairstyle  turned out.',''),(6,'The salon was clean and well-maintained. However, the wait time was too long.',''),(7,'Absolutely awful! I will never return.',''),(8, 'Great service and attention to detail. I highly recommend this salon.',''),(9, 'The hairstyle was decent, but the stylist seemed distracted.',''),(10, 'I was disappointed with the service. The stylist seemed inexperienced.','')
select * from ReviewData
UPDATE ReviewData set ReviewText = LOWER(REPLACE(ReviewText, '[^a-zA-Z0-9\s]', ''))
update ReviewData set Sentiment = case when ReviewText like '%great%' or ReviewText like '%excellent%' then 'Positive' when ReviewText LIKE '%awful%' then 'Negative' else 'Neutral' end
select * from ReviewData
select sentiment, count(*) as count from ReviewData Group By Sentiment