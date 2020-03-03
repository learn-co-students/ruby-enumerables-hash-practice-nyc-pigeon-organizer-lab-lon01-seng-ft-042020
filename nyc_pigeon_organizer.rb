

def nyc_pigeon_organizer(hash)
rearrangedhash = {}
index = 0

    #sort nested data
sorted = hash.sort
    #color [0] #gender [1] #lives [2]

    #pigeon names
    def pigeonnames(hash)
    array=[]
    hash.each {|key, value|
    array << value }
    array.flatten!
    array.uniq!
    p array 
    return array
    end
    
names = pigeonnames(sorted[0][1])
p names

    #loop through pigeon names
while index<names.count do


    #extract data
    
    def findthecolor(hash, name)
    array = [] 
    hash.each {|key, value|
        if value.include?(name)
        array << key.to_s
        end
        }
    if array[1]
        return array
        else
        return array
        end
    end
    
    #color
    color = findthecolor(sorted[0][1], names[index])
    #gender
    gender = findthecolor(sorted[1][1], names[index])
    #location
    lives = findthecolor(sorted[2][1], names[index])



    #push to hash key 
pigeondetailshash = {sorted[0][0] => color, sorted[1][0] => gender, sorted[2][0] => lives}
 
rearrangedhash[names[index]] = pigeondetailshash

index +=1

end

rearrangedhash

end

# pp nyc_pigeon_organizer(pigeon_data)