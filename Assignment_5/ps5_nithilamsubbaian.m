%Nithilam Subbaian
%Problem set 5

%Question 1
load fisheriris 
%sepal length, sepal width, petal length, and petal width for 150 iris specimens. 
%There are 50 specimens from each of three species. 

c = cell(150, 1);

for i = 1:150
 text = species(i);
c{i} = Flower(meas(i, 1), meas(i, 2), meas(i, 3), meas(i, 4), strtrim(char(text)));
end

getSLength(c{1})
report(c{1})
