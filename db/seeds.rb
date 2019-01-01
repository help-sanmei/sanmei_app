# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


# # 28元
# def calc_zokan(sno, dte) 

#         case sno 
#                         #   0 1 2 3 4 5 6 7 8 9 0 1 2 3 4 5 6 7 8 9 20 
#             when  1 then s="101010101010101010101010101010101010101010"
#             when  2 then s="101010101010101010108 8 8 6 6 6 6 6 6 6 6 "
#             when  3 then s="5 5 5 5 5 5 5 5 3 3 3 3 3 3 3 1 1 1 1 1 1 "
#             when  4 then s="2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 2 "
#             when  5 then s="2 2 2 2 2 2 2 2 2 2 1010105 5 5 5 5 5 5 5 "
#             when  6 then s="5 5 5 5 5 5 7 7 7 7 7 7 7 7 7 3 3 3 3 3 3 "
#             when  7 then s="6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 6 4 "
#             when  8 then s="4 4 4 4 4 4 4 4 4 4 2 2 2 6 6 6 6 6 6 6 6 "
#             when  9 then s="5 5 5 5 5 5 5 5 5 5 5 9 9 9 7 7 7 7 7 7 7 "
#             when 10 then s="8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 8 "
#             when 11 then s="8 8 8 8 8 8 8 8 8 8 4 4 4 5 5 5 5 5 5 5 5 "
#             when 12 then s="1 1 1 1 1 1 1 1 1 1 1 1 1 9 9 9 9 9 9 9 9 "
#             else         s="0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 0 "
#         end
        
#         if dte>20
#             dte=20
#         end  
        
#         x= s.slice(dte*2, 2).to_i
#         return x
        
# end

# Zokan.delete_all

# 12.times do |i|
#     21.times do |j|
#         sno = i+1
#         result = calc_zokan(i+1, j)
#         Zokan.create(shi:sno,setsuiri:j,zokan:result)
#     end    
# end    

# #１０大主星
# def calc_10shu(n, k) 
#     case n 
#                      # 0 1 2 3 4 5 6 7 8 9 10 
#         when  1then s="0 1 2 3 4 5 6 7 8 9 10"
#         when  2then s="0 2 1 4 3 6 5 8 7 109 "
#         when  3then s="0 9 101 2 3 4 5 6 7 8 "
#         when  4then s="0 109 2 1 4 3 6 5 8 7 "
#         when  5then s="0 7 8 9 101 2 3 4 5 6 "
#         when  6then s="0 8 7 109 2 1 4 3 6 5 "
#         when  7then s="0 5 6 7 8 9 101 2 3 4 "
#         when  8then s="0 6 5 8 7 109 2 1 4 3 "
#         when  9then s="0 3 4 5 6 7 8 9 101 2 "
#         when 10then s="0 4 3 6 5 8 7 109 2 1 "
#         else        s="0 0 0 0 0 0 0 0 0 0 0 "
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
    
# end

# 10.times do |i|
#     11.times do |j|
#         n = i+1
#         result = calc_10shu(i+1, j)
#         Jushu.create(shi:n,setsuiri:j,jushu:result)
#     end    
# end    

# #１２大従星 
# def calc_12jyu(n, k) 

#     case n
#                       # 0 1 2 3 4 5 6 7 8 9 101112 
#         when  1 then s="9 7 1011128 4 2 5 1 3 6 9 "
#         when  2 then s="2 4 8 1211107 9 6 3 1 5 2 "
#         when  3 then s="1 3 6 9 7 1011128 4 2 5 1 "
#         when  4 then s="3 1 5 2 4 8 1211107 9 6 3 "
#         when  5 then s="1 3 6 9 7 1011128 4 2 5 1 "
#         when  6 then s="3 1 5 2 4 8 1211107 9 6 3 "
#         when  7 then s="4 2 5 1 3 6 9 7 1011128 4 "
#         when  8 then s="7 9 6 3 1 5 2 4 8 1211107 "
#         when  9 then s="11128 4 2 5 1 3 6 9 7 1011"
#         when 10 then s="1211107 9 6 3 1 5 2 4 8 12"
#         else         s="0 0 0 0 0 0 0 0 0 0 0 0 0 "
#     end

