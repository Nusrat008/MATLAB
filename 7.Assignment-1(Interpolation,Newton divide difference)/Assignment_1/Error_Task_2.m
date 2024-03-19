syms x
 

nodes= [1 1.1 1.3 1.4]
  
n = length(x);

f = log(x);
diff_f = diff(f,x);

for i=1:n
    
df= diff_f(nodes(i))

end

max_f = max(df)

