1.start pig
 pig -x local

2.Loading the Dataset
input = LOAD ‘/home/cloudera/Desktop/100/student_data.txt' USING PigStorage(',') AS
(id:int,name:chararray,phone:chararray,city:chararray);

3.To display the output
Dump(input); 

4.To print the names of all students
output=FOREACH student GENERATE name;
Dump(output);

5.sorting
sorted_data = ORDER dataset1 BY age;

6.joining
joined_data = JOIN dataset1 BY id, dataset2 BY id;

7.projecting data
projected_data = FOREACH dataset1 GENERATE id, name;

8.filtering
filtered_data = FILTER dataset1 BY age > 25;

9.Aggregate (Evaluation) functions
SUM()
• -- Load input data
• sales_data = LOAD 'sales_data.txt' USING PigStorage(',') AS (product: chararray,
price: int);
• -- Group data by product
• grouped_data = GROUP sales_data BY product;
• -- Compute total sales for each product
• total_sales = FOREACH grouped_data GENERATE group AS product,
SUM(sales_data.price) AS total_sales;
• -- Store the result
• STORE total_sales INTO 'total_sales_output';
AVG()
• -- Load input data
• sales_data = LOAD 'sales_data.txt' USING PigStorage(',') AS (product: chararray,
price: int);
• -- Group data by product
• grouped_data = GROUP sales_data BY product;
• -- Compute average price for each product
• average_price = FOREACH grouped_data GENERATE group AS product,
AVG(sales_data.price) AS avg_price;
• -- Store the result
• STORE average_price INTO 'average_price_output';
MAX()
• -- Load input data
• sales_data = LOAD 'sales_data.txt' USING PigStorage(',') AS (product: chararray,
price: int);
• -- Group data by product
• grouped_data = GROUP sales_data BY product;
• -- Find maximum price for each product
• max_price = FOREACH grouped_data GENERATE group AS product,
MAX(sales_data.price) AS max_price;
• -- Store the result
• STORE max_price INTO 'max_price_output';
COUNT()
• -- Load input data
• sales_data = LOAD 'sales_data.txt' USING PigStorage(',') AS (product: chararray,
price: int);
• -- Group data by product
• grouped_data = GROUP sales_data BY product;
• -- Count number of sales for each product
• sales_count = FOREACH grouped_data GENERATE group AS product,
COUNT(sales_data) AS total_sales;
• -- Store the result
• STORE sales_count INTO 'sales_count_output';