#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 10.times do |i|
#     13.times do |j|
#         n = i+1
#         result = calc_12jyu(i+1, j)
#         Junijyu.create(shi:n,setsuiri:j,junijyu:result)
#     end    
# end    

# #合法・散法表
# def calc_gousan(n, k)  # 01半会　02支合　03方三位　04対冲　05刑　06破　07害　08支合・破　09刑・冲　10刑・害　11刑・破　12刑・支合・破　　 　　　　　　　　　　　　　5/10 支合　半会　に化水などを入れる

#     case n
#                         #0 1 2 3 4 5 6 7 8 9 101112 
#         when  1 then s= "00000200050100040701060000"
#         when  2 then s= "00020000000601070400010500"
#         when  3 then s= "00000000000010010009000108"
#         when  4 then s= "00050000000700060100040201"
#         when  5 then s= "00010600070500000001020400"
#         when  6 then s= "00000110000000000012010004"
#         when  7 then s= "00040701060000050200000100"
#         when  8 then s= "00070900010000020000001101"
#         when  9 then s= "00010009000112000000000007"
#         when 10 then s= "00060100040201000000050700"
# 		when 11 then s= "00000501020400011100070000"
# 		when 12 then s= "00000002010004000107000005"
#         else         s= "00000000000000000000000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end


# 12.times do |i|
#     13.times do |j|
#         n = i+1
#         result = calc_gousan(i+1, j)
#         Gousan.create(shi:n,setsuiri:j,gousan:result)
#     end    
# end    

# #五行変化表
# def calc_gogyo_cng(n, k)  #01化木　02化火　03化土　04化金　05化水　06化金・土　07化木・土(半会で子・卯・午・酉を含まない組合せは化けない,支合は化ける)

#     case n
#                       # 0 1 2 3 4 5 6 7 8 9 101112  
#         when  1 then s="00000500000500000005000000"
#         when  2 then s="00050000000000000000040000"
#         when  3 then s="00000000000000020000000001"
#         when  4 then s="00000000000000000100000701"
#         when  5 then s="00050000000000000000060000"
#         when  6 then s="00000000000000000004040000"
#         when  7 then s="00000002000000000200000200"
#         when  8 then s="00000000010000020000000000"
#         when  9 then s="00050000000004000000000000"
#         when 10 then s="00000400000604000000000000"
#   		when 11 then s="00000000070000020000000000"
#   		when 12 then s="00000001010000000000000000"
#         else         s="00000000000000000000000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 12.times do |i|
#     13.times do |j|
#         n = i+1
#         result = calc_gogyo_cng(i+1, j)
#         Gogyocng.create(shi:n,setsuiri:j,gogyocng:result)
#     end    
# end    

# #半会変化表
# def calc_gogyo_hankai(n, k)  #01化木　02化火　03化土　04化金　05化水　06化金・土　07化木・土(半会で子・卯・午・酉を含まない組合せは化けない,支合は化ける)

#     case n
#                       #0 1 2 3 4 5 6 7 8 9 101112 
#         when  1 then s="00000000000500000005000000"
#         when  2 then s="00000000000000000000040000"
#         when  3 then s="00000000000000020000000000"
#         when  4 then s="00000000000000000100000001"
#         when  5 then s="00050000000000000000000000"
#         when  6 then s="00000000000000000000040000"
#         when  7 then s="00000002000000000000000200"
#         when  8 then s="00000000010000000000000000"
#         when  9 then s="00050000000000000000000000"
#         when 10 then s="00000400000004000000000000"
#   		when 11 then s="00000000000000020000000000"
#   		when 12 then s="00000000010000000000000000"
#         else         s="00000000000000000000000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 12.times do |i|
#     13.times do |j|
#         n = i+1
#         result = calc_gogyo_hankai(i+1, j)
#         Gogyohankai.create(shi:n,setsuiri:j,gogyohankai:result)
#     end    
# end    

