
datadir <-  'H:/Vanguard/3_3_2016 Testing/Reports_test#2016-03-03_19-22-16'

for ( fname in list.files(path=datadir,pattern="*.csv")) {
  infile <- paste(datadir, '/', fname, sep='')
  print(infile)
  
  line7 <- read.csv(file=infile, header=F, sep=" ", nrow=1, skip=6)
  
  write.table(line7, file='H:/Vanguard/3_3_2016 Testing/Reports_test#2016-03-03_19-22-16/universe.csv', row.names=F, col.names=F, append=T, quote=F)
  ##write.table(line7, file='H:/WFC/Only Batch/Reports_Payload_WFC_batch#2016-02-29_14-43-44/Coverage/universe2.csv', row.names=F, sep=",",col.names=F, append=T, quote=F)
  
}
