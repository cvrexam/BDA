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
