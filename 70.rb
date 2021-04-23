

require_relative './helpers'
##trip

uchenici = ["momo","niko","ivana","kris", "spas", "kiro","lili","tedi","pendi"]
len = uchenici.length

suma = []
obshto = []


for row in 0 .. len - 1 do 
    suma.push []
    obshto.push []
end

printArrayWithLabels suma, uchenici, obshto

while true
    print "taksa"
    taksa = gets
    taksa = taksa.to_i
    print "koi si ti"
    ime = gets 
    ime = ime.chomp

    if taksa <= 300
        print "ostava da platish#{300 - taksa}"
    else 
        print "plateno"
    end
    print "\n"
    idx = nameri uchenici, ime 
    suma[idx].push taksa 
    obshtasuma  = namerisuminarray suma[idx]
    obshto[idx] =  obshtasuma 

    printArrayWithLabels suma, uchenici, obshto
end 



