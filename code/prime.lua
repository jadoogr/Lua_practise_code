local n=34467
local ch=0
if n%2==0 then ch=1
else
    for i=3,math.sqrt(n),1
    do
        if n%i==0 then
            ch=1
            break;
        end
    end
end
if ch==1 then print(n.." is not a prime number")
else print(n.." is a prime number")
end
