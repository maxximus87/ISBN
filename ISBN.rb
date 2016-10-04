def ten(isbn)
    isbn.is_a? String
    isbn = isbn.delete("-")
  
    case isbn.size
    	when 10 then isbn = isbn[0..9]
    		true
    
    	when 13 then isbn = isbn[0..12]
 
    	true
    end

end

def check_ten(isbn)  
    #puts isbn = isbn.delete("-")
    #"1,2,3,4".split(",").map(&:to_i)


    #puts check = isbn.split("").map(&:to_i)
    isbn = isbn.scan /\w/
    isbn = isbn[0..9]
    sum = 0

    isbn.each_with_index do |s,n| 

        sum = sum + ((n+1).to_i * s.to_i)
    end

        
    check  = sum % 11 
    if check == 10  
            isbn << "X"
            digit = "X"
            
    elsif check == 0 
            isbn << "0"
            #puts isbn
            digit = "0"
    else isbn << check.to_s
    end

    digit

end


check_ten("877195869")