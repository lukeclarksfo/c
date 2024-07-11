function gcd(u, v)
{
    var t;
    while(u>0)
    {
        if(u<v) {t=u;u=v;v=t;}
        document.body.innerHTML += u+" "+v+ "<br/>";
        u=u-v;
    }
    document.body.innerHTML += "GCD is "+v+"<br/>";
    return v;
}

gcd(75,110)
x=parseInt(prompt("x="));y=parseInt(prompt("y=")); gcd(x,y)
