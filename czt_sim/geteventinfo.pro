PRO geteventinfo,data,evindex,pos,ener

numb = reform(data[0,*])
numb = [numb,0]
index = where(numb EQ 0.)

pos = dblarr(3,index[evindex]-index[evindex-1])
ener = dblarr(index[evindex]-index[evindex-1])

FOR i=0,index[evindex]-index[evindex-1]-1 DO BEGIN
   ener[i] = data[4,index[evindex-1]+i]*1000
   FOR j=0,2 DO pos[j,i] = data[1+j,index[evindex-1]+i]
ENDFOR

END