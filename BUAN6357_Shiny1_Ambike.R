library(readxl)
library(dplyr)
library(tidyr)
library(shiny)


######-----Girls Data----#############################################################################



#girls_names <- read_excel("Top100_Popular_Baby_Names.xlsx",sheet = 1)
data.df <- read_excel("Top100_Popular_Baby_Names.xlsx",sheet = 1)

new_data.df <- data.frame(Year = numeric(),Rank = integer(),Name = character(),
                          No = integer(),stringsAsFactors=FALSE) 
#Year <- as.numeric(new_data.df$Year)

j = 0;

#new_data.df[1,1] <- data[4,3]
#new_data.df <- new_data.df[-c(1,53),] 

#remove(number_data.df)

#number_data.df <- data.frame(No = integer(),stringsAsFactors=FALSE)

################

#           for(j in 1:100)
#           {
#             number_data_1954 <- data.df[7:106 ,4]
#           }
# #2
# for(j in 1:100)
# {
#   number_data_1955 <- data.df[7:106 ,7]
# }
# 
# #3
# for(j in 1:100)
# {
#   number_data_1956.df <- data.df[7:106 ,10]
# }
# 
# #4
# for(j in 1:100)
# {
#   number_data_1957.df <- data.df[7:106 ,13]
#}

#number_data2.df <- rbind(number_data_1954, number_data_1955)

        
#####################
# k =  0;
# for(z in 1:65)
# {
#   for (j in 1:100)
#       { 
#         for(x in 3:195)
#         {
#         new_data.df[j+k,4] <- data.df[7:106 ,x]
#         }
#       }
#   k <- k +100
# }
###YEar
year <- c(1954:2018)
k = 0;
for(i in 1:65)
{
  for(j in 1:100)
  {
   new_data.df[j+k,1] <- year[i]
  }
  k <- k+100;
}
##Rank
rank <- c(1:100)
k = 0;
for(i in 1:65)
{
  for (j in 1:100)
  {
    new_data.df[k+j,2] <- rank[j]
  }
  k <- k+100;
}

##Number
number_datagirls <- select(data.df,4,7,10,13,16,19,22,25,28,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73,
                          76,79,82,85,88,91,94,97,100,103,106,109,112,115,118,121,124,127,130,133,136,139,142,
                          145,148,151,154,157,160,163,166,169,172,175,178,181,184,187,190,193,196)
number_datagirls <- number_datagirls[-c(1:6),]
colnames(number_datagirls)<- c(1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018)

