read -p "enter the number m= " m
n=$m
primeFactors(n)
function primeFactors(n)
{

    while (n % 2 == 0)
    do
        document.write(2 + " ");
        n = Math.floor(n / 2);
    done

    for(let i = 3;
            i <= Math.floor(Math.sqrt(n));
            i = i + 2)
    do
        while (n % i == 0)
        do
            document.write(i + " ");
            n = Math.floor(n / i);
        done
    done

    if (n > 2)
        document.write(n + " ");
}
