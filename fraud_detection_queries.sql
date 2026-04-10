create table transactions(
	TranscationID int primary key,
    TranscationDate varchar(50),
    Amount decimal(10,2),
    MerchantID int,
    TranscationType varchar(50),
    Location Varchar(100),
    IsFraud int
    );
show tables ;
describe transactions;
USE creditcard_fraud_detection;
SHOW TABLES;
CREATE TABLE transactions (
    TransactionID INT PRIMARY KEY,
    TransactionDate VARCHAR(50),
    Amount DECIMAL(10,2),
    MerchantID INT,
    TransactionType VARCHAR(50),
    Location VARCHAR(100),
    IsFraud INT
);
show tables;
DESCRIBE transactions;
select count(*) from transactions;
select* from transactions limit 10;
select IsFraud,count(*) as count
from transactions
group by IsFraud; 
select  TransactionType,
count(*) as Total_Transactions,
sum(IsFraud) as Fraud_count ,
avg(IsFraud) * 100 as Fraud_Rate
from transactions
group by TransactionType
order by Fraud_Rate desc;
select * from transactions;
select Location,
count(*) as Total_Transaction,
sum(IsFraud) as Fraud_count,
avg(IsFraud)as Fraud_Rate
from transactions
group by Location
having count(*) >=50
order by Fraud_count desc
limit 10;
select MerchantID,
count(*) as Total_Transactions,
sum(IsFraud) as Fraud_count,
avg(IsFraud)*100 as Fraud_Rate
from transactions
group  by MerchantID
having count(*) >20 and avg(IsFraud)*100>2
order by  Fraud_Rate desc
limit 15;
select*from transactions;
select TransactionID,Amount,MerchantID,Location,TransactionType
from transactions
where IsFraud=1 and amount>3000
order by Amount desc
limit 20;
SELECT IsFraud, COUNT(*) 
FROM transactions 
GROUP BY IsFraud;