new_data.df[1:100,4] <- number_datagirls[,1]
new_data.df[101:200,4] <- number_datagirls[,2]
new_data.df[201:300,4] <- number_datagirls[,3]
new_data.df[301:400,4] <- number_datagirls[,4]
new_data.df[401:500,4] <- number_datagirls[,5]
new_data.df[501:600,4] <- number_datagirls[,6]
new_data.df[601:700,4] <- number_datagirls[,7]
new_data.df[701:800,4] <- number_datagirls[,8]
new_data.df[801:900,4] <- number_datagirls[,9]
new_data.df[901:1000,4] <- number_datagirls[,10]
new_data.df[1001:1100,4] <- number_datagirls[,11]
new_data.df[1101:1200,3] <- number_datagirls[,12]
new_data.df[1201:1300,4] <- number_datagirls[,13]
new_data.df[1301:1400,4] <- number_datagirls[,14]
new_data.df[1401:1500,4] <- number_datagirls[,15]
new_data.df[1501:1600,4] <- number_datagirls[,16]
new_data.df[1601:1700,4] <- number_datagirls[,17]
new_data.df[1701:1800,4] <- number_datagirls[,18]
new_data.df[1801:1900,4] <- number_datagirls[,19]
new_data.df[1901:2000,4] <- number_datagirls[,20]
new_data.df[2001:2100,4] <- number_datagirls[,21]
new_data.df[2101:2200,4] <- number_datagirls[,22]
new_data.df[2201:2300,4] <- number_datagirls[,23]
new_data.df[2301:2400,4] <- number_datagirls[,24]
new_data.df[2401:2500,4] <- number_datagirls[,25]
new_data.df[2501:2600,4] <- number_datagirls[,26]
new_data.df[2601:2700,4] <- number_datagirls[,27]
new_data.df[2701:2800,4] <- number_datagirls[,28]
new_data.df[2801:2900,4] <- number_datagirls[,29]
new_data.df[2901:3000,4] <- number_datagirls[,30]
new_data.df[3001:3100,4] <- number_datagirls[,31]
new_data.df[3101:3200,4] <- number_datagirls[,32]
new_data.df[3201:3300,4] <- number_datagirls[,33]
new_data.df[3301:3400,4] <- number_datagirls[,34]
new_data.df[3401:3500,4] <- number_datagirls[,35]
new_data.df[3501:3600,4] <- number_datagirls[,36]
new_data.df[3601:3700,4] <- number_datagirls[,37]
new_data.df[3701:3800,4] <- number_datagirls[,38]
new_data.df[3801:3900,4] <- number_datagirls[,39]
new_data.df[3901:4000,4] <- number_datagirls[,40]
new_data.df[4001:4100,4] <- number_datagirls[,41]
new_data.df[4101:4200,4] <- number_datagirls[,42]
new_data.df[4201:4300,4] <- number_datagirls[,43]
new_data.df[4301:4400,4] <- number_datagirls[,44]
new_data.df[4401:4500,4] <- number_datagirls[,45]
new_data.df[4501:4600,4] <- number_datagirls[,46]
new_data.df[4601:4700,4] <- number_datagirls[,47]
new_data.df[4701:4800,4] <- number_datagirls[,48]
new_data.df[4801:4900,4] <- number_datagirls[,49]
new_data.df[4901:5000,4] <- number_datagirls[,50]
new_data.df[5001:5100,4] <- number_datagirls[,51]
new_data.df[5101:5200,4] <- number_datagirls[,52]
new_data.df[5201:5300,4] <- number_datagirls[,53]
new_data.df[5301:5400,4] <- number_datagirls[,54]
new_data.df[5401:5500,4] <- number_datagirls[,55]
new_data.df[5501:5600,4] <- number_datagirls[,56]
new_data.df[5601:5700,4] <- number_datagirls[,57]
new_data.df[5701:5800,4] <- number_datagirls[,58]
new_data.df[5801:5900,4] <- number_datagirls[,59]
new_data.df[5901:6000,4] <- number_datagirls[,60]
new_data.df[6001:6100,4] <- number_datagirls[,61]
new_data.df[6101:6200,4] <- number_datagirls[,62]
new_data.df[6201:6300,4] <- number_datagirls[,63]
new_data.df[6301:6400,4] <- number_datagirls[,64]
new_data.df[6401:6500,4] <- number_datagirls[,65]


###Name

name_data <- select(data.df,3,6,9,12,15,18,21,24,27,30,33,36
                    ,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,102,105,108,111,114,117,120,123,126,129,132,135,138,141,144,147,150,153,156,159,162,165,168,171,174,177,180,183,186
                    ,189,192,195)


name_data <- name_data[-c(1:6),]
colnames(name_data)<- c(1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018)
name_data

