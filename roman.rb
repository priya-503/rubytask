class Roman_numeral

  

def f1(n)
  a=[
       ["M",1000],
       ["D ",500],
       ["C",100],
       ["L",50],
       ["X",10],
       ["V",5],
       ["I",1]]
  roman=""
  a.each do|match|
    letter= match[0]
    value=match[1]
    roman +=letter*(n/value)
    n=n%value
  end
  p roman
end
#return roman

end
ob=Roman_numeral.new
ob.f1(1669)