# #支合変化表
# def calc_gogyo_shigo(n, k)  #01化木　02化火　03化土　04化金　05化水　06化金・土　07化木・土(半会で子・卯・午・酉を含まない組合せは化けない,支合は化ける)
#     case n
#                         #0 1 2 3 4 5 6 7 8 9 101112 
#         when  1 then s="00000500000000000000000000"
#         when  2 then s="00050000000000000000000000"
#         when  3 then s="00000000000000000000000001"
#         when  4 then s="00000000000000000000000700"
#         when  5 then s="00000000000000000000060000"
#         when  6 then s="00000000000000000004000000"
#         when  7 then s="00000000000000000200000000"
#         when  8 then s="00000000000000020000000000"
#         when  9 then s="00000000000004000000000000"
#         when 10 then s="00000000000600000000000000"
#   	    when 11 then s="00000000070000000000000000"
#   	    when 12 then s="00000001000000000000000000"
#         else         s="00000000000000000000000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 12.times do |i|
#     13.times do |j|
#         n = i+1
#         result = calc_gogyo_shigo(i+1, j)
#         Gogyoshigo.create(shi:n,setsuiri:j,gogyoshigo:result)
#     end    
# end    

# #剋線 算出表
# def calc_kokusen(n, k)

#     case n
#                       # 0 1 2 3 4 5 6 7 8 9 10 
#         when  1 then s="0 00000101020202020101"
#         when  2 then s="0 00000101020202020101"
#         when  3 then s="0 01010000010102020202"
#         when  4 then s="0 01010000010102020202"
#         when  5 then s="0 02020101000001010202"
#         when  6 then s="0 02020101000001010202"
#         when  7 then s="0 02020202010100000101"
#         when  8 then s="0 02020202010100000101"
#         when  9 then s="0 01010202020201010000"
#         when 10 then s="0 01010202020201010000"
#         else         s="0 0 0 0 0 0 0 0 0 0 0 "
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 10.times do |i|
#     11.times do |j|
#         n = i+1
#         result = calc_kokusen(i+1, j)
#         Kokusen.create(shi:n,setsuiri:j,kokusen:result)
#     end    
# end    

# #相生・相剋 算出表 干支
# def calc_soukoku(n, k) 
#     case n
#                       #0 1 2 3 4 5 6 7 8 9 10
#         when  1 then s="0 00000100030004000200"
#         when  2 then s="0 00000001000300040002"
#         when  3 then s="0 02000000010003000400"
#         when  4 then s="0 00020000000100030004"
#         when  5 then s="0 04000200000001000300"
#         when  6 then s="0 00040002000000010003"
#         when  7 then s="0 03000400020000000100"
#         when  8 then s="0 00030004000200000001"
#         when  9 then s="0 01000300040002000000"
#         when 10 then s="0 00010003000400020000"
#         else         s="0 0 0 0 0 0 0 0 0 0 0 "
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 10.times do |i|
#     11.times do |j|
#         n = i+1
#         result = calc_soukoku(i+1, j)
#         Soukoku.create(shi:n,setsuiri:j,soukoku:result)
#     end    
# end    

# #四天運と剋線の順位 表
# def calc_juni(n, k)
  
#     case n
#                       # 01234 
#         when  1 then s="04421"
#         when  2 then s="03412"
#         when  3 then s="02143"
#         when  4 then s="01234"
#         when  5 then s="04321"
#         when  6 then s="03412"
#         when  7 then s="04321"
#         when  8 then s="03412"
#         when  9 then s="02143"
#         when 10 then s="01234"
#         else         s="00000"
#     end
    
#     x= s.slice(k, 1).to_i
    
#     return x
# end

# 10.times do |i|
#     5.times do |j|
#         n = i+1
#         result = calc_juni(i+1, j)
#         Juni.create(shi:n,setsuiri:j,juni:result)
#     end    
# end    

# #蔵干表　裏 数理エネルギー計算用
# def calc_ura_zokan(n,k) 
#     case n
#                         #0 1 2 3 
#         when  1 then s="00100000"
#         when  2 then s="00100806"
#         when  3 then s="00050301"
#         when  4 then s="00020000"
#         when  5 then s="00021005"
#         when  6 then s="00050703"
#         when  7 then s="00060400"
#         when  8 then s="00040206"
#         when  9 then s="00050907"
#         when 10 then s="00080000"
# 		when 11 then s="00080405"
#         when 12 then s="00010900"
#         else         s="00000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 12.times do |i|
#     4.times do |j|
#         n = i+1
#         result = calc_ura_zokan(i+1, j)
#         Urazokan.create(shi:n,setsuiri:j,urazokan:result)
#     end    
# end    