#Name
new_data.df[1:100,3] <- name_data[,1] 
new_data.df[101:200,3] <- name_data[,2]
new_data.df[201:300,3] <- name_data[,3]
new_data.df[301:400,3] <- name_data[,4]
new_data.df[401:500,3] <- name_data[,5]
new_data.df[501:600,3] <- name_data[,6]
new_data.df[601:700,3] <- name_data[,7]
new_data.df[701:800,3] <- name_data[,8]
new_data.df[801:900,3] <- name_data[,9]
new_data.df[901:1000,3] <- name_data[,10]
new_data.df[1001:1100,3] <- name_data[,11]
new_data.df[1101:1200,3] <- name_data[,12]
new_data.df[1201:1300,3] <- name_data[,13]
new_data.df[1301:1400,3] <- name_data[,14]
new_data.df[1401:1500,3] <- name_data[,15]
new_data.df[1501:1600,3] <- name_data[,16]
new_data.df[1601:1700,3] <- name_data[,17]
new_data.df[1701:1800,3] <- name_data[,18]
new_data.df[1801:1900,3] <- name_data[,19]
new_data.df[1901:2000,3] <- name_data[,20]
new_data.df[2001:2100,3] <- name_data[,21]
new_data.df[2101:2200,3] <- name_data[,22]
new_data.df[2201:2300,3] <- name_data[,23]
new_data.df[2301:2400,3] <- name_data[,24]
new_data.df[2401:2500,3] <- name_data[,25]
new_data.df[2501:2600,3] <- name_data[,26]
new_data.df[2601:2700,3] <- name_data[,27]
new_data.df[2701:2800,3] <- name_data[,28]
new_data.df[2801:2900,3] <- name_data[,29]
new_data.df[2901:3000,3] <- name_data[,30]
new_data.df[3001:3100,3] <- name_data[,31]
new_data.df[3101:3200,3] <- name_data[,32]
new_data.df[3201:3300,3] <- name_data[,33]
new_data.df[3301:3400,3] <- name_data[,34]
new_data.df[3401:3500,3] <- name_data[,35]
new_data.df[3501:3600,3] <- name_data[,36]
new_data.df[3601:3700,3] <- name_data[,37]
new_data.df[3701:3800,3] <- name_data[,38]
new_data.df[3801:3900,3] <- name_data[,39]
new_data.df[3901:4000,3] <- name_data[,40]
new_data.df[4001:4100,3] <- name_data[,41]
new_data.df[4101:4200,3] <- name_data[,42]
new_data.df[4201:4300,3] <- name_data[,43]
new_data.df[4301:4400,3] <- name_data[,44]
new_data.df[4401:4500,3] <- name_data[,45]
new_data.df[4501:4600,3] <- name_data[,46]
new_data.df[4601:4700,3] <- name_data[,47]
new_data.df[4701:4800,3] <- name_data[,48]
new_data.df[4801:4900,3] <- name_data[,49]
new_data.df[4901:5000,3] <- name_data[,50]
new_data.df[5001:5100,3] <- name_data[,51]
new_data.df[5101:5200,3] <- name_data[,52]
new_data.df[5201:5300,3] <- name_data[,53]
new_data.df[5301:5400,3] <- name_data[,54]
new_data.df[5401:5500,3] <- name_data[,55]
new_data.df[5501:5600,3] <- name_data[,56]
new_data.df[5601:5700,3] <- name_data[,57]
new_data.df[5701:5800,3] <- name_data[,58]
new_data.df[5801:5900,3] <- name_data[,59]
new_data.df[5901:6000,3] <- name_data[,60]
new_data.df[6001:6100,3] <- name_data[,61]
new_data.df[6101:6200,3] <- name_data[,62]
new_data.df[6201:6300,3] <- name_data[,63]
new_data.df[6301:6400,3] <- name_data[,64]
new_data.df[6401:6500,3] <- name_data[,65]

########-----Boys Data----################################################################################





databoys.df <- read_excel("Top100_Popular_Baby_Names.xlsx",sheet = 2)

new_databoys.df <- data.frame(Year = numeric(),Rank = integer(),Name = character(),
                          No = integer(),stringsAsFactors=FALSE) 
Year <- as.numeric(new_data.df$Year)

j = 0;

#new_data.df[1,1] <- data[4,3]
#new_data.df <- new_data.df[-c(1,53),] 

#remove(number_data.df)

#number_data.df <- data.frame(No = integer(),stringsAsFactors=FALSE)

################

#           for(j in 1:100)
#           {
#             number_data_1954 <- data.df[7:106 ,4]
#           }
# #2
# for(j in 1:100)
# {
#   number_data_1955 <- data.df[7:106 ,7]
# }
# 
# #3
# for(j in 1:100)
# {
#   number_data_1956.df <- data.df[7:106 ,10]
# }
# 
# #4
# for(j in 1:100)
# {
#   number_data_1957.df <- data.df[7:106 ,13]
#}

#number_data2.df <- rbind(number_data_1954, number_data_1955)


#####################
# k =  0;
# for(z in 1:65)
# {
#   for (j in 1:100)
#       { 
#         for(x in 3:195)
#         {
#         new_data.df[j+k,4] <- data.df[7:106 ,x]
#         }
#       }
#   k <- k +100
# }
###YEar
year <- c(1954:2018)
k = 0;
for(i in 1:65)
{
  for(j in 1:100)
  {
    new_databoys.df[j+k,1] <- year[i]
  }
  k <- k+100;
}
##Rank
rank <- c(1:100)
k = 0;
for(i in 1:65)
{
  for (j in 1:100)
  {
    new_databoys.df[k+j,2] <- rank[j]
  }
  k <- k+100;
}

