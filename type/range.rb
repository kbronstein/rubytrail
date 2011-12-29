# Double dot notation (..) 
digits = (0..9) # 0 up to 9 (both included)

# Triple dot notation(...): exclude the upper end value
# 0 up to but not included 10, that is 0 up to 9
print "digits: " 
(0...10).each {|n| print "#{n}, "} 

lowercase = ('a'..'z')