# #数理エネルギー     01:木　02:火　03:土　04:金　05:水
# def calc_suri_gogyo(n,k) 

#     case n
#                         #0 1 2 3 4 
#         when  1 then s="0105030204"
#         when  2 then s="0105030204"
#         when  3 then s="0201040305"
#         when  4 then s="0201040305"
#         when  5 then s="0302050401"
#         when  6 then s="0302050401"
#         when  7 then s="0403010502"
#         when  8 then s="0403010502"
#         when  9 then s="0504020103"
#         when 10 then s="0504020103"
#         else         s="0000000000"
#     end
#     x= s.slice(k*2, 2).to_i
#     return x
# end

# 10.times do |i|
#     5.times do |j|
#         n = i+1
#         result = calc_suri_gogyo(i+1, j)
#         Surigogyo.create(shi:n,setsuiri:j,surigogyo:result)
#     end    
# end    

#節入り日
# Setsuiri.create(year:1873,setsuiri_str:"545566778877")
# Setsuiri.create(year:1874,setsuiri_str:"546566788877")
# Setsuiri.create(year:1875,setsuiri_str:"646566888987")
# Setsuiri.create(year:1876,setsuiri_str:"645455777877")
# Setsuiri.create(year:1877,setsuiri_str:"545556777877")
# Setsuiri.create(year:1878,setsuiri_str:"546566788877")
# Setsuiri.create(year:1879,setsuiri_str:"646566788987")
# Setsuiri.create(year:1880,setsuiri_str:"645455777877")
# Setsuiri.create(year:1881,setsuiri_str:"545556777877")
# Setsuiri.create(year:1882,setsuiri_str:"546566788877")
# Setsuiri.create(year:1883,setsuiri_str:"646566788987")
# Setsuiri.create(year:1884,setsuiri_str:"645455777877")
# Setsuiri.create(year:1885,setsuiri_str:"545556777877")
# Setsuiri.create(year:1886,setsuiri_str:"546566788877")
# Setsuiri.create(year:1887,setsuiri_str:"646566788987")
# Setsuiri.create(year:1888,setsuiri_str:"645455777877")
# Setsuiri.create(year:1889,setsuiri_str:"535555777877")
# Setsuiri.create(year:1890,setsuiri_str:"546566788877")
# Setsuiri.create(year:1891,setsuiri_str:"646566788987")
# Setsuiri.create(year:1892,setsuiri_str:"645455777877")
# Setsuiri.create(year:1893,setsuiri_str:"535455777877")
# Setsuiri.create(year:1894,setsuiri_str:"545556778877")
# Setsuiri.create(year:1895,setsuiri_str:"546566788887")
# Setsuiri.create(year:1896,setsuiri_str:"645455777876")
# Setsuiri.create(year:1897,setsuiri_str:"535455777877")
# Setsuiri.create(year:1898,setsuiri_str:"545556778877")
# Setsuiri.create(year:1899,setsuiri_str:"546566788877")
# Setsuiri.create(year:1900,setsuiri_str:"646566888987")
# Setsuiri.create(year:1901,setsuiri_str:"646566888988")
# Setsuiri.create(year:1902,setsuiri_str:"656667888988")
# Setsuiri.create(year:1903,setsuiri_str:"657677899988")
# Setsuiri.create(year:1904,setsuiri_str:"756566788987")
# Setsuiri.create(year:1905,setsuiri_str:"646566888988")
# Setsuiri.create(year:1906,setsuiri_str:"656667888988")
# Setsuiri.create(year:1907,setsuiri_str:"657677899988")
# Setsuiri.create(year:1908,setsuiri_str:"756566788987")
# Setsuiri.create(year:1909,setsuiri_str:"646566888988")
# Setsuiri.create(year:1910,setsuiri_str:"656666888988")
# Setsuiri.create(year:1911,setsuiri_str:"657677899988")
# Setsuiri.create(year:1912,setsuiri_str:"756566788987")
# Setsuiri.create(year:1913,setsuiri_str:"646566888988")
# Setsuiri.create(year:1914,setsuiri_str:"656666888988")
# Setsuiri.create(year:1915,setsuiri_str:"657677899988")
# Setsuiri.create(year:1916,setsuiri_str:"756566788987")
# Setsuiri.create(year:1917,setsuiri_str:"646566888988")
# Setsuiri.create(year:1918,setsuiri_str:"646566888988")
# Setsuiri.create(year:1919,setsuiri_str:"657667889988")
# Setsuiri.create(year:1920,setsuiri_str:"656566788887")
# Setsuiri.create(year:1921,setsuiri_str:"646566888988")
# Setsuiri.create(year:1922,setsuiri_str:"646566888988")
# Setsuiri.create(year:1923,setsuiri_str:"656667889988")
# Setsuiri.create(year:1924,setsuiri_str:"656566788887")
# Setsuiri.create(year:1925,setsuiri_str:"646566888987")
# Setsuiri.create(year:1926,setsuiri_str:"646566888988")
# Setsuiri.create(year:1927,setsuiri_str:"656667889988")
# Setsuiri.create(year:1928,setsuiri_str:"656566788887")
# Setsuiri.create(year:1929,setsuiri_str:"646566888987")
# Setsuiri.create(year:1930,setsuiri_str:"646566888988")
# Setsuiri.create(year:1931,setsuiri_str:"656667889988")
# Setsuiri.create(year:1932,setsuiri_str:"656566788877")
# Setsuiri.create(year:1933,setsuiri_str:"646566788987")
# Setsuiri.create(year:1934,setsuiri_str:"646566888988")
# Setsuiri.create(year:1935,setsuiri_str:"656667888988")
# Setsuiri.create(year:1936,setsuiri_str:"656566788877")
# Setsuiri.create(year:1937,setsuiri_str:"646566788987")
# Setsuiri.create(year:1938,setsuiri_str:"646566888988")
# Setsuiri.create(year:1939,setsuiri_str:"656666888988")
# Setsuiri.create(year:1940,setsuiri_str:"656566788877")
# Setsuiri.create(year:1941,setsuiri_str:"646566788987")
# Setsuiri.create(year:1942,setsuiri_str:"646566888988")
# Setsuiri.create(year:1943,setsuiri_str:"656666888988")
# Setsuiri.create(year:1944,setsuiri_str:"656566788877")
# Setsuiri.create(year:1945,setsuiri_str:"646566788987")
# Setsuiri.create(year:1946,setsuiri_str:"646566888988")
# Setsuiri.create(year:1947,setsuiri_str:"656666888988")
# Setsuiri.create(year:1948,setsuiri_str:"656556788877")
# Setsuiri.create(year:1949,setsuiri_str:"646566788987")
# Setsuiri.create(year:1950,setsuiri_str:"646566888988")
# Setsuiri.create(year:1951,setsuiri_str:"656566888988")
# Setsuiri.create(year:1952,setsuiri_str:"656556778877")
# Setsuiri.create(year:1953,setsuiri_str:"646566788887")
# Setsuiri.create(year:1954,setsuiri_str:"646566888988")
# Setsuiri.create(year:1955,setsuiri_str:"646566888988")
# Setsuiri.create(year:1956,setsuiri_str:"655556778877")
# Setsuiri.create(year:1957,setsuiri_str:"546566788887")
# Setsuiri.create(year:1958,setsuiri_str:"646566888987")
# Setsuiri.create(year:1959,setsuiri_str:"646566888988")
# Setsuiri.create(year:1960,setsuiri_str:"655556778877")
# Setsuiri.create(year:1961,setsuiri_str:"546566788887")
# Setsuiri.create(year:1962,setsuiri_str:"646566788987")
# Setsuiri.create(year:1963,setsuiri_str:"646566888988")
# Setsuiri.create(year:1964,setsuiri_str:"655556777877")
# Setsuiri.create(year:1965,setsuiri_str:"546566788887")
# Setsuiri.create(year:1966,setsuiri_str:"646566788987")
# Setsuiri.create(year:1967,setsuiri_str:"646566888988")
# Setsuiri.create(year:1968,setsuiri_str:"655556777877")
# Setsuiri.create(year:1969,setsuiri_str:"546566788877")
# Setsuiri.create(year:1970,setsuiri_str:"646566788987")
# Setsuiri.create(year:1971,setsuiri_str:"646566888988")
# Setsuiri.create(year:1972,setsuiri_str:"655555777877")
# Setsuiri.create(year:1973,setsuiri_str:"546566788877")
# Setsuiri.create(year:1974,setsuiri_str:"646566788987")
# Setsuiri.create(year:1975,setsuiri_str:"646566888988")
# Setsuiri.create(year:1976,setsuiri_str:"655555777877")
# Setsuiri.create(year:1977,setsuiri_str:"546556788877")
# Setsuiri.create(year:1978,setsuiri_str:"646566788987")
# Setsuiri.create(year:1979,setsuiri_str:"646566888988")
# Setsuiri.create(year:1980,setsuiri_str:"655455777877")
# Setsuiri.create(year:1981,setsuiri_str:"546556778877")
# Setsuiri.create(year:1982,setsuiri_str:"646566788887")
# Setsuiri.create(year:1983,setsuiri_str:"646566888987")
# Setsuiri.create(year:1984,setsuiri_str:"645455777877")
# Setsuiri.create(year:1985,setsuiri_str:"545556778877")
# Setsuiri.create(year:1986,setsuiri_str:"546566788887")
# Setsuiri.create(year:1987,setsuiri_str:"646566888987")
# Setsuiri.create(year:1988,setsuiri_str:"645455777877")
# Setsuiri.create(year:1989,setsuiri_str:"545556778877")
# Setsuiri.create(year:1990,setsuiri_str:"546566788987")
# Setsuiri.create(year:1991,setsuiri_str:"646566788987")
# Setsuiri.create(year:1992,setsuiri_str:"645455777877")
# Setsuiri.create(year:1993,setsuiri_str:"545556778877")
# Setsuiri.create(year:1994,setsuiri_str:"546566788877")
# Setsuiri.create(year:1995,setsuiri_str:"646566788987")
# Setsuiri.create(year:1996,setsuiri_str:"645455777877")
# Setsuiri.create(year:1997,setsuiri_str:"545556777877")
# Setsuiri.create(year:1998,setsuiri_str:"546566788877")
# Setsuiri.create(year:1999,setsuiri_str:"646566788987")
# Setsuiri.create(year:2000,setsuiri_str:"645455777877")
# Setsuiri.create(year:2001,setsuiri_str:"545555777877")
# Setsuiri.create(year:2002,setsuiri_str:"546566788877")
# Setsuiri.create(year:2003,setsuiri_str:"646566788987")
# Setsuiri.create(year:2004,setsuiri_str:"645455777877")
# Setsuiri.create(year:2005,setsuiri_str:"545555777877")
# Setsuiri.create(year:2006,setsuiri_str:"546566788877")
# Setsuiri.create(year:2007,setsuiri_str:"646566788987")
# Setsuiri.create(year:2008,setsuiri_str:"645455777877")
# Setsuiri.create(year:2009,setsuiri_str:"545555777877")
# Setsuiri.create(year:2010,setsuiri_str:"546556778877")
# Setsuiri.create(year:2011,setsuiri_str:"646566788987")
# Setsuiri.create(year:2012,setsuiri_str:"645455777877")
# Setsuiri.create(year:2013,setsuiri_str:"545555777877")
# Setsuiri.create(year:2014,setsuiri_str:"546556778877")
# Setsuiri.create(year:2015,setsuiri_str:"646566788887")
# Setsuiri.create(year:2016,setsuiri_str:"645455777877")
# Setsuiri.create(year:2017,setsuiri_str:"545455777877")
# Setsuiri.create(year:2018,setsuiri_str:"546556778877")
# Setsuiri.create(year:2019,setsuiri_str:"646566788887")
# Setsuiri.create(year:2020,setsuiri_str:"645455777877")
# Setsuiri.create(year:2021,setsuiri_str:"535455777877")
# Setsuiri.create(year:2022,setsuiri_str:"545556778877")
# Setsuiri.create(year:2023,setsuiri_str:"646566788887")
# Setsuiri.create(year:2024,setsuiri_str:"645455677877")
# Setsuiri.create(year:2025,setsuiri_str:"535455777877")
# Setsuiri.create(year:2026,setsuiri_str:"545556777877")
# Setsuiri.create(year:2027,setsuiri_str:"546566788887")
# Setsuiri.create(year:2028,setsuiri_str:"645455677876")
# Setsuiri.create(year:2029,setsuiri_str:"535455777877")
# Setsuiri.create(year:2030,setsuiri_str:"545555777877")
# Setsuiri.create(year:2031,setsuiri_str:"546566788887")
# Setsuiri.create(year:2032,setsuiri_str:"645455677876")
# Setsuiri.create(year:2033,setsuiri_str:"535455777877")
# Setsuiri.create(year:2034,setsuiri_str:"545555777877")
# Setsuiri.create(year:2035,setsuiri_str:"546566788877")
# Setsuiri.create(year:2036,setsuiri_str:"645455677876")
# Setsuiri.create(year:2037,setsuiri_str:"535455777877")
# Setsuiri.create(year:2038,setsuiri_str:"545555777877")
# Setsuiri.create(year:2039,setsuiri_str:"546566788877")
# Setsuiri.create(year:2040,setsuiri_str:"645455677876")
# Setsuiri.create(year:2041,setsuiri_str:"535455777877")
# Setsuiri.create(year:2042,setsuiri_str:"545555777877")
# Setsuiri.create(year:2043,setsuiri_str:"546556778877")
# Setsuiri.create(year:2044,setsuiri_str:"645455677876")
# Setsuiri.create(year:2045,setsuiri_str:"535455777877")
# Setsuiri.create(year:2046,setsuiri_str:"545455777877")
# Setsuiri.create(year:2047,setsuiri_str:"546556778877")
# Setsuiri.create(year:2048,setsuiri_str:"645455677776")
# Setsuiri.create(year:2049,setsuiri_str:"535455777877")
# Setsuiri.create(year:2050,setsuiri_str:"545455777877")
# Setsuiri.create(year:2051,setsuiri_str:"546556778877")
# Setsuiri.create(year:0003,setsuiri_str:"646566788887")
# Setsuiri.create(year:0004,setsuiri_str:"546556778877")


          # 調候守護神 Array
  