##Number
number_databoys <- select(databoys.df,4,7,10,13,16,19,22,25,28,31,34,37,40,43,46,49,52,55,58,61,64,67,70,73,
                          76,79,82,85,88,91,94,97,100,103,106,109,112,115,118,121,124,127,130,133,136,139,142,
                          145,148,151,154,157,160,163,166,169,172,175,178,181,184,187,190,193,196)
number_databoys <- number_databoys[-c(1:6),]
colnames(number_databoys)<- c(1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018)

new_databoys.df[1:100,4] <- number_databoys[,1]
new_databoys.df[101:200,4] <- number_databoys[,2]
new_databoys.df[201:300,4] <- number_databoys[,3]
new_databoys.df[301:400,4] <- number_databoys[,4]
new_databoys.df[401:500,4] <- number_databoys[,5]
new_databoys.df[501:600,4] <- number_databoys[,6]
new_databoys.df[601:700,4] <- number_databoys[,7]
new_databoys.df[701:800,4] <- number_databoys[,8]
new_databoys.df[801:900,4] <- number_databoys[,9]
new_databoys.df[901:1000,4] <- number_databoys[,10]
new_databoys.df[1001:1100,4] <- number_databoys[,11]
new_databoys.df[1101:1200,3] <- number_databoys[,12]
new_databoys.df[1201:1300,4] <- number_databoys[,13]
new_databoys.df[1301:1400,4] <- number_databoys[,14]
new_databoys.df[1401:1500,4] <- number_databoys[,15]
new_databoys.df[1501:1600,4] <- number_databoys[,16]
new_databoys.df[1601:1700,4] <- number_databoys[,17]
new_databoys.df[1701:1800,4] <- number_databoys[,18]
new_databoys.df[1801:1900,4] <- number_databoys[,19]
new_databoys.df[1901:2000,4] <- number_databoys[,20]
new_databoys.df[2001:2100,4] <- number_databoys[,21]
new_databoys.df[2101:2200,4] <- number_databoys[,22]
new_databoys.df[2201:2300,4] <- number_databoys[,23]
new_databoys.df[2301:2400,4] <- number_databoys[,24]
new_databoys.df[2401:2500,4] <- number_databoys[,25]
new_databoys.df[2501:2600,4] <- number_databoys[,26]
new_databoys.df[2601:2700,4] <- number_databoys[,27]
new_databoys.df[2701:2800,4] <- number_databoys[,28]
new_databoys.df[2801:2900,4] <- number_databoys[,29]
new_databoys.df[2901:3000,4] <- number_databoys[,30]
new_databoys.df[3001:3100,4] <- number_databoys[,31]
new_databoys.df[3101:3200,4] <- number_databoys[,32]
new_databoys.df[3201:3300,4] <- number_databoys[,33]
new_databoys.df[3301:3400,4] <- number_databoys[,34]
new_databoys.df[3401:3500,4] <- number_databoys[,35]
new_databoys.df[3501:3600,4] <- number_databoys[,36]
new_databoys.df[3601:3700,4] <- number_databoys[,37]
new_databoys.df[3701:3800,4] <- number_databoys[,38]
new_databoys.df[3801:3900,4] <- number_databoys[,39]
new_databoys.df[3901:4000,4] <- number_databoys[,40]
new_databoys.df[4001:4100,4] <- number_databoys[,41]
new_databoys.df[4101:4200,4] <- number_databoys[,42]
new_databoys.df[4201:4300,4] <- number_databoys[,43]
new_databoys.df[4301:4400,4] <- number_databoys[,44]
new_databoys.df[4401:4500,4] <- number_databoys[,45]
new_databoys.df[4501:4600,4] <- number_databoys[,46]
new_databoys.df[4601:4700,4] <- number_databoys[,47]
new_databoys.df[4701:4800,4] <- number_databoys[,48]
new_databoys.df[4801:4900,4] <- number_databoys[,49]
new_databoys.df[4901:5000,4] <- number_databoys[,50]
new_databoys.df[5001:5100,4] <- number_databoys[,51]
new_databoys.df[5101:5200,4] <- number_databoys[,52]
new_databoys.df[5201:5300,4] <- number_databoys[,53]
new_databoys.df[5301:5400,4] <- number_databoys[,54]
new_databoys.df[5401:5500,4] <- number_databoys[,55]
new_databoys.df[5501:5600,4] <- number_databoys[,56]
new_databoys.df[5601:5700,4] <- number_databoys[,57]
new_databoys.df[5701:5800,4] <- number_databoys[,58]
new_databoys.df[5801:5900,4] <- number_databoys[,59]
new_databoys.df[5901:6000,4] <- number_databoys[,60]
new_databoys.df[6001:6100,4] <- number_databoys[,61]
new_databoys.df[6101:6200,4] <- number_databoys[,62]
new_databoys.df[6201:6300,4] <- number_databoys[,63]
new_databoys.df[6301:6400,4] <- number_databoys[,64]
new_databoys.df[6401:6500,4] <- number_databoys[,65]

