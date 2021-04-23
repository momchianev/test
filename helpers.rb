#help functions
#### search the position in array
def nameri arr, query  
    len = arr.length
    for idx in 0 .. len - 1 do
        if query == arr[idx]
            return idx  
        else 
        end
    end
end 

# print array 
def printArray arr
    len = arr.length  
    for row in 0 .. len - 1 do
        for col in 0 .. arr[row].length - 1 do 
            print arr[row][col]
            print "    "
        end
        print "\n"
    end
end

#print array with label 
def printArrayWithLabels matrix, label, average
    len = matrix.length 
    for row in 0 .. len - 1 do 
        print "#{label[row]}    "
        print "#{matrix[row]}   "
        print "#{average[row]}\n"
    end
end

# get the grades and make average
def findAverage arr
    sum = 0
    for ocenka in arr do
        sum = sum + ocenka 
       
    end
    average = sum / arr.length
    return average
end
     #find the highest number in array
def highestnumber arr 
    idx = 0 
    max = arr[0]
    while idx <= arr.length - 1
        if max > arr[idx] 
            max = max
        else 
            max = arr[idx]
        end
        
        idx = idx + 1
    end
    return max
end

#find the lowest number in array
    
def lowestnumber arr
    idx = 0 
    min = arr[0]
    while idx <= arr.length - 1
        if arr[idx] > min 
            min = min
        else
            min = arr[idx]
        end
        
        idx = idx + 1
    end
    return min
end

#### search highest and lowest and find highest - lowest
#### with 2 ways koito imam veche i nova funkciq 
def findminandmaxandmakeminus arr 
    while idx <= len - 1
        if max < arr[idx]
            max = arr[idx]
        end
        if min > arr[idx]
            min = arr[idx]
        end
        idx = idx + 1
        sum = max - min
    end
    return sum 
end

#function that finds the sum in array
def namerisuminarray arr 
    len = arr.length
    sum = 0
    sum = sum.to_i
    broqch = 0
    
    while broqch <= len - 1
        sum = sum + arr[broqch].to_i
        broqch = broqch + 1
    end
    
    return sum 
end

#function that reverse array 
def reversearray arr
    len = arr.length
    idx = len - 1  
    arr2 = []
    while idx >= 0 
        arr2.push arr[idx] 
        idx = idx - 1
    end
    return arr2
end

#find if number exists in array

def existsinarray arr, number
    len = arr.length
    idx = 0
    while idx <= len - 1
        if number == arr[idx]
            return true
        end
        idx = idx + 1
        
    end
    return false 
end