shugoshins1=["437","437","30","73456","749","047","047","074","479","473","41790","7435"]

shugoshins2=["3","3","30","30","035","0","03","03","306","034","08","35"]
          
shugoshins3=["956","91","97","97","91","970","97","97","95","90","19","1579"]
          
shugoshins4=["17","17","17","71","17","179","970","179","1735","1357","157","17"]
          
shugoshins5=["31","31","310","310","130","013","913","013","310","30","130","13"]
          
shugoshins6=["315","315","317","103","310","038","938","03","30","30","130","315"]
          
shugoshins7=["413","341","31945","4137","1490","9354","90","41","41","413","19","341"]
          
shugoshins8=["3915","3956","697","91","91","907","960","917","915","91","91","913"]
          
shugoshins9=["53","314","573","578","17","9708","078","7108","54","17","13","537"]
          
shugoshins10=["38","34","83","78","831","8","7890","7890","4","83","8190","7845"]

            # 0    1    2    3    4    5    6    7    8    9    10
#   d_10kan=["癸","甲","乙","丙","丁","戊","己","庚","辛","壬","癸"]

# i =1
# shugoshins1.each do |shugoshin|
#           Shugoshin.create(kan_d:1,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          
           
# i =1
# shugoshins2.each do |shugoshin|
#           Shugoshin.create(kan_d:2,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins3.each do |shugoshin|
#           Shugoshin.create(kan_d:3,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins4.each do |shugoshin|
#           Shugoshin.create(kan_d:4,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins5.each do |shugoshin|
#           Shugoshin.create(kan_d:5,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins6.each do |shugoshin|
#           Shugoshin.create(kan_d:6,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins7.each do |shugoshin|
#           Shugoshin.create(kan_d:7,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins8.each do |shugoshin|
#           Shugoshin.create(kan_d:8,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins9.each do |shugoshin|
#           Shugoshin.create(kan_d:9,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          

# i =1
# shugoshins10.each do |shugoshin|
#           Shugoshin.create(kan_d:10,shi_m:i,shugoshin:shugoshin)
#           i += 1
# end          