###Name

name_databoys <- select(databoys.df,3,6,9,12,15,18,21,24,27,30,33,36
                    ,39,42,45,48,51,54,57,60,63,66,69,72,75,78,81,84,87,90,93,96,99,102,105,108,111,114,117,120,123,126,129,132,135,138,141,144,147,150,153,156,159,162,165,168,171,174,177,180,183,186
                    ,189,192,195)


name_databoys <- name_databoys[-c(1:6),]
colnames(name_databoys)<- c(1954,1955,1956,1957,1958,1959,1960,1961,1962,1963,1964,1965,1966,1967,1968,1969,1970,1971,1972,1973,1974,1975,1976,1977,1978,1979,1980,1981,1982,1983,1984,1985,1986,1987,1988,1989,1990,1991,1992,1993,1994,1995,1996,1997,1998,1999,2000,2001,2002,2003,2004,2005,2006,2007,2008,2009,2010,2011,2012,2013,2014,2015,2016,2017,2018)


#Name
new_databoys.df[1:100,3] <- name_databoys[,1] 
new_databoys.df[101:200,3] <- name_databoys[,2]
new_databoys.df[201:300,3] <- name_databoys[,3]
new_databoys.df[301:400,3] <- name_databoys[,4]
new_databoys.df[401:500,3] <- name_databoys[,5]
new_databoys.df[501:600,3] <- name_databoys[,6]
new_databoys.df[601:700,3] <- name_databoys[,7]
new_databoys.df[701:800,3] <- name_databoys[,8]
new_databoys.df[801:900,3] <- name_databoys[,9]
new_databoys.df[901:1000,3] <- name_databoys[,10]
new_databoys.df[1001:1100,3] <- name_databoys[,11]
new_databoys.df[1101:1200,3] <- name_databoys[,12]
new_databoys.df[1201:1300,3] <- name_databoys[,13]
new_databoys.df[1301:1400,3] <- name_databoys[,14]
new_databoys.df[1401:1500,3] <- name_databoys[,15]
new_databoys.df[1501:1600,3] <- name_databoys[,16]
new_databoys.df[1601:1700,3] <- name_databoys[,17]
new_databoys.df[1701:1800,3] <- name_databoys[,18]
new_databoys.df[1801:1900,3] <- name_databoys[,19]
new_databoys.df[1901:2000,3] <- name_databoys[,20]
new_databoys.df[2001:2100,3] <- name_databoys[,21]
new_databoys.df[2101:2200,3] <- name_databoys[,22]
new_databoys.df[2201:2300,3] <- name_databoys[,23]
new_databoys.df[2301:2400,3] <- name_databoys[,24]
new_databoys.df[2401:2500,3] <- name_databoys[,25]
new_databoys.df[2501:2600,3] <- name_databoys[,26]
new_databoys.df[2601:2700,3] <- name_databoys[,27]
new_databoys.df[2701:2800,3] <- name_databoys[,28]
new_databoys.df[2801:2900,3] <- name_databoys[,29]
new_databoys.df[2901:3000,3] <- name_databoys[,30]
new_databoys.df[3001:3100,3] <- name_databoys[,31]
new_databoys.df[3101:3200,3] <- name_databoys[,32]
new_databoys.df[3201:3300,3] <- name_databoys[,33]
new_databoys.df[3301:3400,3] <- name_databoys[,34]
new_databoys.df[3401:3500,3] <- name_databoys[,35]
new_databoys.df[3501:3600,3] <- name_databoys[,36]
new_databoys.df[3601:3700,3] <- name_databoys[,37]
new_databoys.df[3701:3800,3] <- name_databoys[,38]
new_databoys.df[3801:3900,3] <- name_databoys[,39]
new_databoys.df[3901:4000,3] <- name_databoys[,40]
new_databoys.df[4001:4100,3] <- name_databoys[,41]
new_databoys.df[4101:4200,3] <- name_databoys[,42]
new_databoys.df[4201:4300,3] <- name_databoys[,43]
new_databoys.df[4301:4400,3] <- name_databoys[,44]
new_databoys.df[4401:4500,3] <- name_databoys[,45]
new_databoys.df[4501:4600,3] <- name_databoys[,46]
new_databoys.df[4601:4700,3] <- name_databoys[,47]
new_databoys.df[4701:4800,3] <- name_databoys[,48]
new_databoys.df[4801:4900,3] <- name_databoys[,49]
new_databoys.df[4901:5000,3] <- name_databoys[,50]
new_databoys.df[5001:5100,3] <- name_databoys[,51]
new_databoys.df[5101:5200,3] <- name_databoys[,52]
new_databoys.df[5201:5300,3] <- name_databoys[,53]
new_databoys.df[5301:5400,3] <- name_databoys[,54]
new_databoys.df[5401:5500,3] <- name_databoys[,55]
new_databoys.df[5501:5600,3] <- name_databoys[,56]
new_databoys.df[5601:5700,3] <- name_databoys[,57]
new_databoys.df[5701:5800,3] <- name_databoys[,58]
new_databoys.df[5801:5900,3] <- name_databoys[,59]
new_databoys.df[5901:6000,3] <- name_databoys[,60]
new_databoys.df[6001:6100,3] <- name_databoys[,61]
new_databoys.df[6101:6200,3] <- name_databoys[,62]
new_databoys.df[6201:6300,3] <- name_databoys[,63]
new_databoys.df[6301:6400,3] <- name_databoys[,64]
new_databoys.df[6401:6500,3] <- name_databoys[,65]


