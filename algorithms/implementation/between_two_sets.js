//main function
function getTotalX(a, b) {
    let lcm = LCM(a);
    let possibleResults = [];
    let i = 1;
    let minimum = Math.min(...b);
    let multiples = 1;
    while(multiples < minimum){
        multiples = lcm * i;
        possibleResults.push(multiples);
        i++;  
    }
    let results = possibleResults.length;

    for(let i = 0, j = 0; i < possibleResults.length; j++){
        
        if( j == b.length){
            i++;
            j = 0;
        }
        if(b[j] % possibleResults[i] != 0 && i < possibleResults.length){
            results --;
            i++;
            j = -1;
        }
   
    }
    return results;
}

//suplementary functions
function LCM(arr){
    
    let minimums = [];
    
    let result = 1;//default value

    for(let number of arr){
        let primeFactors = primeFactorization(number);
        for(let i = 0; i < primeFactors.length; i++){

            let value = primeFactors[i];
            let count = 0;
            for(let i = 0; i < primeFactors.length; i++){
                if(primeFactors[i] == value) count++
            }
            
            
            if(count>= minimums[value] || minimums[value] == undefined) minimums[value] = count;
            
        }
    }
    for(let i = 0; i < minimums.length; i ++){
        if(minimums[i] == undefined) continue;
        result *= Math.pow(i,minimums[i])
    }
    
    return result;

}

function primeFactorization(n){
    let factors = [];

    let factor = 2;
    while(n > 1){
        if(!isPrime(factor) || n % factor != 0){
            factor++;
            continue;
        }
        factors.push(factor)
        n /= factor;
        factor = 2;

    }
    return factors
}

function isPrime(n){
    for(let i = 2; i < n;i++){
        if(n % i == 0) return false;
    }
    return true;

}