str(new_data.df)


#################################--------Shiny_--------------------------#################

library(shiny)

ui<- shinyUI(fluidPage(
  headerPanel( title = "Top100_Popular_BabyNames"),
  sidebarLayout(
    sidebarPanel(selectInput("girls","Select the Year for girls:",
                             c(new_data.df$Year)),

                 selectInput("boys","Select the Year for boys:",

                             c(new_databoys.df$Year)),

                 selectInput("ngear3","Select the Name for girl:",
                             c(new_data.df$Name)),

                 selectInput("ngear4","Select the Name for boy:",
                             c(new_databoys.df$Name))
    ),
    mainPanel(
      tabsetPanel(type = "tab",
                  tabPanel("Girls Data",tableOutput("new_data.df")),
                  tabPanel("Boys Data",tableOutput("new_databoys.df")),
                  tabPanel("Girls Plot",plotOutput("plot")),
                  tabPanel("Boys Plot",plotOutput("plot2"))
      )
    )
  )
)
)
girltopten.df <- new_data.df %>% group_by(Year) %>% top_n(-10,Rank) 
boytopten.df <- new_databoys.df %>% group_by(Year) %>% top_n(-10,Rank) 


server <- function(input,output){
  
  output$new_data.df <- renderTable({
  nameFilterGirls <- subset(girltopten.df,girltopten.df$Year == input$girls)
  })
  
  output$new_databoys.df <- renderTable({
    nameFilterBoys <- subset(boytopten.df,boytopten.df$Year == input$boys)
    
  })
  
    g <- reactive({
      subset(new_data.df, Name==input$ngear3 , select=c("Year","No"))
    })
    
    output$plot <- renderPlot({ 
      plot(x=(as.numeric(g()$Year)), y=(as.numeric(g()$No)))
    })

    b <- reactive({
       subset(new_databoys.df, Name==input$ngear4 , select=c("Year","No"))
     })
     
     output$plot2 <- renderPlot({ 
       plot(x=(as.numeric(b()$Year)), y=(as.numeric(b()$No)))
    })
  
}

shinyApp(ui = ui, server = server)
























